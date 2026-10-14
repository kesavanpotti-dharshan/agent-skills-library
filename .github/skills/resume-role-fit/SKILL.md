---
name: resume-role-fit
description: Compare a candidate-provided resume with a job description to identify evidence-backed strengths, seniority and scope alignment, missing keywords, hard requirements to check, and gaps to address. Use for resume-to-job fit analysis and role alignment. Do not invent qualifications or rewrite the resume unless asked.
argument-hint: "[resume and job description or link]"
---

# Resume-to-Role Fit

Assess how the candidate's provided experience aligns with a specific job description. Treat the resume and job description as the only evidence about the candidate and role; do not infer unstated skills or treat missing resume details as proof that the candidate lacks a capability.

## Workflow

1. **Collect inputs.** Ask for the resume and job description, or a job link plus resume. If the posting link cannot be accessed, ask for its text. The candidate may redact contact details and other personal information; do not request sensitive identifiers.
2. **Extract role criteria.** Separate responsibilities, required qualifications, preferred qualifications, technologies, domain knowledge, and seniority signals. Identify which criteria appear central versus secondary.
3. **Flag hard requirements.** List knockout-style requirements separately, such as work authorization or sponsorship statements, location or on-site expectations, security clearance, required certifications, and minimum years of experience. Present them as items for the candidate to check. Never assume the candidate's work authorization, citizenship, location, or other personal circumstances.
4. **Map evidence.** For each important criterion, point to specific resume evidence when present. Classify it as **Strong evidence**, **Partial/adjacent evidence**, **Not shown**, or **Unclear**. "Not shown" means absent from the supplied resume, not necessarily absent from the candidate's experience.
5. **Check seniority and scope.** Compare the scope the resume demonstrates with the scope the role expects: size and complexity of systems, ownership of decisions, team leadership or mentoring, cross-team influence, and business impact. For senior, staff, lead, principal, or architect roles, look specifically for evidence of architecture ownership, technical direction, and influence beyond the candidate's own work. Scope gaps are often more important than missing technologies; call them out clearly.
6. **List missing keywords.** Identify important terms from the posting (technologies, methods, domain terms, and role titles) that the resume does not use. Recruiters and applicant tracking systems often screen on these terms. Present them as candidates to add only where they truthfully describe the candidate's experience, never as words to insert regardless.
7. **Summarize alignment.** Describe the strongest matches, the most material gaps or evidence gaps, and any role requirements that are ambiguous. Avoid unsupported numerical fit scores; if the user requests a score, explain its subjective limits and show the criteria behind it.
8. **Recommend honest next actions.** Suggest which existing examples to clarify, what relevant experience the candidate may want to add if accurate, and what topics to learn. Never fabricate credentials, tools, responsibilities, outcomes, or metrics.

## Output

Present the analysis in portable Markdown (headings, lists, and tables only; no HTML or platform-specific syntax) with these numbered sections:

1. **Role Summary** — title, seniority, and the main capabilities the role emphasizes.
2. **Hard Requirements to Check** — knockout-style requirements, stated neutrally.
3. **Evidence-to-Requirement Table** — criterion, required or preferred, evidence classification, and the resume evidence or note.
4. **Seniority and Scope Alignment** — how the demonstrated scope compares with the expected scope.
5. **Missing Keywords** — important posting terms not in the resume, to add only if true.
6. **Key Strengths**
7. **Gaps and Unclear Areas**
8. **Next Steps** — practical, honest actions.

Distinguish job requirements from preferences and candidate evidence from interpretation. Do not guarantee screening or interview outcomes. Only rewrite application materials when the candidate asks.
