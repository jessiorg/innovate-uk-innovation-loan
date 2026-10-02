"""
Innovate UK Innovation Loan — Financial Model
Works with: Python 3.10+
Run: python innovation_loan_model.py

Dependencies: pandas, rich (pip install pandas rich)
"""

from __future__ import annotations
import pandas as pd
from rich import print as rprint
from rich.console import Console
from rich.table import Table

console = Console()

# ─────────────────────────────────────────────
# CONFIGURATION  ← edit these values
# ─────────────────────────────────────────────

CFG = {
    "loan_amount":      500_000,   # £
    "project_years":    2,          # drawdown period
    "extension_years": 0,           # optional
    "repayment_years": 5,           # repayment period
    "rate_drawdown":   0.037,       # 3.7% during project
    "rate_repayment":  0.074,       # 7.4% during repayment
}

# ─────────────────────────────────────────────
# 1. DRAW-DOWN SCHEDULE
# ─────────────────────────────────────────────

n_proj = CFG["project_years"] * 4
r_q    = CFG["rate_drawdown"] / 4

drawdown_rows = []
cumulative_drawn = 0.0
cumulative_deferred = 0.0

for q in range(1, n_proj + 1):
    drawn               = CFG["loan_amount"] if q == 1 else 0.0
    cumulative_drawn   += drawn
    interest_payable    = drawn * r_q
    interest_deferred   = drawn * r_q
    cumulative_deferred += interest_deferred
    drawdown_rows.append({
        "quarter":            q,
        "drawn":              drawn,
        "interest_payable":  interest_payable,
        "interest_deferred": interest_deferred,
        "cumulative_drawn":  cumulative_drawn,
        "cumulative_deferred": cumulative_deferred,
    })

df_drawdown = pd.DataFrame(drawdown_rows)

console.print("\n[bold]DRAW-DOWN SCHEDULE[/bold]")
console.print(df_drawdown.to_string(index=False))

# ─────────────────────────────────────────────
# 2. LOAN SUMMARY
# ─────────────────────────────────────────────

principal     = CFG["loan_amount"]
deferred_total = df_drawdown["cumulative_deferred"].iloc[-1]
total_to_repay = principal + deferred_total
r_repay        = CFG["rate_repayment"] / 4
n_repay        = CFG["repayment_years"] * 4

# Quarterly annuity payment
q_payment = total_to_repay * r_repay / (1 - (1 + r_repay) ** (-n_repay))
total_interest = q_payment * n_repay - principal

console.print("\n[bold]LOAN SUMMARY[/bold]")
console.print(f"  Principal:          £{principal:>12,.2f}")
console.print(f"  Deferred interest:  £{deferred_total:>12,.2f}")
console.print(f"  Total to repay:     £{total_to_repay:>12,.2f}")
console.print(f"  Quarterly payment:  £{q_payment:>12,.2f}")
console.print(f"  Total interest:     £{total_interest:>12,.2f}")

# ─────────────────────────────────────────────
# 3. AMORTISATION TABLE
# ─────────────────────────────────────────────

amort_rows = []
bal = total_to_repay
for q in range(1, n_repay + 1):
    interest_q  = bal * r_repay
    capital_q   = q_payment - interest_q
    bal        -= capital_q
    amort_rows.append({
        "quarter":          q,
        "opening_balance":  bal + capital_q,
        "interest":        interest_q,
        "capital":         capital_q,
        "closing_balance": bal,
    })

df_amort = pd.DataFrame(amort_rows)

console.print("\n[bold]AMORTISATION (first 4 + last 2 quarters)[/bold]")
shown = pd.concat([df_amort.head(4), df_amort.tail(2)])
console.print(shown.to_string(index=False))

# ─────────────────────────────────────────────
# 4. FULL CASHFLOW TIMELINE
# ─────────────────────────────────────────────

total_q = n_proj + n_repay
proj_drawn   = df_drawdown["drawn"].tolist() + [0] * n_repay
proj_interest = df_drawdown["interest_payable"].tolist() + [0.0] * n_repay
amort_cap    = [0.0] * n_proj + df_amort["capital"].tolist()
net_cf       = [proj_drawn[i] - proj_interest[i] - amort_cap[i] for i in range(total_q)]

full_cf_rows = []
cum = 0.0
for q in range(1, total_q + 1):
    phase = "Project" if q <= n_proj else "Repayment"
    cum += net_cf[q - 1]
    full_cf_rows.append({
        "quarter":      q,
        "phase":        phase,
        "drawdown":     proj_drawn[q - 1],
        "interest_out": proj_interest[q - 1],
        "capital_out":  amort_cap[q - 1],
        "net_cashflow": net_cf[q - 1],
        "cum_cashflow": cum,
    })

df_full_cf = pd.DataFrame(full_cf_rows)

console.print("\n[bold]FULL CASHFLOW TIMELINE[/bold]")
console.print(df_full_cf.to_string(index=False))

# ─────────────────────────────────────────────
# 5. DSCR COVENANT TEST
# ─────────────────────────────────────────────

# Adjust revenue_profile to match your business plan
revenue_profile = [0, 30_000_000, 60_000_000, 90_000_000, 105_000_000]  # Kanay trading Y1-Y5
operating_margin = 0.25  # Trading gross margin
annual_debt = q_payment * 4

dscr_rows = []
for yr, rev in enumerate(revenue_profile, start=1):
    ebitda  = rev * operating_margin
    dscr    = ebitda / annual_debt
    dscr_rows.append({
        "year":      yr,
        "revenue":   rev,
        "ebitda":    ebitda,
        "debt_svc":  annual_debt,
        "dscr":      round(dscr, 2),
        "pass":      "✓" if dscr >= 1.2 else "✗ FAIL",
    })

df_dscr = pd.DataFrame(dscr_rows)

console.print("\n[bold]DSCR COVENANT TEST (20% EBITDA margin)[/bold]")
console.print("(Minimum 1.2x — liquidity ratio minimum 1.1x)")
console.print(df_dscr.to_string(index=False))

# ─────────────────────────────────────────────
# 6. EXPORT CSVs
# ─────────────────────────────────────────────

df_drawdown.to_csv("drawdown_schedule.csv", index=False)
df_amort.to_csv("amortisation.csv", index=False)
df_full_cf.to_csv("full_cashflow.csv", index=False)
df_dscr.to_csv("dscr_covenant.csv", index=False)

console.print("\n✓ 4 CSVs written: drawdown_schedule.csv, amortisation.csv, full_cashflow.csv, dscr_covenant.csv")
