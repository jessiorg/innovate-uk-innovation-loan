# Changelog

All notable changes to the Innovate UK Innovation Loan working repository.

---

## [Unreleased] — EOI Submission Sprint

### Added

**EOI Draft**
- `04-eoi-draft/kanay_eoi_project_summary.md` — Full draft EOI project summary. 1,000-word narrative covering vision, innovation, market, team, funding gap, economic impact. All 11 EOI form questions answered. Includes full expensing note on GPU capex and DSCR context.

**Documents (this release)**
- `08-iuk-competition-2505/competition-overview.md` — Full scraped content from IFS portal (competition 2505): all 11 EOI questions, six Industrial Strategy sectors, assessment criteria, exclusion criteria, key dates
- `08-iuk-competition-2505/faqs-innovation-loans.md` — Full 9-page PDF parsed from IUK Business Connect: debenture details, covenants (liquidity 1.1x, DSCR 1.2x), drawdown mechanics, pre-revenue eligibility clarified
- `08-iuk-competition-2505/webinars.md` — Vimeo showcase portal, transcript workflow, recommended webinar topics to watch
- `08-iuk-competition-2505/documents/` — Downloaded source PDFs:
  - `Project-Finance-Guidance-Innovation-Loans-June-2025.pdf` — Labour, overheads, materials, capital usage, subcontracts, travel, working capital (up to 20%)
  - `Guidance-for-Applicants-Innovation-Loans-June-2025.pdf` — Full application process, three-part structure (survey + financial spreadsheet + project questions), assessment process, security/debenture
  - `Expression-of-Interest-EOI-FAQ-Innovation-Loans-June-2026.pdf` — EOI pilot process, three decisions (invited/pending/declined), EOI vs full application distinction
  - `Innovation-loans-post-June-2025.pdf` — July 2025 changes: loan cap raised £2M→£5M, pre-commercial costs now eligible, new financial template

**Financial Models**
- `05-financial-models/innovation_loan_model.R` — Base R only (no dplyr). Drawdown schedule, amortisation, full cashflow, DSCR covenant test. Kanay revenue: £0/£30M/£60M/£90M/£105M, 25% margin → DSCR 62x in Y1
- `05-financial-models/innovation_loan_model.py` — Python + openpyxl + rich. Same Kanay revenue trajectory, rich table output
- `05-financial-models/innovation_loan_report.qmd` — Quarto document for RStudio. Live R code chunks: configuration, drawdown, amortisation, full cashflow, DSCR, pre-revenue section, security/covenants
- `05-financial-models/drawdown_schedule.csv` — Generated drawdown table
- `05-financial-models/amortisation.csv` — Loan amortisation schedule
- `05-financial-models/full_cashflow.csv` — Full business cashflow with loan
- `05-financial-models/dscr_covenant.csv` — DSCR covenant test (quarterly)

**Loan Mechanics**
- `02-financial-mechanics/loan_mechanics.md` — Three-phase interest structure (3.7% payable + 3.7% deferred), debenture terms, pre-revenue clarity confirmed from primary sources

**Sovereign AI (separate from IUK loan — first customer/supplier)**
- `07-revenue-customers-commercialisation/sovai/README.md` — Five offerings, four focus areas, "contact now" strategy
- `07-revenue-customers-commercialisation/sovai/procurement/r-and-d-procurement.md` — R&D Procurement: Challenge 3 (compute efficiency), Batch 2 deadline 31 Dec 2026, IP owned by applicant
- `07-revenue-customers-commercialisation/sovai/compute-access/airr.md` — AIRR sovereign compute (Isambard + DAWN)
- `07-revenue-customers-commercialisation/sovai/strategic-assets/strategic-assets.md` — Pre-competitive data infrastructure
- `07-revenue-customers-commercialisation/sovai/visa-support/visa-support.md` — Visa reimbursement (Skilled Worker, Global Talent, Innovator Founder)
- `07-revenue-customers-commercialisation/sovai/funding-stack.md` — Full funding stack with mermaid diagrams. Legal framing: no state aid overlap. Equity NOT sought

**Due Diligence**
- `03-due-diligence/due_diligence.md` — What IUK checks: credit reference agencies, beneficial ownership, Early Metrics assessment, AML/KYC, commercial due diligence

**Eligibility**
- `01-eligibility/eligibility_checklist.md` — SME definition, six Industrial Strategy sectors, exclusion list, pre-revenue confirmed eligible

**EOI Draft**
- `04-eoi-draft/EOI_PROJECT_SUMMARY.md` — Template and guidance for the 1,000-word project summary + 11-question form

**Data Room (companion docs to the EOI summary — supports the "highly innovative" + "commercialisation" sections)**
- `07-revenue-customers-commercialisation/data-room/Kanay-Energy-Materials-Intelligence-Overview.md` — Company narrative: energy, materials and intelligence company; Source-Transform-Supply commercial model; transformation ladder thesis; 100 MW integrated portfolio with knock-out resilience test (1.8B annual net profit at 0.3yr payback)
- `07-revenue-customers-commercialisation/data-room/Kanay-Transformation-Ladder.md` — Economic deep-dive: per-stage capex/opex/utilisation/payback (1 MW basis), sensitivity analysis (GPU pricing -30%, AI video ASP collapse), realistic portfolio mix, oil-major analogy
- `07-revenue-customers-commercialisation/data-room/Kanay-Worked-Examples.md` — Two deal-level worked examples: Elcogen SOFC → AI compute (stake + offtake + 5yr P&L + exit via REIT), Magnotherm + biomagnets (cooling-as-service + magnet channel finance + 5yr P&L)
- `07-revenue-customers-commercialisation/data-room/Kanay-Investor-FAQ.md` — Top 20 investor DD questions with candid responses across business model, competitive position, capital/scaling, risk/resilience, team/execution, partners; "questions we ask ourselves" subsection

**References**
- `references/references.md` — 21 citations: IUK sources (9), Sovereign AI (7), Kanay internal (5)

**README**
- Full repo structure
- 2-stage process mermaid diagram
- Dual-track strategy mermaid diagram (IUK Loan + Sovereign AI)
- Revenue stack mermaid diagram
- Key links to IFS portal, SovAI, support contacts

---

## 2026-10-02 — Repository Created

- Initial commit with Innovate UK Innovation Loan context
- README.md with overview and key dates
- Scope: IUK Innovation Loan + Sovereign AI strategy documentation
- Repo location: `/Users/nanagyasi/claudec/innovate-uk-innovation-loan`
