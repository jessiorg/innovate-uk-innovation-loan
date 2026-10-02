# Innovate UK Innovation Loan — Financial Model
# Base R only — no external packages required
# Run: Rscript innovation_loan_model.R

# ── CONFIG ────────────────────────────────────────────────────────────────────

CFG <- list(
  loan_amount     = 500000,
  project_years   = 2,
  extension_years = 0,
  repayment_years = 5,
  rate_drawdown   = 0.037,
  rate_repayment  = 0.074
)

n_proj  <- CFG$project_years   * 4
n_ext   <- CFG$extension_years * 4
n_repay <- CFG$repayment_years * 4
r_q_d   <- CFG$rate_drawdown  / 4
r_q_r   <- CFG$rate_repayment / 4

# ── 1. DRAW-DOWN SCHEDULE ─────────────────────────────────────────────────────

quarter     <- 1:n_proj
drawn      <- ifelse(quarter == 1, CFG$loan_amount, 0)
int_pay    <- drawn * r_q_d
int_def    <- drawn * r_q_d
cum_drawn  <- cumsum(drawn)
cum_def    <- cumsum(int_def)

drawdown <- data.frame(
  quarter             = quarter,
  drawn               = drawn,
  interest_payable   = int_pay,
  interest_deferred  = int_def,
  cumulative_drawn   = cum_drawn,
  cumulative_deferred = cum_def
)

cat("\n=== DRAW-DOWN SCHEDULE ===\n")
print(drawdown)

# ── 2. LOAN SUMMARY ──────────────────────────────────────────────────────────

principal      <- CFG$loan_amount
def_total      <- tail(cum_def, 1)
total_repay    <- principal + def_total
q_payment      <- total_repay * r_q_r / (1 - (1 + r_q_r)^(-n_repay))
total_interest <- q_payment * n_repay - principal

cat("\n=== LOAN SUMMARY ===\n")
cat(sprintf("  Principal:          £%s\n",   format(principal,      big.mark = ",")))
cat(sprintf("  Deferred interest:  £%s\n",   format(def_total,      big.mark = ",")))
cat(sprintf("  Total to repay:     £%s\n",   format(total_repay,    big.mark = ",")))
cat(sprintf("  Quarterly payment:  £%s\n",   format(q_payment,     big.mark = ",")))
cat(sprintf("  Total interest:     £%s\n",   format(total_interest, big.mark = ",")))

# ── 3. AMORTISATION TABLE ────────────────────────────────────────────────────

opening  <- numeric(n_repay)
interest <- numeric(n_repay)
capital  <- numeric(n_repay)
closing  <- numeric(n_repay)

opening[1] <- total_repay
for (i in 1:n_repay) {
  interest[i] <- opening[i] * r_q_r
  capital[i]  <- q_payment - interest[i]
  closing[i]  <- opening[i] - capital[i]
  if (i < n_repay) opening[i + 1] <- closing[i]
}

amort <- data.frame(
  quarter          = 1:n_repay,
  opening_balance  = opening,
  interest         = interest,
  capital          = capital,
  closing_balance  = closing
)

cat("\n=== AMORTISATION (first 4 + last 2 quarters) ===\n")
print(rbind(head(amort, 4), tail(amort, 2)))

# ── 4. FULL CASHFLOW TIMELINE ────────────────────────────────────────────────

n_total <- n_proj + n_repay
phase   <- c(rep("Project", n_proj), rep("Repayment", n_repay))

drawdown_out  <- c(drawdown$drawn, rep(0, n_repay))
interest_out  <- c(drawdown$interest_payable, rep(0, n_repay))
capital_out   <- c(rep(0, n_proj), capital)
net_cf        <- drawdown_out - interest_out - capital_out
cum_cf        <- cumsum(net_cf)

full_cf <- data.frame(
  quarter       = 1:n_total,
  phase         = phase,
  drawdown      = drawdown_out,
  interest_out  = interest_out,
  capital_out   = capital_out,
  net_cashflow  = net_cf,
  cum_cashflow  = cum_cf
)

cat("\n=== FULL CASHFLOW TIMELINE ===\n")
print(full_cf)

# ── 5. DSCR COVENANT TEST ────────────────────────────────────────────────────

revenue   <- c(100000, 250000, 500000, 750000, 1000000)
margin    <- 0.20
ann_debt  <- q_payment * 4

dscr <- data.frame(
  year        = 1:5,
  revenue     = revenue,
  ebitda      = revenue * margin,
  debt_service = ann_debt,
  dscr        = round((revenue * margin) / ann_debt, 2),
  pass        = ifelse((revenue * margin) / ann_debt >= 1.2, "PASS", "FAIL")
)

cat("\n=== DSCR COVENANT TEST (20% EBITDA margin) ===\n")
cat("Minimum: 1.2x DSCR | 1.1x liquidity ratio\n\n")
print(dscr)

# ── 6. EXPORT CSVs ───────────────────────────────────────────────────────────

write.csv(drawdown, "drawdown_schedule.csv", row.names = FALSE)
write.csv(amort,    "amortisation.csv",       row.names = FALSE)
write.csv(full_cf,  "full_cashflow.csv",      row.names = FALSE)
write.csv(dscr,     "dscr_covenant.csv",      row.names = FALSE)

cat("\n✓ 4 CSVs written: drawdown_schedule.csv amortisation.csv full_cashflow.csv dscr_covenant.csv\n")
