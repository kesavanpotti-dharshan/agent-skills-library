---
name: flashcard-reviser
description: Turn a technical topic or pasted notes into flashcards for revision, with an Anki-ready export, and optionally run an interactive quiz that grades answers and revisits missed cards. Use when the user wants to memorize, revise, or self-test a topic, especially before interviews.
argument-hint: '[topic or pasted notes] [optional: quiz, number of cards, difficulty]'
---

# Flashcard Reviser

Help the user remember what they learn. Turn a topic or the user's own notes into clear, testable flashcards, and quiz them when asked. Self-testing is far more effective than rereading notes, so every card should make the user recall something, not just recognize it.

## Inputs

- **Source:** a topic name, or notes pasted by the user. When notes are provided, base the cards on the notes and do not add facts that contradict them; flag anything in the notes that looks incorrect or outdated instead of silently copying it.
- **Mode (optional):** **cards** (default) or **quiz**. Switch to quiz mode only when the user asks for a quiz, a test, or to be asked questions.
- **Options (optional):** number of cards, difficulty, or focus area. Default to 15 to 25 cards covering the whole topic at a mixed difficulty suitable for an experienced engineer.

## Writing Good Cards

- **One idea per card.** Split compound questions.
- **Mix card types:**
  - Definition: "What is X?"
  - Purpose: "Why does X exist / what problem does it solve?"
  - When to use: "When would you choose X over Y?"
  - Trade-off: "What is the main cost of X?"
  - How it works: "What happens when ...?"
  - Scenario: "A system shows symptom Z. What is the likely cause?"
  - Gotcha: "What is a common misconception about X?"
- **Short, precise answers.** One to three sentences, or a short list. Put the key term first.
- **Unambiguous questions.** A question should have one clearly correct answer at the stated level.
- **Tag difficulty** as Easy, Medium, or Hard, and order cards from easier to harder.
- **Accuracy.** Do not invent facts. For version- or provider-specific details, mention the version or provider, and verify with web research when available.

## Cards Mode (Default)

Output in portable Markdown:

1. **Title** — `# Flashcards: <Topic>`
2. **Cards** — a numbered list. For each card, show the question in bold, the difficulty tag, and the answer on the next line. Group cards under short headings when the topic has clear sub-areas.
3. **Anki Import** — a fenced code block containing one card per line, with the question and answer separated by a single tab character, and the difficulty as a third tab-separated field. Do not use tabs or line breaks inside a question or answer. Add one line above the block explaining that it can be pasted into a text file and imported into Anki (or similar apps) as tab-separated text. Do not create a file unless the user asks.

## Quiz Mode

1. Tell the user how many questions there are, then ask **one question at a time** and wait for the answer.
2. Grade each answer as **Correct**, **Partly correct**, or **Incorrect**, with a one- or two-sentence explanation and the model answer. Accept answers that are correct in substance even if worded differently.
3. Keep track of missed and partly correct questions, and ask them again at the end, phrased differently when possible.
4. Let the user say "skip", "hint", or "stop" at any time. A hint narrows the answer without giving it away.
5. Finish with a short summary: score, weak areas, and the cards worth revising. Offer the missed cards in the Anki import format.
