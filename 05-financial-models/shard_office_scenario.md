# Financial Model Addendum — The Shard Office Scenario

> **Purpose:** Scenario addendum to `innovation_loan_model.R` / `innovation_loan_model.py`
> **Scope:** Shard office rent as eligible pre-commercial cost + exit clause modelling
> **Date:** 2026-10-05

---

## 1. The Shard — Available Office Space

**Source:** https://www.the-shard.com/offices/ (accessed 2026-10-05)

**Currently available:**

| Floor | Sq Ft | Type | Status |
|---|---|---|---|
| Level 26 | 15,912 | CAT A | Available |
| Level 18 | 10,143 | CAT A | Available |
| Level 17 | 9,574 | FITTED | Available |
| Level 13A | 7,152 | FITTED | Available |
| Level 13C | 8,505 | FITTED | Available |
| Level 13D | 4,706 | FITTED | Available |
| Level 11 | 16,893 | FITTED | Available |
| Level 10 | 20,075 | CAT A | **Available NOW** |

---

## 2. Cost Benchmarks

**Source:** Zipcube, CBRE, OkTra, Office Freedom (public listings, 2024–2026)

| Cost element | Rate | Source |
|---|---|---|
| Headline rent | £85–£95 per sq ft per annum | Zipcube 2025 |
| Business rates | £32.94 per sq ft per annum | Zipcube |
| Service charge | £20.90 per sq ft per annum | Zipcube |
| **Total occupancy cost** | **£139–£149 per sq ft per annum** | Combined |
| Serviced/per desk (small) | £350–£1,000 per person per month | Office Freedom |

**London Bridge market context:**
- Grade A headline rents: £65–£90 psf pa (OkTra 2025)
- City prime rent: £130.80 psf pa (FT, Q1 2026)
- West End prime: £165 psf pa (FT, Q1 2026)

**The Shard sits at a premium** to London Bridge market — reflecting the brand and address. At ~£140–£149 psf all-in, it is consistent with a tier-1 London address.

---

## 3. Space Requirement Assessment

**Kanay team composition (project period):**

| Role | Y1 Headcount | Y3 Headcount |
|---|---|---|
| GPU engineers / technical | 5 | 8 |
| Energy trading (pre-commercial) | 2 | 5 |
| Commercial / BD | 2 | 4 |
| Operations / admin | 1 | 3 |
| **Total** | **10** | **20** |

**Space benchmark:** 80–100 sq ft per person for Grade A London office
- 10 people → 800–1,000 sq ft minimum
- 20 people → 1,600–2,000 sq ft

**Suitable floors for Kanay:**

| Scenario | Floor | Sq Ft | People | Cost psf pa | Annual Cost | Monthly Cost |
|---|---|---|---|---|---|---|
| Y1 (10 people) | Level 13D | 4,706 | Up to 20 | £140 | £659,000 | £55,000 |
| Y1-Y2 transition | Subdivide or small suite | ~2,000 | 10–12 | £140 | £280,000 | £23,000 |
| Y3+ (20 people) | Level 13D or combine | 4,706–9,000 | Up to 40 | £140 | £659,000–£1,260,000 | £55,000–£105,000 |

**Recommended approach:**
- **Y1:** ~2,000 sq ft at £280,000 pa (£23,000/month) — adequate for initial 10-person team
- **Y2:** Expand within the building as headcount grows — the Shard has multiple floors, easy expansion
- **Exit clause:** Negotiate 3-month break clause at each rent review (every 12 months)

---

## 4. Exit Clause Structure

**Objective:** Maintain flexibility — if energy trading revenue grows faster than forecast, reduce or exit the Shard lease; if loan conditions change, exit is not a covenant breach.

**Recommended lease structure to negotiate:**

| Clause | Detail |
|---|---|
| Initial term | 12 months |
| Break clause | At 6 months, either party — 3 months' notice |
| Rent review | Annual, with 3-month exit right at each review |
| Security | 3 months' deposit (not a penalty — eligible as deposit, not upfront cost) |
| Permitted use | Office and pre-commercial activities |

**Note:** The Project Finance Guide explicitly excludes deposits and penalties from eligible costs. A deposit is not a penalty — it is a security instrument. Structure it as a refundable deposit rather than a non-refundable upfront payment.

**Exit scenario — financial impact:**

| Scenario | Trigger | Rent saving |
|---|---|---|
| Early exit Y2 | Energy trading covers office costs from own cash | ~£280,000 pa saved |
| Full exit Y3 | Revenue fully funds office | ~£560,000 pa saved |
| Space reduction Y2 | Sublease part of floor | Partial saving, ~£140,000 pa |

---

## 5. Full Cost Model — Base Case

**Assumptions:**
- Y1: 2,000 sq ft @ £140 psf = £280,000 pa
- Y2: 3,000 sq ft @ £140 psf = £420,000 pa (team grows)
- Y3: 4,706 sq ft @ £140 psf = £659,000 pa
- Y4–Y5: 4,706 sq ft, exit clause exercised if energy trading covers costs

**Loan drawdown — office rent as eligible project cost:**

| Quarter | Rent Cost | Cumulative Rent (Loan) | Notes |
|---|---|---|---|
| Q1 (Dec 2026) | £70,000 | £70,000 | 3 months on 2,000 sq ft |
| Q2 (Mar 2027) | £70,000 | £140,000 | |
| Q3 (Jun 2027) | £70,000 | £210,000 | |
| Q4 (Sep 2027) | £70,000 | £280,000 | Y1 total = £280,000 |
| Q5 (Dec 2027) | £105,000 | £385,000 | Expand to 3,000 sq ft |
| Q6 (Mar 2028) | £105,000 | £490,000 | |
| Q7 (Jun 2028) | £105,000 | £595,000 | |
| Q8 (Sep 2028) | £105,000 | £700,000 | Y2 total = £420,000 |
| Q9–Q16 | £165,000/qtr | ~£2,100,000 | Y3–Y5: 4,706 sq ft |
| **Total (5 yr)** | | **~£3,000,000** | **All eligible** |

**Total Shard rent over 5-year project period: ~£3M**
This is within the £5M loan envelope and within the 20% working capital allowance when combined with other costs.

---

## 6. Energy Trading Revenue Offset

**The key feedback loop:**

Energy trading (battery arbitrage, grid services) generates revenue from Q2 2027. As trading revenue grows, it offsets the Shard office cost — reducing the net drain on the loan.

| Period | Shard Rent | Energy Trading Revenue | Net Cost | Cumulative Net |
|---|---|---|---|---|
| Y1 (2027) | £280,000 | £0 | £280,000 | £280,000 |
| Y2 (2028) | £420,000 | £200,000 | £220,000 | £500,000 |
| Y3 (2029) | £659,000 | £500,000 | £159,000 | £659,000 |
| Y4 (2030) | £659,000 | £800,000 | (£141,000) surplus | £518,000 |
| Y5 (2031) | £659,000 | £1,000,000 | (£341,000) surplus | £177,000 |

**DSCR impact:** The surplus from Y4 onwards materially strengthens the DSCR — well above the 1.2x covenant threshold throughout.

---

## 7. Justification Text for Application

> *"The Shard provides the professional environment required to engage senior decision-makers at UK AI companies, institutional investors, and government counterparts including Sovereign AI. Pre-commercial activities — customer discovery, contract negotiation, investor relations, and government engagement — require a credible London City location. This is consistent with comparable high-growth AI infrastructure companies and represents proportionate investment in commercial capability.*
>
> *The Shard lease is structured with a 3-month exit clause at each annual rent review, ensuring the loan only funds the office for as long as it is needed. As energy trading revenue grows (Q2 2027 onwards), the office cost is progressively offset by trading income — reducing net loan draw in Y3–Y5.*
>
> *Office rent is classified as 'administration office facilities' per the Project Finance Guide eligible cost categories. The Shard is classified as a Grade A commercial office building. The quantum of space (2,000–4,706 sq ft over the project period) is proportionate to the team size (10–20 people) and the commercial requirements of the pre-commercial work package."*

---

## 8. Warehouse / Test Facility — Separate Cost Line

Note: the Shard is for commercial/pre-commercial activities. The energy infrastructure test facility (warehouse) is a **separate cost line** in the budget:

| Facility | Sq Ft | Cost psf | Annual Cost | Eligible Category |
|---|---|---|---|---|
| The Shard (office) | 2,000–4,706 | £140 | £280,000–£659,000 | Administration office rental |
| Test warehouse (energy infra) | TBC | ~£15–£25 | £50,000–£150,000 | Workshop / laboratory facility |

Total accommodation cost: ~£330,000–£810,000 pa — well within the £5M envelope.
