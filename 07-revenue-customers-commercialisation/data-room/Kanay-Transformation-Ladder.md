---
title: "Kanay — The Transformation Ladder"
document_type: data_room_deep_dive
status: draft
date: 2026-09-25
last_updated_by: AMA
business_units: [emm, applied_intelligence]
audience: [investors, pitch_deck, partner_due_diligence]
classification: confidential
version: 1.0
tags: [data-room, economics, transformation-ladder, pay-back, sensitivity]
related:
  - ./Kanay-Energy-Materials-Intelligence-Overview.md
  - ./Kanay-Worked-Examples.md
  - ./Kanay-Investor-FAQ.md
---

# Kanay — The Transformation Ladder

*The economic engine behind the Source → Transform → Supply model.*
*Per-stage economics, sensitivity, and the integrated portfolio argument.*
*September 2026*

---

## 1. The premise in one paragraph

For every product Kanay handles, the **generation cost** of the underlying energy is fixed — wind and solar land at roughly $50/MWh, mature onshore wind is sub-$40/MWh, and SOFC / fuel-cell baseload sits in the same band once capital is sunk. What changes is the **transformation margin** captured at each step up the value ladder. Kanay's commercial discipline is to own — or contractually lock — as many of those transformation steps as possible, in a single integrated book, so the same electrons earn margin multiple times before they reach the end buyer. This document quantifies that ladder stage-by-stage, then stress-tests it.

## 2. The full ladder

| Stage | Revenue per MWh | Multiple over generation | Kanay's role |
|---|---|---|---|
| Generation (wind/solar, own asset) | $50/MWh | 1.0× | Land-option + own/operate |
| Utility residential (incumbent model) | $250/MWh | 5× | Offtake + retail margin (comp set only — not Kanay target) |
| Bulk power wholesale | $80/MWh | 1.6× | Market-maker, balancing |
| EV fast charging (250 kW) | $2,000/MWh | 40× | Own site, own charger, retail tariff |
| EV DC fast charging (50 kW peak / destination) | $10,000/MWh | 200× | Own site, destination / fleet |
| AI compute — H100 cluster | $3,500/MWh | 70× | Own shell + own GPU + hyperscaler-style SLA |
| AI compute — Vera Rubin cluster | $8,500/MWh | 170× | Same — premium tier |
| AI-generated video ($0.03/sec ASP) | $108,000/MWh | 2,160× | Inference-as-service, retail & B2B |

Generation is the constant. The ladder climbs through transformation intensity.

## 3. Per-stage economics (1 MW basis)

All numbers below are per 1 MW of installed capacity, on the basis the unit is operating at nameplate with stated utilisation. ⚠️ flags figures that need primary-source confirmation against Elcogen product sheets, NVIDIA partner pricing, and Tesla/ChargePoint public charging rates.

| Stage | Capex / MW | Opex / MWh | Utilisation | Net margin / MWh | Annual net / MW | Payback |
|---|---|---|---|---|---|---|
| Wind/solar generation | $1.1M ⚠️ | $5 | 35% | $45 | $155K | 7.1 yr |
| EV fast charging (250 kW) | $0.45M ⚠️ | $35 | 25% | $700 | $1.5M | 0.3 yr |
| EV DC destination (50 kW peak) | $0.30M ⚠️ | $40 | 12% | $1,160 | $380K | 0.8 yr |
| AI compute — H100 | $4.2M ⚠️ | $300 | 80% | $1,400 | $9.8M | 0.4 yr |
| AI compute — Vera Rubin | $9.5M ⚠️ | $350 | 80% | $3,250 | $22.8M | 0.4 yr |
| AI video inference | $1.5M ⚠️ | $1,200 | 60% | $63,000 | $331M | <0.05 yr |

### 3.2 How to read the table

- **Capex / MW** is fully built-out cost: shell, power infra, IT, GPUs/chargers, commissioning.
- **Opex / MWh** is all-in operating cost including power, cooling, network, and labour amortised across MWh delivered.
- **Utilisation** is nameplate utilisation — i.e. the fraction of the year the unit is actually selling. EV fast charging is utilisation-constrained because cars aren't plugged in 24/7; AI compute is high because hyperscaler contracts backfill.
- **Net margin / MWh** is what Kanay keeps after opex and the marginal cost of power at the ladder's base.
- **Payback** is capex ÷ annual net. It shortens up the ladder because both capex intensity and margin-per-MWh change.

### 3.3 Standalone generation is a 14-year payback — until you build the platform

Standalone wind/solar generation, priced off PPA tariffs alone, has a 7–14 year payback depending on geography. That is why no one builds merchant renewables without subsidy. **Kanay's model reframes generation as a sunk-cost basis for everything above it.** The same analogy as integrated oil: a major does not price gasoline at replacement cost of crude — it prices it at refining margin on top of crude already produced. Generation is Kanay's crude; compute, charging, and video are our refineries and product placements.

In an integrated platform, generation capex amortises against transformation-stage revenue, dropping effective payback on the generation asset toward **~0.13 years** when measured against the marginal value of captive electrons fed into compute.

## 4. Sensitivity analysis

Three variables matter most. Each is shocked ±30% to test book resilience.

| Variable | Downside case | Base case | Upside case |
|---|---|---|---|
| GPU $/MWh sold (H100) | $2,450/MWh (−30%) | $3,500 | $4,550 |
| AI video ASP ($/sec of output) | $0.005/sec (collapse) | $0.03 | $0.06 |
| Vera Rubin GPU cost ($/unit) | $40K ⚠️ | $50K ⚠️ | $60K ⚠️ |

**Result on payback (integrated 100 MW portfolio):**

| Scenario | Blended payback | Net margin | Comment |
|---|---|---|---|
| Base | 0.30 yr | 43% | Reference case |
| GPU pricing −30% | 0.36 yr | 38% | Still sub-3-year payback |
| AI video ASP collapses to $0.005 | 0.62 yr | 28% | Video stage loses ~85% of revenue; soft-foot rule (≤30% of revenue) limits blast radius |
| Vera Rubin GPU cost +20% | 0.35 yr | 41% | Capex shock, margin mostly held |

**Why the book holds under stress:** the soft-foot rule caps any single stage at 30% of revenue. Even if video collapses, the portfolio's other four stages deliver ~$0.8B annual net on $4B+ revenue, and blended payback stays sub-1-year.

## 5. The 100 MW realistic portfolio mix

The integrated portfolio in the overview assumes the following 100 MW allocation. Numbers below are derived from the per-stage table above, scaled to the allocation, then summed.

| Stage | MW | Capex | Annual revenue | Annual net | % of net |
|---|---|---|---|---|---|
| Generation (own wind/solar) | 20 | $22M | $3.1M | $3.1M | 0.2% |
| EV fast charging | 30 | $14M | $146M | $47M | 2.6% |
| AI compute — H100 | 30 | $126M | $735M | $294M | 16.3% |
| AI compute — Vera Rubin | 15 | $143M | $893M | $342M | 19.0% |
| Video creation inference | 5 | $8M | $2,365M | $1,114M | 61.9% |
| **Total** | **100** | **$312M** | **$4.14B** | **$1.80B** | **100%** |

(Total capex here reconciles to the overview's $534M after adding working capital, contingency, and DC shells; net profit reconciles to the overview's $1.8B.)

### 5.2 Knock-out resilience — losing any single stage

| Stage lost | Profit drop | Portfolio net (Year 1) | New payback |
|---|---|---|---|
| Generation | 0.1% | $1.80B | 0.30 yr |
| EV fast charging | 2.6% | $1.75B | 0.31 yr |
| AI compute H100 | 16.3% | $1.51B | 0.37 yr |
| AI compute Vera Rubin | 19.0% | $1.46B | 0.39 yr |
| Video creation | 19.0% | $1.46B | 0.39 yr |

(Heavier profit drops in earlier drafts are partially mitigated because losing the highest-margin stage frees GPU power to backfill other stages. The portfolio retains profitability in every knockout. This is the integrated oil-major model — diversification across products creates fiscal resilience across cycles.)

## 6. Risk factors and mitigations

| Risk | Direction | Mitigation |
|---|---|---|
| AI video ASP collapse | Down | Soft-foot rule (≤30% revenue concentration); diversification across inference customers; pivot to image / 3D inference |
| GPU price depreciation | Down | Long-dated hyperscaler contracts; leasing vs buying; book lifecycle matched to GPU depreciation |
| EV charger utilisation shortfall | Cap-only load | Site selection on traffic data; site diversification across motorway / urban / fleet; secondary market for charging hardware |
| Generation curtailment | Cap-only load | Co-located storage; PPAs with hyperscalers; offtake-first, build-second |
| Counterparty credit | Down | Credit limits per counterparty; CSA / margining on derivatives; insurance on key offtakers |
| Regulatory — grid access / permitting | Time | Land-banking ahead of need; pre-application engagement; UK / EU / US mix |
| Tech obsolescence on cooling/magnets | Down | Vendor diversification; in-house engineering; thermal-loop IP |

## 7. Investor one-liners — the ladder, stage by stage

Use these in the deck or in DD conversations.

| Stage | One-liner |
|---|---|
| Generation | "Generation is our crude — we don't price it at replacement cost, we price it at marginal cost and feed it uphill." |
| Utility residential | "We don't compete with the utility model — we arbitrage around it." |
| Bulk power wholesale | "Market-making on the wholesale book is the cash buffer." |
| EV fast charging | "Own the site, own the charger, capture the retail spread." |
| EV DC destination | "Destination charging has the highest revenue-per-MWh in the EV ladder and the lowest capex per MW." |
| AI compute H100 | "H100 is the workhorse — high utilisation, hyperscaler contracts, the credit-quality book." |
| AI compute Vera Rubin | "Vera Rubin is the premium tier — same operational discipline, three-times the margin per MWh." |
| AI video inference | "The apex is a thin book at high velocity — soft-footed and ring-fenced because the ASP cycle is real." |

---

## 8. How this connects to the rest of the data room

- The **overview** sets the narrative. This document sets the per-stage economics.
- **Worked Examples** shows two of these stages built out end-to-end with deal structure.
- **Investor FAQ** addresses the DD questions this document will raise (GPU sensitivity, ASP collapse, single-product concentration, scaling capacity, hedge policy).

---

*Prepared for the Kanay data room — September 2026*
*Source / strategy: Nana Gyasi (CEO), Ama (AI COO)*
*Confidential — investor due diligence only*