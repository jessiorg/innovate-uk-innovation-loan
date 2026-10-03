# Innovate UK Innovation Loan — Working Repository

**EOI Deadline:** 9 October 2026, 11:00am (last window for 2026)
**Loan Amount:** £100k – £5M
**Interest:** 7.4% p.a. (3.7% payable during project, 3.7% deferred)
**Project Start:** From 1 December 2026

---

## Repository Structure

```
01-eligibility/                      ← Eligibility checklist, sector guide, exclusions
02-financial-mechanics/               ← Loan mechanics, drawdowns, debenture, pre-revenue clarity
03-due-diligence/                   ← What IUK checks, covenant thresholds, red flags
04-eoi-draft/                      ← EOI project summary template + the 11 questions
05-financial-models/                 ← R + Python models (drawdown, amortisation, DSCR)
06-presentation/                    ← OpenDesign pitch deck materials
07-revenue-customers-commercialisation/
  sovai/
    README.md                      ← SovAI full overview — all 5 offerings
    procurement/                    ← R&D procurement scheme, Challenge 3
    compute-access/                ← AI Research Resource sovereign compute
    strategic-assets/              ← Data infrastructure funding
    visa-support/                  ← Global talent visa reimbursement
08-iuk-competition-2505/           ← Full competition brief, FAQs, webinars
references/                        ← All citations and sources
```

---

## The 2-Stage Process

```mermaid
flowchart LR
    A[EOI Submission<br/>9 Oct 2026] --> B{IUK Approved?}
    B -- Yes --> C[Full Application<br/>by invitation]
    B -- No --> D[Not eligible]
    C --> E{Contract Awarded?}
    E -- Yes --> F[Loan Documentation<br/>Debenture signed]
    E -- No --> G[Application rejected]
    F --> H[Project Period<br/>Up to 5 years<br/>3.7% interest payable]
    H --> I[Repayment Period<br/>Up to 5 years<br/>7.4% on principal<br/>+ deferred interest]
    I --> J[Loan Repaid<br/>UK economic benefit delivered]
```

---

## Kanay's Dual-Track Strategy

```mermaid
flowchart TB
    subgraph "Instrument 1: IUK Innovation Loan"
        A1[IUK EOI<br/>9 Oct 2026] --> A2[Full Application]
        A2 --> A3[£5M Loan<br/>Project Period]
        A3 --> A4[Repayment<br/>7.4% annuity]
    end

    subgraph "Instrument 2: Sovereign AI"
        B1[Contact SovAI<br/>Now] --> B2[Approved Supplier List<br/>No deadline]
        B2 --> B3[R&D Procurement<br/>Batch 2: 31 Dec 2026]
        B2 --> B4[AIRR Compute Access<br/>Next round]
        B2 --> B5[Visa Support<br/>Once eligible]
        B2 --> B6[Strategic Assets<br/>Data infrastructure]
    end

    A3 <-->|"Government contract<br/>unlocks repayment"| B3
    A3 <-->|"Talent via visa<br/>unlocks hiring"| B5
    A3 <-->|"Compute access<br/>reduces costs"| B4
```

---

## Kanay Revenue Stack

```mermaid
flowchart LR
    subgraph "GPU Compute Sales"
        A1[SovAI Portfolio<br/>Basecamp OLIX CuspAI...] --> A2[GPU Hours<br/>Applied Intelligence]
        A3[Direct UK<br/>AI Companies] --> A2
        A4[European<br/>Biotech Firms] --> A2
        A5[US Biotech<br/>Firms] --> A2
        A6[Compute<br/>for Equity] --> A2
    end

    subgraph "Applied Intelligence"
        B1[Spatial Intelligence API] --> B2[Domain Expert<br/>Overlays]
        B2 --> B3[KCC Taxonomy<br/>GICS NACE HS]
    end

    subgraph "Energy Trading"
        C1[Battery<br/>Arbitrage] --> C3[Grid Services<br/>Ancillary Markets]
        C2[Renewable<br/>Power Trading] --> C3
    end

    A2 --> A7[Customer<br/>Revenue]
    B3 --> A7
    C3 --> A7
```

---

## The 2-Stage Process

```
EOI (deadline 9 Oct 2026)
    ↓  (if approved)
Full Application (by invitation)
    ↓  (if approved)
Loan Documentation → Debenture → Quarterly Drawdowns
    ↓
Project Period (up to 5 years, interest payable at 3.7%)
    ↓
Repayment Period (up to 5 years, principal + deferred interest at 7.4%)
```

---

## Kanay's Dual-Track Strategy

```
Sovereign AI R&D Procurement (Batch 2, Dec 2026)
    → Government as first customer
    → Challenge 3: compute efficiency
    → IP: Kanay owns; government gets usage licence

Innovate UK Innovation Loan (EOI 9 Oct 2026)
    → Debt layer preserving equity
    → Energy trading infrastructure + commercial operations
    → Separate work package from SovAI contract
```

---

## Key Links
- IUK Portal: https://apply-for-innovation-funding.service.gov.uk
- Competition: https://apply-for-innovation-funding.service.gov.uk/competition/2505/overview
- IUK Loans guidance: https://www.ukri.org/councils/innovate-uk/guidance-for-applicants/guidance-for-specific-funds/innovation-loans/
- SovAI: https://www.sovereignai.gov.uk
- SovAI EOI: https://www.sovereignai.gov.uk/requestforfounders
- Support: support@iuk.ukri.org | 0300 321 4357

---

## Tags
#innovation-loan #iuk #eoi #2026 #sovereign-ai
