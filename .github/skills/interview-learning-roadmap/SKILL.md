---
name: interview-learning-roadmap
description: Analyze a job description or job posting link and create a prioritized, role-specific learning roadmap for interview preparation. Use when a candidate wants to know what topics and skills to study for a role. Do not request or assess a resume, portfolio, or candidate profile.
argument-hint: "[job description text or link]"
---

# Interview Learning Roadmap

Create a focused learning plan from the role's job description. This skill is job-description-driven: do not ask for or assess a resume, portfolio, candidate profile, or personal skill gaps. Do not imply that the roadmap guarantees interview coverage or predicts exact interview questions.

## Workflow

1. **Get the job description.** Accept pasted text or a job-posting link. If a link is provided, retrieve the posting when browsing or webpage tools are available. If it cannot be accessed, is incomplete, or redirects to a generic page, ask the user to paste the job description. Do not substitute assumptions based on the employer name or job title alone.
2. **Summarize the role.** Identify the title, seniority, core responsibilities, required and preferred qualifications, technologies, domain knowledge, and recurring themes. Keep the summary grounded in the posting.
3. **Build learning areas.** Cluster related requirements into coherent topics rather than listing every keyword separately. Include technical, domain, architecture, operational, or collaboration topics only when supported by the role. Use relevant Banking, Insurance, or Finance context when the posting calls for it; do not force those domains onto other roles.
4. **Label evidence and priority.** Mark each topic as **Explicit** when stated in the posting or **Inferred** when it is a reasonable implication. Rank topics as **Core** or **Secondary** based on prominence and importance to the responsibilities. Give a short rationale tied to the posting, quoting or paraphrasing the relevant requirement.
5. **Define learning outcomes.** For each topic, specify what the candidate should learn and be ready to explain or apply in an interview. Suggest useful discussion angles, such as fundamentals, design choices, trade-offs, troubleshooting, or domain application, when appropriate. Present these as preparation guidance, not predictions of exact questions.
6. **Sequence the roadmap.** Order the topics from prerequisites and fundamentals to applied and role-specific material. Do not invent study-hour estimates or deadlines. If the user provides a time budget, use it to suggest a realistic sequence and scope without changing the evidence-based priorities.
7. **State uncertainty.** Note inaccessible sources, ambiguous requirements, and meaningful assumptions. Keep inferred topics visibly distinct from explicit job requirements.

## Output

Use a compact, scannable structure:

1. **Role at a glance** — title/seniority when available and the main capability the posting emphasizes.
2. **Prioritized learning areas** — for each, show priority, evidence label, why it matters, learning scope, and interview-readiness outcome.
3. **Suggested study sequence** — an ordered path through the topics, noting dependencies where useful.
4. **Source notes** — brief caveats about missing or inaccessible job-post details, if any.

Avoid dumping a generic interview syllabus. Omit topics not supported by the posting unless clearly labeled as a limited inference. Do not claim that any topic will definitely be asked in an interview.

If this skill is being used from the author's skills collection, optionally point to the repository README for other learning resources. This is a convenience only; the roadmap must be complete without companion skills or repository files.
