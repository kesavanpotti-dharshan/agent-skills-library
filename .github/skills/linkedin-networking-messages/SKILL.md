---
name: linkedin-networking-messages
description: Write short, personal LinkedIn networking messages for a specific person, including connection notes within the invitation character limit, follow-ups, referral requests, informational chat requests, recruiter replies, thank-you notes, and reconnect messages. Use when the user shares a LinkedIn profile (URL plus pasted profile details) and wants a message to send to that person.
argument-hint: '[profile URL and pasted profile details] [message type or goal]'
---

# LinkedIn Networking Messages

Write one-to-one LinkedIn messages that sound like a real person reaching out for a real reason. Each message is drafted for the user to review and send themselves.

## Inputs

1. **The recipient.** A LinkedIn profile URL plus the relevant profile details pasted by the user: name, headline, current role and company, About section, a recent post, or any shared background (same school, former employer, community, or topic).
   - LinkedIn profiles are mostly visible only to signed-in users, and LinkedIn's User Agreement prohibits scraping. Do not try to scrape or log in to LinkedIn. If only a URL is given and the details cannot be read from a public page, ask the user to paste the relevant parts instead of guessing.
2. **The goal or message type.** If unclear, infer it from context; ask only when the choice would change the message substantially.
3. **The sender's background.** Read it from the sender profile file (see Sender Profile). If the user gives details in the request, those take precedence.

## Sender Profile

Look for the sender's background in this order:

1. A path the user names in the request.
2. The default file `~/.agent-skills/networking-profile.md`.

If the file is missing, ask the user to paste a few lines about themselves, and offer to create the file from the template below. Only create or change the file when the user agrees, and never copy its contents into this skill or any repository.

Template for `networking-profile.md`:

```markdown
# Networking Profile

- Name:
- Current role and company:
- Years of experience:
- Domains and industries:
- Core skills and technologies:
- Target roles or companies:
- Notable work I'm happy to mention:
- Location and time zone:
- Communities, schools, or past employers I'm happy to mention:
- How I like to sign off:
```

## Message Types

| Type | Purpose | Guidance |
| ---- | ------- | -------- |
| **Connection note** | First contact with an invitation | One specific reason for connecting and a light close. No asks for referrals, jobs, or calls. Must fit the invitation note limit. |
| **Follow-up after accepting** | Start a real conversation | Thank briefly, add one relevant point or question, and keep it easy to reply to. |
| **Referral request** | Ask someone at a target company for a referral | Only after some prior contact, unless the user insists. Name the exact role and job link, show fit in one or two lines, and make it easy to say no. |
| **Informational chat request** | Ask for 15 to 20 minutes to learn about a role, team, or path | Say what you want to learn and why them; offer flexible timing; keep the ask small. |
| **Recruiter reply** | Respond to a recruiter's message | Interested, not interested, or "not now, keep in touch". Be clear about fit and next steps. |
| **Thank-you note** | After a call, referral, interview, or help | Specific about what helped; no new ask. |
| **Reconnect** | Former colleague, classmate, or contact | Reference the shared history naturally and give a genuine reason for getting back in touch. |

## Character Limits

- LinkedIn limits the length and number of personalized invitation notes, and the limits differ between free and Premium accounts and change over time. When web research is available, verify the current limits on LinkedIn's official help pages. Otherwise, treat 300 characters as the maximum and say the limit was not live-verified.
- For connection notes, always provide a version under 300 characters and a shorter version under 200 characters, so one fits regardless of account type.
- Count characters with a reliable tool, including spaces, punctuation, and line breaks. Recount after every edit and never claim an unverified count.

## Voice

- Write like a friendly professional talking to a peer: plain words, short sentences, contractions, and no corporate filler.
- Open with the reason, not with "I hope this message finds you well" or "I came across your profile".
- Avoid AI-sounding words and patterns, such as delve, leverage, unlock, elevate, synergy, "I'd love to pick your brain", "I'm reaching out because", "It's not just X, it's Y", and stacks of compliments.
- One emoji at most, and usually none.
- Use the recipient's first name. Do not use titles like "Dear Sir/Madam".

## Honesty and Etiquette

- Use only facts from the pasted profile and the sender profile. Never claim the sender read a post, attended an event, shares an interest, or knows someone unless the user said so.
- Make one clear, small ask per message, or none for a connection note.
- Do not flatter, exaggerate the sender's experience, or pressure the recipient.
- Write one message at a time for the user to send manually. Do not help with bulk messaging, automation, or templated mass outreach, which can break LinkedIn's rules and get accounts restricted.

## Output

1. **Two or three versions** of the message, each in its own copyable block, with a short label (for example "Direct", "Warm", "Shared background").
2. **Character count** for each version, and the limit it was checked against (marked **verified** or **not live-verified**).
3. **Suggested follow-up** — when to follow up if there is no reply (for example, once after 7 to 10 days), and a one-line follow-up message. Never suggest more than one follow-up.
4. **Assumptions** — only if something important was inferred.
