# Innovate UK Innovation Loan — Financial Model
# Works with: R 4.x
# Run: source("innovation_loan_model.R")

library(tibble)
library(dplyr)
library(tidyr)
library(purrr)

# ─────────────────────────────────────────────
# CONFIGURATION
# ─────────────────────────────────────────────

config <- list(
  loan_amount      = 500000,   # £
  project_years    = 2,        # drawdown period (years)
  extension_years  = 0,        # optional extension
  repayment_years = 5,        # repayment period (years)
  rate_drawdown   = 0.037,    # 3.7% during project
  rate_repayment  = 0.074,     # 7.4% during repayment
  quarters_project = project_years * 4,
  quarters_ext     = extension_years * 4,
  quarters_repay   = repayment_years * 4
)

# ─────────────────────────────────────────────
# 1.  DRAW-DOWN SCHEDULE (interest only during project)
# ─────────────────────────────────────────────

drawdown_schedule <- tibble(
  quarter = 1:config$quarters_project,
  drawn   = ifelse(quarter == 1, config$loan_amount, 0),
  rate_q  = config$rate_drawdown / 4,
  interest_payable_q = drawn * rate_q,
  interest_deferred_q = drawn * rate_q,
  cumulative_deferred  = cumsum(interest_deferred_q)
) %>%
  mutate(
    cumulative_drawn = cumsum(drawn)
  )

cat("\n=== DRAW-DOWN SCHEDULE ===\n")
print(drawdown_schedule, n = Inf, width = Inf)

# ─────────────────────────────────────────────
# 2.  REPAYMENT CALCULATION
#    Total to repay = principal + all deferred interest
#    Repaid as quarterly annuity at 7.4%
# ─────────────────────────────────────────────

principal      <- config$loan_amount
deferred_total  <- tail(drawdown_schedule$cumulative_deferred, 1)
total_repayable <- principal + deferred_total

cat("\n=== LOAN SUMMARY ===\n")
cat("Principal:         £", format(principal, big.mark = ","), "\n")
cat("Deferred interest:  £", format(deferred_total, big.mark = ","), "\n")
cat("Total to repay:     £", format(total_repayable, big.mark = ","), "\n")

# Quarterly payment on annuity: PMT = PV * r / (1 - (1+r)^-n)
r_repay    <- config$rate_repayment / 4
n_repay    <- config$quarters_repay
q_payment  <- total_repayable * r_repay / (1 - (1 + r_repay)^(-n_repay))

cat("Quarterly payment:  £", format(round(q_payment, 2), big.mark = ","), "\n")
cat("Total repayments:   £", format(round(q_payment * n_repay, 2), big.mark = ","), "\n")
cat("Total interest:     £", format(round(q_payment * n_repay - principal, 2), big.mark = ","), "\n")

# ─────────────────────────────────────────────
# 3.  AMORTISATION TABLE (repayment period)
# ─────────────────────────────────────────────

amort <- tibble(
  quarter = 0:config$quarters_repay
) %>%
  add_column(principal_balloon = NA_real_) %>%
  slice(1) %>%
  bind_rows(
    tibble(quarter = 1:config$quarters_repay) %>%
      mutate(
        opening_balance = ifelse(quarter == 1, total_repayable, NA_real_),
        interest_q      = opening_balance * r_repay,
        capital_q      = q_payment - interest_q,
        closing_balance = opening_balance - capital_q
      )
  )

# Fill forward closing balance
for (i in 2:nrow(amort)) {
  amort$opening_balance[i]  <- amort$closing_balance[i - 1]
  amort$interest_q[i]       <- amort$opening_balance[i] * r_repay
  amort$capital_q[i]        <- q_payment - amort$interest_q[i]
  amort$closing_balance[i]  <- amort$opening_balance[i] - amort$capital_q[i]
}

cat("\n=== AMORTISATION (first 4 + last 2 quarters) ===\n")
print(head(amort, 4))
cat("...\n")
print(tail(amort, 2))

# ─────────────────────────────────────────────
# 4.  FULL CASHFLOW TIMELINE
# ─────────────────────────────────────────────

total_quarters <- config$quarters_project + config$quarters_repay

full_cf <- tibble(
  quarter = 1:total_quarters,
  phase   = c(
    rep("Project", config$quarters_project),
    rep("Repayment", config$quarters_repay)
  ),
  drawdown      = c(drawdown_schedule$drawn, rep(0, config$quarters_repay)),
  interest_out  = c(
    drawdown_schedule$interest_payable_q,
    rep(NA_real_, config$quarters_repay)
  ),
  principal_out = c(
    rep(0, config$quarters_project),
    amort$capital_q[amort$quarter > 0]
  ),
  net_cashflow  = c(
    drawdown_schedule$drawn - drawdown_schedule$interest_payable_q,
    -(q_payment)   # repayment phase: negative outflow
  )
) %>%
  mutate(cumulative_cashflow = cumsum(net_cashflow))

cat("\n=== FULL CASHFLOW SUMMARY ===\n")
print(full_cf, n = Inf, width = Inf)

# ─────────────────────────────────────────────
# 5.  COVENANT CHECK (DSCR simulation)
#    DSCR = Net Operating Profit / Debt Service
# ─────────────────────────────────────────────

# Simple DSCR model: assumes revenue ramps up during project,
# reaching £X in year 1 of repayment
# Adjust `projected_revenue` and `operating_margin` as needed

projected_revenue <- c(100000, 250000, 500000, 750000, 1000000)  # £/year
operating_margin   <- 0.20   # 20% EBITDA margin assumption

dscr_by_year <- tibble(
  year        = 1:5,
  revenue     = projected_revenue,
  ebitda      = revenue * operating_margin,
  debt_service = q_payment * 4,   # annual debt service
  dscr        = ebitda / debt_service,
  covenant_ok = dscr >= 1.2
)

cat("\n=== DSCR COVENANT TEST (assumes 20% EBITDA margin) ===\n")
print(dscr_by_year, n = Inf, width = Inf)

# ─────────────────────────────────────────────
# 6.  EXPORT
# ─────────────────────────────────────────────

write.csv(drawdown_schedule, "drawdown_schedule.csv", row.names = FALSE)
write.csv(amort,           "amortisation.csv",       row.names = FALSE)
write.csv(full_cf,         "full_cashflow.csv",      row.names = FALSE)
write.csv(dscr_by_year,    "dscr_covenant.csv",      row.names = FALSE)

cat("\n✓ 4 CSVs written: drawdown_schedule.csv, amortisation.csv, full_cashflow.csv, dscr_covenant.csv\n")
