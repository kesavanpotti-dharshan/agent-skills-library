# agent-skills-library

Reusable skills for GitHub Copilot and other skills-compatible agents. Each skill lives in `.github/skills/<skill-name>/SKILL.md` and includes the workflows and context needed to use it.

## Skills

| Skill                                                                              | Purpose                                                                                                                                 |
| ---------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| [`learn-the-skill`](.github/skills/learn-the-skill/SKILL.md)                       | In-depth technology lessons, from fundamentals through architecture trade-offs, with relevant Banking, Insurance, and Finance examples. |
| [`topic-diagram-creator`](.github/skills/topic-diagram-creator/SKILL.md)           | Clear technical explanations rendered as PNG diagrams or animated GIFs, using financial-industry examples when they help.               |
| [`interview-learning-roadmap`](.github/skills/interview-learning-roadmap/SKILL.md) | Turns a job description into a prioritized learning roadmap for interview preparation.                                                  |

## Use In VS Code

Open this repository as a workspace in VS Code with GitHub Copilot Chat enabled. The skills should appear in the Chat slash-command menu. You can also open **Chat: Open Customizations** and check the **Skills** tab.

To use a skill in another repository, copy its complete skill folder into that repository's `.github/skills/` directory. Keep the folder name and the `name` field in `SKILL.md` identical.

## Verify Discovery

1. Open this repository as the VS Code workspace.
2. Check that the skills listed above appear in the Chat slash-command menu or the Skills tab in Chat Customizations.
3. Invoke a skill with a suitable request and confirm it follows the workflow in its `SKILL.md`.

## License

No license has been selected for this repository yet.
