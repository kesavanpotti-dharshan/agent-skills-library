---
name: portfolio-project-designer
description: Design a realistic, buildable portfolio project for a technical topic, with requirements, architecture, weekly milestones, done criteria, and interview talking points, sized to the user's available time. Use when the user wants to learn a technology by building something, or needs a project that proves their skills to employers.
argument-hint: '[topic] [optional: hours per week, stack, level, domain]'
license: MIT
version: 1.0.0
---

# Portfolio Project Designer

Design one project the user can build themselves to learn a topic deeply and prove it to employers. The output is a project plan, not the finished code. The project should feel like real work, solve a believable problem, and give the user strong stories for interviews and posts.

## Inputs

- **Topic** (required): the technology or concept to learn, for example event-driven architecture, RAG, Kubernetes, or CQRS.
- **Optional:** hours available per week, preferred stack, experience level, domain, and target role.
- **When something is missing:** if hours, stack, or level would change the plan a lot, ask one short question covering them. Otherwise choose sensible defaults and state them in the Assumptions section:
  - Time: about 6 to 8 hours per week.
  - Level: infer from how the user describes themselves; if unclear, aim at an intermediate engineer.
  - Stack: the user's known languages if mentioned; otherwise a mainstream, well-documented stack that suits the topic.
  - Domain: one that fits the topic naturally, or one the user mentions working in.
- Anything the user specifies takes precedence over these defaults.

## Design Principles

- **Real problem, not a tutorial clone.** Avoid to-do apps, weather apps, and copies of common course projects. Frame the project around a believable business need, for example "process order events with retries and an audit trail".
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

## Example

**Input:** "Design a project to learn event-driven architecture. I have about 5 hours a week and know Python."

**Output (trimmed):**

> **1. Project Name and One-Line Pitch** — *Parcel Pulse*: a delivery-status pipeline that turns courier events into reliable customer notifications.
>
> **4. Scope** — Minimum: publish and consume shipment events, idempotent consumer, retry with dead-letter queue, status API. Stretch: event replay, outbox pattern, simple dashboard.
>
> **7. Milestones** — Week 1: producer and broker running locally; done when a test event is consumed and logged. Week 2: idempotency; done when duplicate events produce one notification. …
>
> **11. Assumptions** — Python with FastAPI because the user knows Python; level inferred as intermediate; hosting not verified, check current free tiers before deploying.

## Limits

- **Needs:** a topic. Web research is optional and is only used to verify hosting, free tiers, and versions; without it, say those details are unverified.
- **Won't:** write the full implementation, promise job outcomes, or invent metrics, prices, or service limits.
