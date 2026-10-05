# IUK Innovation Loan — Q&A Notes

> **Context:** Ad-hoc Q&A session during EOI preparation
> **Date:** 2026-10-05
> **Topics covered:** Drawdown mechanics, pre-commercial costs, overseas procurement, debenture, exchange membership

---

## 1. Drawdown Mechanics — Can We Draw the Full Amount Upfront?

**Q: Can we draw down the full £5M from day one?**

**A:** No. The T&Cs explicitly state *"the full amount will not be drawn at the outset."* Drawdowns are quarterly in advance, based on forecast eligible project costs for each quarter, subject to MSP sign-off and covenant compliance.

However, you can **front-load** the first drawdown significantly by forecasting realistic early expenditure (GPU cluster procurement, first hires). Each quarter's drawdown = forecast spend for that quarter.

**Realistic Kanay profile:**

| Quarter | Amount | What it funds |
|---|---|---|
| Q1 (Dec 2026) | £1.8M | GPU cluster procurement + setup |
| Q2 (Mar 2027) | £0.8M | First 5 hires, energy management system |
| Q3 (Jun 2027) | £0.8M | Remaining 5 hires, spatial intelligence v1 |
| Q4–Q8 | £0.4M/quarter | Working capital, pilots, ongoing development |
| **Total** | **£5.0M** | **~8 quarters** |

---

## 2. Project Period — What Does the 5 Years Cover?

**Q: Does the 5-year project period include pre-commercial work and salaries?**

**A:** Yes. The July 2025 changes explicitly extended eligible costs to include:
- Late-stage R&D labour
- Pre-commercial salaries (market research, customer discovery, sales strategy, testing market readiness)
- Capital usage (full expensing on equipment)
- Working capital (up to 20% of loan)
- Tooling and materials for production scale-up

Salaries for BD, commercial, and pre-commercial roles are now eligible — not just pure R&D engineers.

---

## 3. Working Capital vs Capex — Can We Get Working Capital on Top of Equipment Costs?

**Q: If we build our own servers and energy infrastructure, is that separate from the working capital allowance?**

**A:** Yes. The working capital allowance (20% of the loan = £1M on a £5M loan) is **additional** to capital equipment costs. The £5M envelope is the total; working capital is a line within it, not a deduction from capex.

**Example Kanay budget:**

| Item | Amount |
|---|---|
| GPU cluster (servers, H100) | £1.8M |
| Energy management system / power infrastructure | £0.6M |
| First hires (technical, 18 months) | £1.2M |
| Pre-commercial salaries (BD, market testing) | £0.4M |
| Working capital (20%) | £1.0M |
| **Total** | **£5.0M** |

---

## 4. Overseas Procurement — Can We Buy Parts Anywhere in the World?

**Q: Can we use the loan to buy equipment from overseas suppliers? What about Germany for energy trading infrastructure?**

**A:** Yes, with justification.

| Scenario | Rule |
|---|---|
| UK subcontractors | Preferred, no justification needed |
| Overseas equipment | No percentage limits — eligible for project use |
| Overseas subcontractors | Must justify why UK/EU alternative wasn't available, proportionate, and represents value for money |

For GPU servers — there's no UK alternative. NVIDIA H100s come from the US. This is understood by IUK assessors and needs no special justification beyond noting it's the only available source.

For energy trading infrastructure in Germany (exchange membership, EEX/EPEX) — this is eligible as a project cost, justified by: *"UK-based exchanges do not provide access to the required European power market data and clearing infrastructure essential for validating the energy-aware GPU scheduling model."*

Two hard geographical requirements:
1. **Project work from or in the UK** — the company and management are UK-based. Overseas contractors/subcontractors are fine.
2. **Results exploited in UK or EEA** — commercial benefits must flow to UK/EEA for 5 years post-project.

---

## 5. Energy Exchange Membership — Is It an Eligible Cost?

**Q: To hedge energy prices, we need to join an exchange and association in Germany. Are these costs eligible?**

**A:** Likely yes, with correct framing.

| Cost | Eligible? | Rationale |
|---|---|---|
| Exchange membership (EEX, EPEX Spot, etc.) | **Likely yes** | Access to live grid price data is essential project infrastructure for energy-aware scheduling R&D — analogous to laboratory equipment or specialist software |
| Market data feeds / licensing | **Likely yes** | Same logic — data is a direct input to the energy management system |
| Trading software / platform fees | **Possibly yes** | Depends on whether framed as project infrastructure vs general business software |
| Transaction fees from live trades | **Risky** | Likely ineligible — this is live commercial activity, not R&D infrastructure |

**How to frame in the application:**

> *"Energy exchange membership and market data licensing are essential project infrastructure for validating the energy-aware scheduling model. Exchange fees provide access to live grid price data that trains and tests the scheduling algorithm. This is analogous to specialist R&D software or laboratory equipment."*

Separate clearly between: (a) infrastructure costs (eligible) and (b) transaction costs from live trading during the project period (likely ineligible).

---

## 6. Debenture — What Assets Are Covered?

**Q: What exactly does the debenture cover?**

**A:** From the T&Cs:
- Fixed charge over **key assets** purchased with the loan
- Floating charge over **all other assets** of the business

No personal guarantees. No security over principal private residences. IP owned by Kanay.

---

## 7. Self-Funded Equipment — Should It Be in a Separate Entity?

**Q: If we finance additional equipment with our own funds, should we put it in a separate legal entity to protect it from the debenture?**

**A:** Structuring question — requires lawyer advice. Key considerations:

- A floating charge over "all other assets" could in theory sweep in equipment bought with own funds at enforcement
- Risk depends on how the debenture is drafted — negotiate explicitly to exclude assets acquired with own funds or after a certain date
- Options to discuss with lawyer:
  1. Ring-fence self-funded assets in a separate entity (with appropriate inter-company agreements)
  2. Keep self-funded assets in a holding entity, lease/service to project entity
  3. Negotiate debenture scope to explicitly exclude own-funded assets
  4. Discuss with IUK at loan setup stage — *"priority over assets not specifically scheduled in support of the innovation loan will not be unreasonably withheld"*

**Recommendation:** Keep IUK-funded and self-funded assets clearly separated. The project entity holds only what the loan funds. Self-funded assets stay in a separate entity. Discuss with a lawyer before structuring.

---

## 8. Capital Costs — Buy vs Lease

**Q: Can we claim the full purchase price of GPU servers, or only depreciation? And should we buy or lease equipment?**

**A:** First principles — real costs, real invoices. The loan covers what you've actually paid.

**Buy vs lease decision:**

| Asset | Useful life | Decision | Rationale |
|---|---|---|---|
| GPU servers | ~5 years | **Buy** | Matches project horizon — full depreciation within project period |
| Energy management system | ~5 years | **Buy** | Core project infrastructure — full expensing + depreciation |
| SNG generation unit (e.g. Rivan 1MW) | ~5–10 years | **Buy** | UK manufacturer (Rivan Industries, £156/kW = £156K per 1MW unit) — firm power, matches project horizon, full expensing |
| Sodium battery (Unit45 45ft container) | ~5 years | **Buy or lease** | Swap model — may be more economic to lease/swap |
| Office workstations | ~3 years | **Lease** | Shorter than project — lease instead |
| Networking / power infrastructure | ~3–5 years | **Buy or lease** | On the edge — lease if uncertain |
| Office furniture | ~10 years | **Don't claim** | Not project-specific |
| Specialist test equipment | ~5 years | **Buy** | Matches project horizon |

**Note on SNG units:** A 1MW Rivan system costs £156K. For a 2MW GPU cluster, 2× Rivan units = £312K capex. SNG units are a capital purchase — eligible under the loan, depreciated over their useful life within the project horizon. Full expensing applies under Autumn Statement 2023.

**Why buy equipment with 5-year useful life:**
- The 5-year project period aligns with the asset's useful life
- Full depreciation falls entirely within the project period — no residual value
- Full expensing under Autumn Statement 2023: claim 100% first-year capital allowance from HMRC
- Loan draws reimburse the actual cash payment — £2M invoice, £2M claimed

**Why lease shorter-life equipment:**
- Leasing keeps the cost within the project period without claiming residual value
- Lease payments during the project are eligible costs
- No residual value complication at project end

**Summary:**
> *"Real costs, real invoices, real payments. The loan draws down to reimburse what has been incurred and paid. Assets with a useful life matching or shorter than the project period are purchased — full depreciation within the project horizon. Assets with shorter useful lives are leased — payments during the project period are eligible. Office furniture and non-project equipment are not claimed."*

---

## 10. Financial Template — Where Is It?

**Q: Is there a financial spreadsheet template to download?**

**A:** No — and this is important. **There is no finance template to download at the EOI stage.** The IFS portal prompts you to download the template only after you are invited to submit a full application.

At EOI stage, the application form is completed directly in the IFS portal. The financial spreadsheet template comes with the full application invitation.

IUK Financial Template 2023 (`.xlsx`) is saved in the repo for reference — it shows the structure of the 8-sheet template (Business Financials, Sales Assumptions, Repayment Calc, Innovation Loans Calcs, Reference Rate, Grant Equiv). The 2025 version may differ slightly following July 2025 changes.

---

## 11. Change Control — What Requires Approval?

**Q: If things change in the project, do we need approval or just work towards the targets?**

**A:** It depends on the nature of the change:

| Change type | What is needed |
|---|---|
| Day-to-day spending decisions within agreed scope | No approval — work towards milestones |
| Shifting budget between cost categories within scope | Flag with MSP, formal change request if material |
| Changes to project scope, milestones, or direction | Formal project change request before implementation |
| Significant underspend or overspend | Update forecast at next quarterly review |

IUK can **stop drawdowns** if: project significantly off-target, financial health deteriorates, or non-compliance — but *"would discuss this in detail with you first."*

The quarterly MSP meetings are where changes are aligned. The relationship with your MSP matters as much as the paperwork.

---

## 12. Project Duration — How Many Quarters to Draw Down?

**Q: How many quarters do we have to deploy the full £5M?**

**A:** From competition 2505 (scraped from IFS portal):
- Project period: up to 5 years (includes R&D + pre-commercialisation)
- Repayment period: up to 5 years
- Total loan term: must not exceed 7 years

This gives up to **20 quarters** of drawdown window (5-year project period). Standard structure is approximately 3 years availability + 2 years extension (no new drawdowns but still in project period), then repayment.

Kanay's deployment is front-loaded (GPU cluster procurement in Year 1), which is exactly what IUK wants to see. You don't need to compress everything into Year 1, but the faster the deployment, the better it looks to assessors.
