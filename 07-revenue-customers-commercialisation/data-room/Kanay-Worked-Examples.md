---
title: "Kanay — Worked Examples"
document_type: data_room_deep_dive
status: draft
date: 2026-09-25
last_updated_by: AMA
business_units: [emm, applied_intelligence, innovation_hub]
audience: [investors, pitch_deck, partner_due_diligence]
classification: confidential
version: 1.0
tags: [data-room, worked-examples, elcogen, magnotherm, biomagnets, deal-structure]
related:
  - ./Kanay-Energy-Materials-Intelligence-Overview.md
  - ./Kanay-Transformation-Ladder.md
  - ./Kanay-Investor-FAQ.md
---

# Kanay — Worked Examples

*Two end-to-end deal walk-throughs showing how Kanay's Source → Transform → Supply model*
*creates three-margin economics on a single physical asset.*

*September 2026*

---

## How to read this document

Each example follows the same structure: **(1) Company profile**, **(2) Kanay's role**, **(3) Deal structure**, **(4) Economics**, **(5) 5-year P&L projection**, **(6) Exit**. The closing comparison table shows both side-by-side. All figures are estimates grounded in publicly available product data and partner disclosures. ⚠️ flags figures that need primary-source confirmation against the company's audited accounts or signed term sheets.

---

## Example A — Elcogen SOFC → AI Compute

### A.1 Company profile

**Elcogen** (Tallinn, Estonia; UK engineering office) manufactures solid-oxide fuel cells (SOFCs) for premium-efficiency stationary power. Their products target 55–60% electrical efficiency (vs ~45% for combined-cycle gas) with waste heat recoverable as CHP. Customers include data-centre operators, industrial CHP sites, and microgrid developers. Elcogen's stack technology is mature enough for commercial deployment but the firm is capital-constrained relative to Bloom Energy (the US comp, $25B+ market cap) and is therefore receptive to strategic capital that comes bundled with offtake.

### A.2 Kanay's role

Kanay acts as **strategic equity holder, offtake counterparty, and prepay finance provider**. The three roles are deliberately bundled: the equity aligns long-term interest; the offtake gives Elcogen a credit-quality customer; the prepay unblocks Elcogen's working-capital bottleneck. In return, Kanay secures a forward supply of SOFC stacks at favourable economics plus a stake that participates in Elcogen's re-rating as it scales.

### A.3 Deal structure

| Element | Terms |
|---|---|
| Equity stake | $5M for ~8% (Series B extension, post-money $62M ⚠️) |
| Offtake commitment | 10-year contract for 50 MW of stack capacity, take-or-pay at floor pricing |
| Prepay facility | $10M revolving, secured against offtake receivables, 6.5% coupon |
| Board seat | 1 of 5; observer + commercial committee |
| Anti-dilution | Weighted-average, 1× floor |
| Information rights | Standard minority protections, quarterly Mgmt Accounts |

**Bundled rationale:** Elcogen's bottleneck is working capital to scale stack production. Kanay's bundled deal solves it without forcing Elcogen to accept punitive venture-style terms. Kanay gets a stake that pays back twice — once via offtake margin, once via equity re-rating.

### A.4 Economics

#### SOFC plant (Kanay captive asset)

| Item | Value |
|---|---|
| Capacity | 5 MW (one Elcogen stack block + balance of plant) |
| Capex | ~$8.5M ⚠️ (Elcogen stack $4.5M, BOP $3M, install $1M) |
| Electrical efficiency | 58% LHV ⚠️ |
| Capacity factor | 85% (baseload) |
| Fuel input | Biomethane (Kanay-sourced, separate supply line) at ~$30/MWh |
| Power out cost | ~$52/MWh all-in (fuel + opex + amortised capex) |
| Grid equivalent | ~$85/MWh ⚠️ (UK capacity market + balancing) |
| Kanay efficiency premium | ~$33/MWh |

#### Compute cluster (Kanay-captive, fed by SOFC)

| Item | Value | Source |
|---|---|---|
| Cluster size | 256 × H100 SXM | NVIDIA partner pricing ⚠️ |
| GPU cost | ~$3.0M ⚠️ | NVIDIA H100 SXM list $30K–$40K |
| Networking + storage | ~$1.2M ⚠️ | InfiniBand/NVSwitch, parallel FS |
| Shell + cooling (fit-out) | ~$5.0M ⚠️ | Including immersion or rear-door heat exchanger |
| Total cluster capex | ~$9.2M ⚠️ | |
| Utilisation | 80% (hyperscaler contract + spot) | |
| Compute sold at | $3.50/GPU-hr ⚠️ | H100 on-demand market range $2.50–$4.50 |
| Annual compute revenue | ~$6.3M | 256 × 24 × 365 × 0.8 × $3.50 / 1e6 |

### A.5 Three Kanay revenue lines on the same electrons

| Line | Revenue (Year 3 run-rate) | Margin |
|---|---|---|
| Elcogen cell margin (offtake-vs-COGS) | $1.4M | ~25% |
| SOFC efficiency premium (vs grid) | $1.3M | ~60% |
| Compute sale (256 × H100 cluster) | $6.3M | ~40% |
| **Total** | **$9.0M** | **~42% blended** |

### A.6 5-year P&L projection

| | Y1 | Y2 | Y3 | Y4 | Y5 |
|---|---|---|---|---|---|
| Elcogen cell margin | $0.6M | $1.0M | $1.4M | $1.7M | $2.0M |
| SOFC efficiency premium | $0.5M | $0.9M | $1.3M | $1.6M | $1.8M |
| Compute sale (H100) | $2.0M | $4.5M | $6.3M | $7.0M | $7.5M |
| Prepay interest income | $0.65M | $0.65M | $0.65M | $0.65M | $0.65M |
| **Total revenue** | **$3.75M** | **$7.05M** | **$9.65M** | **$10.95M** | **$11.95M** |
| Opex (ops, eng, SG&A) | $1.20M | $1.80M | $2.30M | $2.60M | $2.80M |
| **EBIT** | **$2.55M** | **$5.25M** | **$7.35M** | **$8.35M** | **$9.15M** |
| Capex deployed | $17.7M | $4.0M | $2.0M | $2.0M | $1.0M |
| Cumulative cash | −$15.2M | −$13.9M | −$8.5M | −$2.2M | +$5.9M |

**Payback:** ~4.6 years blended; on the compute layer alone, ~0.4 years; on the SOFC plant, ~7 years (the integrated book is what makes the economics work).

### A.7 Exit pathways

| Pathway | Mechanism |
|---|---|
| **Compute REIT** | Spin the operating compute cluster into a UK / US REIT. Long-dated cash flows from hyperscaler contracts match REIT investor base. |
| **Elcogen IPO / strategic sale** | Elcogen scales; Kanay exits equity stake at re-rating (Series B → IPO multiple 5–10× ⚠️). |
| **Asset sale to infrastructure fund** | Sale-leaseback of SOFC plant to infrastructure fund; Kanay retains offtake economics. |
| **Strategic secondary** | Sell Kanay's combined stake to a strategic acquirer (e.g., US data-centre operator seeking captive power). |

Most likely primary exit: REIT on the compute cluster + secondary on Elcogen equity. Two clean windows, two buyer pools.

---

## Example B — Magnotherm + Biomagnets (Manchester)

### B.1 Company profile

**Magnotherm** (Darmstadt, Germany) builds magnetic-refrigeration systems using the magnetocaloric effect. The technology replaces gas-compression cycles with solid-state magnetic cycles, eliminating refrigerant gases (F-gases) and delivering 20–30% efficiency gains in cooling-dominated applications. Their first commercial products target data-centre cooling and industrial process cooling. Adoption curve is early — comparable to immersion cooling three years ago.

**Biomagnets firm** (Manchester, UK) makes permanent magnets from biological and recycled feedstock, reducing dependence on virgin rare-earth supply. The product range covers ferrite-bonded and selected NdFeB-substitute grades suitable for cooling-system rotors, eSAF catalyst substrates, and selected motor applications. The firm is at pilot scale, with anchor demand needed to underwrite capacity expansion.

### B.2 Kanay's role

Kanay is the **bridge**. Magnotherm gets a UK/EU sales channel, working-capital finance, and a guaranteed magnet supplier. Biomagnets gets an anchor offtake from a credible downstream buyer. Kanay gets margin on working-capital interest, cooling-as-service recurring revenue, and magnet supply spread.

### B.3 Deal structure

#### Magnotherm

| Element | Terms |
|---|---|
| Channel partnership | Non-exclusive UK + BeNeLux + Nordics distribution |
| Working-capital line | $3M revolving, secured against deployed systems, 7.0% coupon |
| Strategic equity | $2M for ~6% (post-money ~$33M ⚠️) |
| Co-marketing | Joint go-to-market in data-centre and eSAF cooling |

#### Biomagnets

| Element | Terms |
|---|---|
| Channel finance | $1.5M working-capital line for magnet production, secured against |
| | offtake contracts, 8.5% coupon |
| Offtake commitment | 3-year purchase commitment covering ~40% of pilot capacity |
| Strategic equity | $0.5M for ~5% (post-money ~$10M ⚠️) |
| Technical assistance | Joint application engineering with Magnotherm |

### B.4 Economics

#### Cooling-as-service (Magnotherm, Kanay captive + third party)

| Item | Value |
|---|---|
| Per-system capex (Magnotherm unit, installed) | ~$180K ⚠️ |
| Kanay's installed base target (Yr 3) | 60 systems |
| Total deployed capex (Yr 3) | ~$10.8M |
| Cooling-as-service recurring revenue | ~$7K/system/month ⚠️ |
| Annual cooling revenue (Yr 3) | ~$5.0M |
| Net margin on cooling service | ~30% |

#### Magnet supply spread (Biomagnets → Magnotherm)

| Item | Value |
|---|---|
| Magnet ASP (ferrite-bonded, selected grades) ⚠️ | ~$28/kg |
| Biomagnets COGS ⚠️ | ~$18/kg |
| Gross spread | ~$10/kg |
| Annual volume (Yr 3, offtake commitment) | 200 tonnes |
| Annual spread revenue | $2.0M |
| Net margin | ~50% |

#### Working-capital interest

| Loan | Amount | Coupon | Annual income |
|---|---|---|---|
| Magnotherm WC line | $3.0M | 7.0% | $0.21M |
| Biomagnets WC line | $1.5M | 8.5% | $0.13M |
| **Total** | **$4.5M** | — | **$0.34M** |

### B.5 Three Kanay revenue lines on the same cooling stack

| Line | Y3 revenue | Margin |
|---|---|---|
| Cooling-as-service | $5.0M | 30% |
| Magnet supply spread | $2.0M | 50% |
| Working-capital interest | $0.34M | 100% |
| **Total** | **$7.34M** | **~37% blended** |

### B.6 Cross-linkages

The Magnotherm leg is more than standalone cooling margin. **Kanay's data centres (compute layer) and eSAF plants (refining layer) are cooling-dominated.** Captive Magnotherm systems cut cooling opex by 20–30% and eliminate F-gas regulatory exposure. The $7K/month/system/month/service revenue line therefore understates the embedded value — internal cost-savings on Kanay's own book are the silent margin.

### B.7 5-year P&L projection

| | Y1 | Y2 | Y3 | Y4 | Y5 |
|---|---|---|---|---|---|
| Cooling-as-service | $0.7M | $2.4M | $5.0M | $7.2M | $9.0M |
| Magnet supply spread | $0.3M | $1.0M | $2.0M | $3.0M | $3.5M |
| Working-capital interest | $0.20M | $0.30M | $0.34M | $0.38M | $0.40M |
| **Total revenue** | **$1.20M** | **$3.70M** | **$7.34M** | **$10.58M** | **$12.90M** |
| Opex (channel ops, install crews) | $0.40M | $1.10M | $2.20M | $3.10M | $3.70M |
| **EBIT** | **$0.80M** | **$2.60M** | **$5.14M** | **$7.48M** | **$9.20M** |
| Capex deployed | $3.2M | $3.5M | $4.1M | $3.0M | $2.0M |
| Cumulative cash | −$2.4M | −$3.3M | −$2.3M | +$2.2M | +$9.4M |

**Payback:** ~5 years blended on systems capex; the magnet-spread line is ~0.5 year payback on its own working-capital line.

### B.8 Exit pathways

| Pathway | Mechanism |
|---|---|
| **Cooling-as-service roll-up** | Bundle into a cooling-services platform, sell to infrastructure fund. |
| **Magnotherm strategic sale** | European strategic acquirer (cooling OEM, industrial gas) buys; Kanay exits equity + retains distribution agreement. |
| **Biomagnets growth equity** | Biomagnets scales; Kanay exits partial at re-rating; retains supply relationship. |
| **Combined play** | Spin the integrated cooling + magnet platform as a UK climate-tech champion. |

Most likely primary exit: cooling-as-service roll-up at 12–15× EBITDA ⚠️, with secondary exits on each equity stake at Series C / strategic sale milestones.

---

## 9. Comparison — both examples side-by-side

| Dimension | Elcogen SOFC → AI Compute | Magnotherm + Biomagnets |
|---|---|---|
| Sector | Power gen + compute | Climate tech + advanced materials |
| Geography | Estonia/UK + UK + EU | Germany + UK |
| Kanay's stake size | $5M equity (8%) | $2M + $0.5M equity (~6% + ~5%) |
| Offtake / channel | 50 MW 10‑yr take-or-pay | 3-yr purchase commitment + distribution |
| Total capex deployed (Y1–Y5) | ~$26.7M | ~$15.8M |
| Year-5 revenue | ~$12.0M | ~$12.9M |
| Year-5 EBIT | ~$9.2M | ~$9.2M |
| Blended payback | ~4.6 yr | ~5.0 yr |
| Payback on the leading leg | Compute ~0.4 yr | Magnet spread ~0.5 yr |
| Margin per MWh (where applicable) | $1,033/MWh (compute layer) | Cooling $7K/system/month, magnet spread $10/kg |
| Primary exit | Compute REIT + Elcogen secondary | Cooling-as-service roll-up |
| Exit multiple on the operating asset (illustrative) | 12–18× EBITDA ⚠️ | 12–15× EBITDA ⚠️ |

### 9.2 Why these two examples matter

Both examples demonstrate the same Kanay pattern: **a single physical asset stack earns margin multiple times — at sourcing, transformation, and supply. The integrated oil-major model.** Example A is the high-velocity compute play; Example B is the climate-tech play. Both run through the same Source → Transform → Supply template. Both have multi-leg exits that don't depend on a single buyer.

---

## 10. How this connects to the rest of the data room

- **Overview** frames the transformation ladder; **Transformation Ladder** sets the per-stage numbers.
- **This document** shows two of those stages built end-to-end with deal structure and exits.
- **Investor FAQ** addresses the questions these deals will surface in DD.

---

*Prepared for the Kanay data room — September 2026*
*Source / strategy: Nana Gyasi (CEO), Ama (AI COO)*
*Confidential — investor due diligence only*