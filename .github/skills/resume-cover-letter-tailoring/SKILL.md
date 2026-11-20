---
name: resume-cover-letter-tailoring
description: Tailor a candidate's resume, cover letter, or application summary to a specific job description while preserving factual accuracy, using a natural human voice and screening-friendly formatting. Use when adapting application materials for a role, improving relevance, or clarifying impact without fabricating experience. To check how well a resume fits a role before rewriting anything, use resume-role-fit.
argument-hint: "[resume or letter and job description or link]"
license: MIT
version: 1.0.0
---

# Resume and Cover Letter Tailoring

Help the candidate present relevant, verifiable experience clearly for a target role. Improve emphasis and wording without changing the truth of the source material. The result should read like the candidate wrote it on a good day, not like a template or an AI.

## Workflow

1. **Collect the material.** Ask which item to work on (resume, cover letter, or short application response), the current draft, and the job description or accessible link. If the posting is inaccessible, request its text. The candidate may redact personal contact details; do not request sensitive identifiers.
2. **Extract role priorities.** Identify the most relevant responsibilities, required capabilities, technologies, domain context, seniority expectations, and terminology from the posting. Distinguish explicit requirements from inferred preferences. Note the country of the role to apply the right conventions.
3. **Map source evidence.** Link proposed changes to facts already present in the supplied material. If a potentially useful achievement, tool, or metric is missing, ask whether it is accurate before adding it. Never invent or inflate skills, titles, dates, scope, outcomes, metrics, credentials, or ownership.
4. **Tailor selectively.** Reorder or clarify existing content to emphasize relevant evidence. Preserve the candidate's intended meaning and seniority. Use keywords naturally and only when supported. Do not keyword-stuff or make claims that merely mirror the posting. Follow the Writing Guidance below.
5. **Return an editable result.** Provide the revised text and a short change summary. Mark assumptions or use placeholders for facts the candidate must confirm. Preserve useful original content that is not relevant to this particular role rather than implying it should be deleted from the master resume.
6. **Check consistency and voice.** Verify that the revised material agrees with the source, has no unsupported claims, follows the format and length guidance, and contains none of the phrases listed under Voice. Rewrite any sentence that sounds generic or machine-written.

## Writing Guidance

### Voice

- Write in plain, specific, confident language, the way the candidate would explain their work to a respected peer.
- Avoid clichés and AI-sounding phrases, such as: "I am thrilled/excited to apply", "passionate about", "results-driven", "dynamic", "detail-oriented team player", "leverage", "spearheaded", "synergy", "proven track record", "in today's fast-paced world", "I believe I would be a great fit", "delve", "elevate", and "unlock".
- Prefer concrete facts over adjectives: what the candidate built, changed, or decided, for whom, and what happened.
- Vary sentence openings and length. Do not start every bullet or paragraph the same way.

### Resume Bullets

- Use the pattern **action + scope + result**: a strong verb, what was done and at what scale, and the outcome. Example shape: "Redesigned the order intake API used by 40 partner systems, cutting average processing time from 2 days to 4 hours."
- Include numbers only when the candidate supplied or confirmed them; otherwise use a placeholder such as `[confirm %]` or describe the outcome qualitatively.
- Make the candidate's own contribution clear, distinct from the team's.
- Keep bullets to one or two lines.

### Screening-Friendly Formatting

- Use a simple single-column layout with standard section headings (for example Summary, Experience, Skills, Education, Certifications).
- Avoid tables, text boxes, columns, graphics, icons, and headers or footers that hold key information, because applicant tracking systems may not read them.
- Use consistent date formats and job title formatting.

### Cover Letters

- Default to about 250 to 350 words in three or four short paragraphs, unless the user or posting specifies otherwise.
- Open with the specific role and one concrete reason the candidate fits, not with a generic greeting line about excitement.
- Use the middle to connect two or three of the candidate's real achievements to the role's top priorities.
- Close briefly with a clear, polite next step. Do not repeat the resume.

### Country Conventions

- Follow the norms of the country where the role is based. For example, US resumes usually omit photos, date of birth, marital status, and other personal details; UK and some other countries use a "CV" with different length and content expectations.
- If the country is unclear, follow the candidate's existing format and mention the assumption.

## Output

Present the result in portable Markdown (headings, lists, and plain text only; no HTML or platform-specific syntax):

1. **Tailored Material** — the revised resume section, cover letter, or application response, ready to copy.
2. **Key Changes** — a short list of what changed and why.
3. **Facts to Confirm** — placeholders or claims the candidate must verify before using.

If the user supplied only a job description and no candidate material, ask for the document or offer a clearly labeled blank structure; do not write candidate achievements from scratch.

## Example

**Input:** Resume bullet "Worked on the payments API and made it faster." Job description emphasizes API performance and observability.

**Output (trimmed):**

> **Tailored Material**
> - Improved response times on the payments API by [confirm %] by [confirm change, for example adding caching or tuning queries], and added dashboards to track latency.
>
> **Key Changes**
> - Led with the outcome the role cares about (performance).
> - Added observability only as a placeholder to confirm, because the role asks for it.
>
> **Facts to Confirm**
> - The percentage improvement and what you actually changed.
> - Whether you built the latency dashboards. If not, remove that part.

## Limits

- **Needs:** the candidate's current resume, cover letter, or answer, plus the job description (text or an accessible link).
- **Won't:** invent or inflate skills, titles, dates, metrics, or credentials; write achievements from scratch; design visual templates; or guarantee that a document will pass screening.
