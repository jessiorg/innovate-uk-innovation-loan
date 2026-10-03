# IUK Innovation Loans — Webinars and Video Resources

> **Source:** IUK Business Connect — https://iuk-business-connect.org.uk/programme/innovation-loans-future-economy/
> **Video portal:** https://vimeo.com/showcase/10436032
> **Scraped:** 2026-10-03

---

## Available Resources

### Video Resources
IUK Business Connect hosts applicant briefing webinars and guidance videos on Vimeo.

**Portal:** https://vimeo.com/showcase/10436032
**Topics covered:** Applicant briefings, guidance on writing a good application

### Downloadable Resources
1. Expression of Interest FAQs
2. Guidance for Applicants
3. Project Finance Guide
4. General FAQs
5. Changes to Innovation Loans (July 2025)

**Access via:** https://iuk-business-connect.org.uk/programme/innovation-loans-future-economy/

---

## How to Access Webinars

1. Go to https://iuk-business-connect.org.uk/programme/innovation-loans-future-economy/
2. Complete the Expression of Interest form (to access resources)
3. Vimeo showcase contains recorded webinars

---

## Webinar Transcript Workflow

To transcribe new IUK webinar videos, use the `/youtube-transcribe` skill or equivalent:

### Using the Strategic Data Pipeline

The transcript tool is documented at: `~/claude/strategic-data/DATA/TRANSCRIPTS/README.md`

**Workflow:**
1. Extract video URL from Vimeo showcase (https://vimeo.com/showcase/10436032)
2. Use `youtube-transcribe` skill or `youtube-transcript-api` to fetch auto-generated transcript
3. Save to `strategic-data/DATA/TRANSCRIPTS/vimeo/{date}-iuk-innovation-loans-{topic}.md`
4. Tag with Kanay classification codes
5. Index in Qdrant `transcripts` collection

**Naming convention:**
```
{YYYY-MM-DD}-vimeo-iuk-innovation-loans-{topic}.md
```

**Frontmatter required:**
```yaml
---
title: "IUK Innovation Loans — Webinar Topic"
speaker: "Speaker Name"
company: "IUK Business Connect"
url: "https://vimeo.com/..."
date: "YYYY-MM-DD"
duration: "HH:MM:SS"
topics: [innovation-loans, iuk, ukri, sme-funding]
classification:
  client: KANAY:XXX-X-XX-XX
  market: KANAY:XXX-X-XX-XX
  product: KANAY:XXX-X-XX-XX
transcript_source: vimeo-transcript-api
---
```

---

## Recommended Webinar Topics to Watch

Based on the programme scope, the following topics are most relevant for Kanay:

| Priority | Topic | Why |
|---|---|---|
| High | How to write a good EOI | Kanay needs to submit by 9 Oct 2026 |
| High | Innovation Loans eligibility and scope | Confirm Challenge 3 fit |
| High | Financial requirements and assessment | Kanay's pre-revenue status |
| Medium | Webinar on the 2026 changes | New pre-commercialisation rules |
| Medium | Writing a strong project summary | 1,000 words — critical for Kanay |

---

## IUK Business Connect — Other Relevant Resources

- **Website:** https://iuk-business-connect.org.uk/
- **Innovation Loans programme:** https://iuk-business-connect.org.uk/programme/innovation-loans/
- **Get in touch:** https://iuk-business-connect.org.uk/connect/
- **Email:** enquiries@iuk-business-connect.org.uk

---

## Action Items

- [ ] Watch applicant briefing webinar on Vimeo
- [ ] Transcribe key webinars using transcript pipeline
- [ ] Save transcripts to `strategic-data/DATA/TRANSCRIPTS/vimeo/`
- [ ] Note any specific 2026 competition changes from webinar content
