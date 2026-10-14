# agent-skills-library

Reusable skills for GitHub Copilot and other skills-compatible agents. Each skill lives in `.github/skills/<skill-name>/SKILL.md` and includes the workflows and context needed to use it.

## Skills

| Skill                                                                                    | Purpose                                                                                                                                 |
| ---------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| [`tech-topic-notes`](.github/skills/tech-topic-notes/SKILL.md)                           | Portable Markdown study notes on technical topics, from fundamentals to internals, trade-offs, and interview prep.                      |
| [`topic-diagram-creator`](.github/skills/topic-diagram-creator/SKILL.md)                 | Turns one technical topic into a phone-readable PNG, carousel, GIF, or MP4 for learning and social posts.                               |
| [`interview-learning-roadmap`](.github/skills/interview-learning-roadmap/SKILL.md)       | Turns a job description into a prioritized learning roadmap for interview preparation.                                                  |
| [`resume-role-fit`](.github/skills/resume-role-fit/SKILL.md)                             | Compares a candidate-provided resume with a job description and identifies supported matches and gaps.                                  |
| [`resume-cover-letter-tailoring`](.github/skills/resume-cover-letter-tailoring/SKILL.md) | Tailors resume and cover-letter content to a role without inventing candidate facts.                                                    |
| [`behavioral-story-coach`](.github/skills/behavioral-story-coach/SKILL.md)               | Helps shape the candidate's real experiences into clear behavioral interview stories.                                                   |
| [`mock-interview-coach`](.github/skills/mock-interview-coach/SKILL.md)                   | Runs an interactive, role-aware mock interview and gives actionable feedback.                                                           |
| [`job-search-strategy`](.github/skills/job-search-strategy/SKILL.md)                     | Builds a practical role-targeting, job-search, and application plan around the candidate's stated preferences.                          |
| [`social-article-writer`](.github/skills/social-article-writer/SKILL.md)                 | Writes platform-formatted posts and articles in a warm, plain-language, human voice, with length and platform-limit checks.             |

## Use In VS Code

Open this repository as a workspace in VS Code with GitHub Copilot Chat enabled. The skills should appear in the Chat slash-command menu. You can also open **Chat: Open Customizations** and check the **Skills** tab.

To use a skill in another repository, copy its complete skill folder into that repository's `.github/skills/` directory. Keep the folder name and the `name` field in `SKILL.md` identical.

## Verify Discovery

1. Open this repository as the VS Code workspace.
2. Check that the skills listed above appear in the Chat slash-command menu or the Skills tab in Chat Customizations.
3. Invoke a skill with a suitable request and confirm it follows the workflow in its `SKILL.md`.

## License

No license has been selected for this repository yet.
