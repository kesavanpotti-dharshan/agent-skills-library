---
name: interview-learning-roadmap
description: Analyze a job description or job posting link and create a prioritized, role-specific learning roadmap for interview preparation, including the interview areas the role's seniority suggests. Use when a candidate has only the job description and wants to know what to study; to compare their resume with the job, use resume-role-fit, and to find courses for a topic, use course-finder.
argument-hint: "[job description text or link] [optional: time until the interview]"
license: MIT
version: 1.0.0
---

# Interview Learning Roadmap

Create a focused learning plan from the role's job description. This skill is job-description-driven: do not ask for or assess a resume, portfolio, candidate profile, or personal skill gaps. Do not imply that the roadmap guarantees interview coverage or predicts exact interview questions.

## Workflow

1. **Get the job description.** Accept pasted text or a job-posting link. If a link is provided, retrieve the posting when browsing or webpage tools are available. If it cannot be accessed, is incomplete, or redirects to a generic page, ask the user to paste the job description. Do not substitute assumptions based on the employer name or job title alone.
2. **Summarize the role.** Identify the title, seniority, core responsibilities, required and preferred qualifications, technologies, domain knowledge, and recurring themes. Keep the summary grounded in the posting.
3. **Build learning areas.** Cluster related requirements into coherent topics rather than listing every keyword separately. Include technical, domain, architecture, operational, leadership, or collaboration topics only when supported by the role. Use the industry context the posting calls for; do not force a domain onto a role that does not mention it.
4. **Label evidence and priority.** Mark each topic as **Explicit** when stated in the posting or **Inferred** when it is a reasonable implication. Rank topics as **Core** or **Secondary** based on prominence and importance to the responsibilities. Give a short rationale tied to the posting, quoting or paraphrasing the relevant requirement.
5. **Define learning outcomes.** For each topic, specify what the candidate should learn and be ready to explain or apply in an interview. Suggest useful discussion angles, such as fundamentals, design choices, trade-offs, troubleshooting, or domain application, when appropriate. Present these as preparation guidance, not predictions of exact questions.
6. **Identify likely interview areas.** Based on the role's seniority and responsibilities, list the interview types the candidate should prepare for, such as coding, system design, architecture deep dive, domain discussion, behavioral, or leadership. For senior, staff, lead, principal, or architect roles, give system design, architecture trade-offs, and leadership or influence their due weight. Mark this section as **Inferred** unless the posting describes the interview process, and do not claim any round will definitely happen.
7. **Sequence the roadmap.** Order the topics from prerequisites and fundamentals to applied and role-specific material. Do not invent study-hour estimates or deadlines. If the user provides a time budget or interview date, use it to suggest a realistic sequence and scope without changing the evidence-based priorities.
8. **State uncertainty.** Note inaccessible sources, ambiguous requirements, and meaningful assumptions. Keep inferred topics visibly distinct from explicit job requirements.

## Output

Present the roadmap in portable Markdown (headings, lists, and tables only; no HTML or platform-specific syntax) so it can be saved or shared. Use these numbered sections:

1. **Role at a Glance** — title and seniority when available, and the main capability the posting emphasizes.
2. **Prioritized Learning Areas** — a table or list showing, for each area: priority, evidence label, why it matters, learning scope, and interview-readiness outcome.
3. **Likely Interview Areas (Inferred)** — the interview types to prepare for and what each is likely to test at this seniority.
4. **Suggested Study Sequence** — an ordered path through the topics, noting dependencies where useful.
5. **Source Notes** — brief caveats about missing or inaccessible job-post details, if any.

Avoid dumping a generic interview syllabus. Omit topics not supported by the posting unless clearly labeled as a limited inference. Do not claim that any topic will definitely be asked in an interview.

## Example

**Input:** "Senior Backend Engineer. Design and operate event-driven services on Kafka. PostgreSQL experience required. Mentor other engineers. Participate in on-call."

**Output (trimmed):**

> **1. Role at a Glance** — Senior backend role focused on building and running event-driven services.
>
> **2. Prioritized Learning Areas**
>
> | Area | Priority | Evidence | Why it matters | Ready when you can… |
> | --- | --- | --- | --- | --- |
> | Event-driven design with Kafka | Core | Explicit | "design and operate event-driven services on Kafka" | Explain partitions, consumer groups, and delivery guarantees, and their trade-offs |
> | Production operations and incidents | Secondary | Explicit | "participate in on-call" | Walk through how you would diagnose a lagging consumer |
> | System design | Core | Inferred | Senior scope implies design rounds | Design a service end to end and defend the trade-offs |
>
> **3. Likely Interview Areas (Inferred)** — system design, a technical deep dive on event-driven systems, and behavioral questions on mentoring. …

## Limits

- **Needs:** the job description as text, or a link the agent can open.
- **Won't:** ask for or assess a resume, predict exact interview questions, or invent study-hour estimates.
