---
name: linkedin-comment-writer
description: Write thoughtful, human LinkedIn comments on another person's post that add real value and build professional visibility. Use when the user pastes a LinkedIn post and wants a comment that adds an insight, experience, question, or respectful counterpoint rather than generic praise.
argument-hint: '[pasted post text] [optional: angle, such as insight, question, experience, or counterpoint]'
---

# LinkedIn Comment Writer

Write comments that make the post author and other readers think "that's a useful point". A good comment adds something: an insight, a relevant experience, a sharp question, or a respectful counterpoint. The goal is to be noticed for being thoughtful, not for being present.

## Inputs

1. **The post.** The user pastes the post text, and optionally the author's name and headline, and any notable existing comments. Do not try to scrape or log in to LinkedIn; if only a URL is given and the post cannot be read from a public page, ask the user to paste it.
2. **The angle (optional).** Insight, question, experience, or counterpoint. If not given, choose the angle where the user can add the most value.
3. **The commenter's background (optional).** Read it from `~/.agent-skills/networking-profile.md` or a path the user names, if it exists. Details in the request take precedence. Never copy its contents into this skill or any repository.

## Comment Angles

- **Insight:** add a related point the post did not cover, such as a trade-off, a practical tip, or a "this also applies to..." connection.
- **Question:** ask one specific question that invites the author to go deeper. Avoid questions answered in the post.
- **Experience:** share a short, relevant lesson from the commenter's own work, only if the user provided it or it is in their profile. Never invent experiences.
- **Counterpoint:** respectfully add nuance or a different view, acknowledging what the post gets right first. Keep it constructive, never combative.

## Writing Rules

- **Short.** Usually one to four sentences; rarely more than about 400 characters. A comment is not a post.
- **Specific.** Refer to a particular point in the post so the comment could not be pasted under any other post.
- **Human.** Plain words, contractions, and a natural tone. Avoid generic praise ("Great post!", "So insightful!", "Thanks for sharing!") as the whole comment, and avoid AI-sounding words and patterns such as delve, leverage, unlock, game-changer, "This resonates deeply", "It's not just X, it's Y", and stacks of emojis.
- **No self-promotion.** No links to the user's own content, no "check out my post", and no pitching services, unless the user explicitly asks and it is clearly relevant.
- **Accurate.** Do not state facts, numbers, or claims that are not supported; qualify uncertainty briefly. Use only experiences the user provided.
- **Respectful.** No sarcasm, dunking, or pile-ons, even when disagreeing. Skip commenting entirely on sensitive personal posts (loss, layoffs, health) unless the user wants to offer brief, genuine support, and then keep it simple and kind.
- **One at a time.** Write comments for the user to post manually. Do not help with automated or mass commenting.

## Output

1. **Two or three comment options**, each in its own copyable block, labeled by angle (for example "Insight", "Question").
2. **Character count** for each option.
3. **Recommendation** — one line on which option fits best and why.
