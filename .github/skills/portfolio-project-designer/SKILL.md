---
name: portfolio-project-designer
description: Design a realistic, buildable portfolio project for a technical topic, with requirements, architecture, weekly milestones, done criteria, and interview talking points, sized to the user's available time. Use when the user wants to learn a technology by building something, or needs a project that proves their skills to employers.
argument-hint: '[topic] [optional: hours per week, stack, level, domain]'
---

# Portfolio Project Designer

Design one project the user can build themselves to learn a topic deeply and prove it to employers. The output is a project plan, not the finished code. The project should feel like real work, solve a believable problem, and give the user strong stories for interviews and posts.

## Inputs

- **Topic** (required): the technology or concept to learn, for example event-driven architecture, RAG, Kubernetes, or CQRS.
- **Optional:** hours available per week, preferred stack, experience level, domain, and target role.
- **Defaults when not given:** about 6 to 8 hours per week; an experienced engineer targeting senior, lead, or architect roles; C#/.NET for the backend, React with TypeScript for the frontend, and PostgreSQL for data, unless the topic clearly calls for something else; a Banking, Insurance, or Finance problem domain when it fits naturally. Anything the user specifies takes precedence. State assumptions briefly at the end.

## Design Principles

- **Real problem, not a tutorial clone.** Avoid to-do apps, weather apps, and copies of common course projects. Frame the project around a believable business need, for example "process insurance claims events with retries and an audit trail".
- **The topic is the core.** The project must exercise the topic's hard parts, such as failure handling, scaling, consistency, security, or evaluation, not just its happy path.
- **Small enough to finish.** Define a minimum version the user can complete in the available time, then stretch goals. A finished small project beats an abandoned big one.
- **Production habits.** Include testing, logging, basic monitoring, configuration, and a simple deployment, scaled to the project size.
- **Honest choices.** Explain why each technology was chosen and name a reasonable alternative. Do not add technologies that are not needed.
- **Verify what changes.** When suggesting hosting, free tiers, managed services, or library versions, verify them with web research when available, because offers and versions change. If not verified, say so.

## Output

Present the plan in portable Markdown with these sections:

1. **Project Name and One-Line Pitch**
2. **The Problem** — the business scenario, who has the problem, and why it matters.
3. **What You Will Learn** — the specific skills and concepts the project exercises.
4. **Scope** — the minimum version (must-have features) and stretch goals, as two lists.
5. **Architecture** — a plain-text diagram in a fenced code block, the main components and their responsibilities, and the data flow.
6. **Tech Choices** — a table with Component, Choice, Why, and Alternative.
7. **Milestones** — week-by-week (or session-by-session) plan based on the available hours. Each milestone has a goal and a clear "done when" check.
8. **Quality Checklist** — tests to write, failure cases to handle, logging and monitoring to add, and security basics.
9. **Showcase** — what to publish so the project impresses: a README outline, a short architecture write-up, key design decisions, a demo (screenshots, short video, or live link), and measurable results where possible.
10. **Interview Talking Points** — three to five points the user can discuss, including a trade-off they made and something they would do differently at scale.
11. **Assumptions** — only if defaults were used for anything important.

Do not write the full implementation. Short illustrative snippets are fine when they clarify a tricky design point; label them as illustrative.
