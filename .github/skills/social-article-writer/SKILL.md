---
name: social-article-writer
description: Create a publish-ready article, post, thread, or caption from a user-provided topic for LinkedIn, Substack, Medium, Threads, X, or Instagram, written in a warm, plain-language, human voice with light humor and everyday examples. Use when the user wants social media or blog content on a topic; adapts structure, tone, and length to the platform, verifies current limits when possible, and reports content counts. To comment on someone else's LinkedIn post, use linkedin-comment-writer.
argument-hint: '[topic] [LinkedIn, Substack, Medium, Threads, X, or Instagram]'
license: MIT
version: 1.0.0
---

# Social Article Writer

Create original, useful content from two required inputs: **topic/article subject** and **social media platform**. Adapt the content to the platform's native format and audience expectations. Do not require the user to provide a target audience, tone, length, or paragraph count; make sensible platform-appropriate choices and state notable assumptions briefly.

Anything the user specifies about tone, audience, style, length, or language takes precedence over the defaults in this skill. For example, if the user asks for a formal post, drop the humor; if they name an expert audience, pitch the depth to that audience.

## Workflow

1. **Confirm the two inputs.** Accept the topic and one of these platforms: LinkedIn, Substack, Medium, Threads (Meta), X, or Instagram. Interpret "Thread" as Threads (Meta). If either required input is missing or ambiguous, ask only for that missing detail.
2. **Choose the native format.** Do not force every output into a long-form article. Use a LinkedIn feed post, Substack newsletter article, Medium article, Threads post or connected post series, X post or thread, or Instagram caption as appropriate. For Threads, use a connected series only when the topic needs multiple posts. For X, prefer a thread when needed to explain the topic within individual post limits.
3. **Check current platform constraints.** When web research is available, verify applicable character limits, post/thread behavior, and relevant publishing restrictions using current official platform documentation or help pages. Treat limits as changeable and distinguish hard limits from editorial recommendations. Do not rely on remembered limits as current facts. If current verification is unavailable, use conservative lengths and clearly say that live platform limits were not verified; never claim guaranteed publishability in that case.
4. **Set a suitable scope.** Choose a clear angle, the likely reader, and a platform-appropriate default length, paragraph count, and structure. Keep the article focused on the supplied subject. If the topic depends on current or specialized facts, verify material claims when reliable sources are available; otherwise qualify uncertainty and do not fabricate facts, quotations, statistics, or citations.
5. **Draft for the platform.** Write a strong opening and headline (see Headlines and Openings), a coherent progression, and a useful close. Follow the Language and Voice rules and [references/platform-formats.md](references/platform-formats.md). Avoid generic filler, engagement bait, keyword stuffing, and repetitive calls to action. Add hashtags only when they fit the platform and topic.
6. **Do a voice pass.** Reread the draft as the reader would. Remove filler words and AI-sounding patterns listed in [references/voice-guide.md](references/voice-guide.md), simplify technical wording, cut sentences nobody would actually say, and check that humor fits the topic and platform. Make sure it reads like a person wrote it.
7. **Validate length and counts.** Check the text that will actually be published. Count characters including spaces and punctuation for each constrained post/caption, and count words and paragraphs for long-form formats. Include titles, numbering, hashtags, and other text in a count when the platform counts them. For a thread, count each post separately. Use a reliable counting tool when available; otherwise do not claim exact counts that have not been checked. Revise to fit verified limits, then recount after the final edit.
8. **Separate copy from notes.** Present the publish-ready content in a clean copyable block. Put alternative openings, count details, limit-verification status, sources, and assumptions outside the content so they are not accidentally pasted into the post.

## Language and Voice

Write the way a smart, friendly person talks to a friend over coffee, not the way a manual or a press release reads. The reader should feel like a person wrote this for them, and should understand it on the first read.

- **Mix the three tones.** Be **professional** enough to trust, **normal** enough to read without effort, and **funny** in small, natural doses: a light joke, a playful line, a bit of self-aware humor. Humor should support the point, never replace it, and should never punch down. Ease off the jokes for serious or sensitive topics (health, grief, layoffs, money trouble) and stay warm instead. Adjust the balance per platform (see [references/platform-formats.md](references/platform-formats.md)).
- **Keep it simple, not technical.** Use everyday words. If a technical term is unavoidable, explain it right away in plain language. Prefer short sentences and active voice. For general topics, aim for something a curious 15-year-old could follow. For inherently technical topics or expert audiences, keep the words plain and the jargon explained, but match the depth to the likely reader so it never feels condescending.
- **Explain with daily life.** When an idea is abstract, tie it to something familiar: cooking, commuting, groceries, a messy closet, a group chat, a phone running out of battery, waiting in line for coffee. For example, explain compound interest as a snowball rolling downhill, or a budget as packing a suitcase with limited space. Use one good example rather than several weak ones, and only where it actually helps understanding.
- **Sound human.** Write with a real point of view. Vary sentence length. Use contractions (it's, you'll, don't). Ask the reader an honest question now and then. Small, specific details beat big general claims. Never invent personal stories, experiences, or quotes and present them as the author's own; when an anecdote would help, use a clearly hypothetical one ("Picture this...") or leave a placeholder for the user to fill in.
- **Remove AI-sounding words and patterns.** Read [references/voice-guide.md](references/voice-guide.md) during the voice pass (workflow step 6). It lists filler words and patterns to cut, and when a listed word is still the right choice.
- **Read it out loud (mentally).** If a sentence sounds like something nobody would actually say, rewrite it until it does.
- **Match the user's language and spelling.** Write in the language the user writes in, or the one they request. In other languages, apply the same principles: avoid that language's equivalent filler and stock phrases rather than translating the list above word for word, and use culturally familiar everyday examples. Follow the user's spelling convention (for example, US or UK English); if unclear, use the convention of their request.

## Headlines and Openings

- Open with something concrete: a specific moment, a relatable problem, a surprising fact, or a clear claim. The first line should make the right reader think "that's me."
- Write headlines that promise exactly what the piece delivers. No clickbait, fake urgency, or "You won't believe..." framing.
- Avoid warm-up sentences. If the first paragraph could be deleted without losing anything, delete it.

## Platform Formats

Read [references/platform-formats.md](references/platform-formats.md) once the platform is known, before drafting. It covers the default format, structure, and tone for LinkedIn, Substack, Medium, Threads, X, and Instagram.

## Accessibility

- Capitalize each word in multi-word hashtags (#PersonalFinance, not #personalfinance) so screen readers pronounce them correctly.
- Do not let emojis carry meaning on their own, and keep them out of the middle of sentences where they interrupt screen readers.
- When suggesting images or slides, offer short alt text if it would help the user.

## Output

1. **Publish-ready content** — include a suitable headline or opening and platform-native formatting.
2. **Alternative openings** — offer two or three alternative hooks or headlines outside the copy block so the user can swap one in.
3. **Validation summary** — report the verified platform limit when checked, actual character count per constrained post/caption, word count for long-form pieces, and paragraph count when meaningful. Mark limits as **verified** or **not live-verified**; do not substitute an unverified estimate for an exact count.
4. **Sources and assumptions** — include only when research informed factual claims or when a platform constraint could not be verified. Keep citations outside the copy unless the platform format calls for inline links.

The user's topic and selected platform are sufficient to produce a useful first draft. Do not block on optional preferences; make reasonable choices and deliver the content.

## Example

**Input:** "Topic: why an emergency fund matters. Platform: Threads."

**Output (trimmed):**

> ```
> Your emergency fund is the spare tire of your money life.
>
> Nobody gets excited about a spare tire. But the day you get a flat on the highway, it's the only thing you care about.
>
> Start small. One month of essential costs beats zero months. Then build from there.
>
> What would a surprise $500 bill do to your month?
> ```
>
> **Alternative openings** — "Nobody brags about their emergency fund. Everybody wishes they had one." …
>
> **Validation summary** — 313 characters. Threads per-post limit: [verified value and source, or **not live-verified**].

## Limits

- **Needs:** a topic and a platform. Web research is used to verify current platform limits and any factual claims; without it, limits are marked **not live-verified** and lengths stay conservative.
- **Won't:** publish or schedule posts, invent statistics, quotes, citations, or personal stories, or create images (use topic-diagram-creator for visuals).
