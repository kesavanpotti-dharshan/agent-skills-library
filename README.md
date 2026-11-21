# agent-skills-library

Seventeen standalone agent skills for learning, interview preparation, job searching, and professional writing. Each skill is a single `SKILL.md` file (plus an optional `references/` folder) that tells an AI agent how to do one job well: design a portfolio project, turn a job description into a study plan, run a mock interview, tailor a resume without inventing facts, or write a LinkedIn message that sounds like a person. Every skill states its assumptions, checks live facts such as prices and platform limits when it can, and never makes up experience, numbers, or sources.

## Skills

| Skill | What it does | Try saying |
| --- | --- | --- |
| [`behavioral-story-coach`](.github/skills/behavioral-story-coach/SKILL.md) | Shapes your real experiences into clear behavioral interview stories and a story bank. | "Help me answer 'Tell me about a time you disagreed with a teammate.'" |
| [`course-finder`](.github/skills/course-finder/SKILL.md) | Finds free, low-cost, and university-backed courses for a topic, with live-checked prices. | "Find beginner Kubernetes courses under $50." |
| [`flashcard-reviser`](.github/skills/flashcard-reviser/SKILL.md) | Turns a topic or your notes into flashcards with an Anki export, plus an optional quiz. | "Make 20 flashcards on HTTP caching and quiz me." |
| [`how-it-works`](.github/skills/how-it-works/SKILL.md) | Explains how a technology, product, or process works behind the scenes, pitched to your profession and depth. | "How does tapping my card at a shop work? I'm a nurse, beginner level." |
| [`ideate`](.github/skills/ideate/SKILL.md) | Challenges a product or side-project idea with a scorecard and verdict, or, in "Make it real" mode, lays out how to build and sell it. | "Is an app that reminds people to cancel free trials worth building?" |
| [`interview-learning-roadmap`](.github/skills/interview-learning-roadmap/SKILL.md) | Turns a job description into a prioritized study plan for interviews. | "Here's a job posting. What should I study?" |
| [`job-application-tracker`](.github/skills/job-application-tracker/SKILL.md) | Syncs job emails into a private tracker, flags follow-ups, and drafts replies. | "Sync my job emails from the last two weeks." |
| [`job-search-strategy`](.github/skills/job-search-strategy/SKILL.md) | Builds a job-search plan: target roles, search terms, referrals, routine, and scam checks. | "Plan my search for remote data engineer roles." |
| [`linkedin-comment-writer`](.github/skills/linkedin-comment-writer/SKILL.md) | Writes thoughtful comments on someone else's LinkedIn post. | "Write a comment on this post that adds something useful." |
| [`linkedin-networking-messages`](.github/skills/linkedin-networking-messages/SKILL.md) | Writes one-to-one LinkedIn connection notes, follow-ups, and referral requests. | "Write a connection note to this engineering manager." |
| [`mock-interview-coach`](.github/skills/mock-interview-coach/SKILL.md) | Runs an interactive mock interview with a rubric and a session summary. | "Give me a 45-minute system design mock interview." |
| [`portfolio-project-designer`](.github/skills/portfolio-project-designer/SKILL.md) | Designs a buildable portfolio project with architecture, milestones, and talking points. | "Design a project to learn event-driven architecture in 5 hours a week." |
| [`resume-cover-letter-tailoring`](.github/skills/resume-cover-letter-tailoring/SKILL.md) | Tailors your resume or cover letter to a job without inventing facts. | "Tailor my resume to this job description." |
| [`resume-role-fit`](.github/skills/resume-role-fit/SKILL.md) | Compares your resume with a job description and shows strengths and gaps. | "How well does my resume fit this role?" |
| [`social-article-writer`](.github/skills/social-article-writer/SKILL.md) | Writes a post or article for LinkedIn, Substack, Medium, Threads, X, or Instagram. | "Write a LinkedIn post about why emergency funds matter." |
| [`tech-topic-notes`](.github/skills/tech-topic-notes/SKILL.md) | Writes complete Markdown study notes on a technical topic, from basics to interview prep. | "Write study notes on database indexing." |
| [`topic-diagram-creator`](.github/skills/topic-diagram-creator/SKILL.md) | Renders a technical topic as a PNG, carousel, GIF, or MP4 diagram. | "Make a diagram of the OAuth 2.0 authorization code flow." |

Some skills overlap on purpose. Each one's description says when to use it and when to use its neighbor instead (for example `resume-role-fit` to assess, `resume-cover-letter-tailoring` to rewrite).

## Install

Each skill is a folder: `<skill-name>/SKILL.md`, plus `references/` for a few skills. Copy the whole folder and keep the folder name the same as the `name` field in `SKILL.md`.

- **GitHub Copilot in VS Code:** copy the skill folder into your repository's `.github/skills/` directory. The skill appears in the Chat slash-command menu and under **Chat: Open Customizations → Skills**.
- **Claude Code:** copy the skill folder into `~/.claude/skills/` (all projects) or `.claude/skills/` in a repository (that project only).
- **Apps that accept skill uploads as a zip:** run `scripts/package.sh` and upload the matching file from `dist/`.

### Build zip files

```bash
./scripts/package.sh
```

This writes one zip per skill to `dist/<skill-name>.zip`, containing `SKILL.md` and `references/` when present.

## Usage

Ask for the task in plain words (see "Try saying" above) or invoke a skill by name, for example `/portfolio-project-designer event-driven architecture`. Each skill's `argument-hint` shows the inputs it accepts. Optional inputs can be skipped: the skill picks sensible defaults and tells you what it assumed.

Some skills work better with extra tools:

- **Web search** lets skills verify prices, platform limits, competitors, and sources. Without it, they mark those details as not live-verified.
- **Gmail connector** lets `job-application-tracker` search your inbox and save drafts. Without it, paste the emails into the chat instead.
- **Code execution** lets `topic-diagram-creator` render images. Without it, you get the diagram source and the command to render it.

### Private files

Two skills read or write files in `~/.agent-skills/`, a folder in your home directory, outside any repository:

- `~/.agent-skills/job-tracker.csv`: the tracker used by `job-application-tracker` (or a Google Sheet, if you prefer).
- `~/.agent-skills/networking-profile.md`: your background, used by `linkedin-networking-messages` and `linkedin-comment-writer`.

Both are created only after you agree. Neither is ever written into a repository.

## Testing

[`tests/prompts.md`](tests/prompts.md) lists two or three test prompts per skill and what a good result must contain. Run them after changing a skill.

## License

[MIT](LICENSE)
