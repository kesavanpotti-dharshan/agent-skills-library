---
name: how-it-works
description: Explain how a technology, product, process, or system works behind the scenes, pitched to the person's profession and chosen depth (beginner, intermediate, advanced, or architect), in layers they can drill into. Use when the user asks "how does X work?" and wants a conversational explanation; for long saved study notes, use tech-topic-notes, and for a rendered visual, use topic-diagram-creator.
argument-hint: '[subject] [optional: profession or background, depth: beginner/intermediate/advanced/architect]'
license: MIT
version: 1.0.0
---

# How It Works

Explain what happens behind the scenes of a technology, product, process, or system, at the right level for the person asking. Start simple, build up in layers, and let the person choose how deep to go. A good explanation leaves them able to describe the flow in their own words.

## Inputs

- **Subject:** the thing to explain (for example "how a card payment is approved", "how HTTPS works", "how a mortgage is underwritten").
- **Background (optional):** the person's profession or field, used to pick analogies and examples.
- **Depth (optional):** **beginner**, **intermediate**, **advanced**, or **architect**.

## Workflow

1. **Get the subject.** If it is too vague to explain well (for example "how computers work"), ask one short question to narrow it.
2. **Ask about background and depth together.** In one message, ask (a) the person's profession or background and (b) the depth they want: beginner, intermediate, advanced, or architect. Skip any question the request already answers. If they don't answer, use "curious non-specialist, beginner" and say so in one line.
3. **Answer in layers.**
   - **Summary:** two to four plain-language sentences on what it does and why it exists.
   - **Behind the scenes:** a numbered, step-by-step flow of what actually happens, naming the main actors and what passes between them.
   - **Go deeper:** offer one specific next layer (name it, do not just say "want more?").
4. **Match the person.** Draw analogies and examples from their profession. Match depth to level:
   - **Beginner:** analogy and the big picture; no jargon without a plain definition.
   - **Intermediate:** the components and how data or work flows between them.
   - **Advanced:** internals, failure modes, edge cases, and trade-offs.
   - **Architect:** design decisions, alternatives and why they were not chosen, scaling, security, and cost.
5. **Stay honest.** Follow the Honesty Rules below.
6. **Close with options.** Offer the next layer, a diagram (topic-diagram-creator), or flashcards (flashcard-reviser).

## Honesty Rules

- **Mark simplifications.** When an analogy or summary leaves something out, say so briefly (for example "Simplified: real systems also retry here.").
- **Verify current facts.** For version-specific, product-specific, or recent details, check with web research when available. Otherwise mark them **not live-verified**.
- **Never invent specifics.** No made-up numbers, limits, protocol fields, or internal component names.
- **Separate public from guessed.** For proprietary systems, explain only what is publicly documented. If the internals are not public, say so, and label any general industry pattern as "typically" rather than as fact about that product.

## Output

Portable Markdown, in this order:

1. **Assumptions** (one line, only if background or depth was assumed).
2. **In short** — the plain-language summary.
3. **Behind the scenes** — the numbered flow, with an analogy from the person's field where it helps.
4. **Depth-specific section** — for advanced, "Where it breaks"; for architect, "Design choices and trade-offs". Omit for beginner and intermediate unless useful.
5. **Simplified here / not live-verified** — a short list, only when something applies.
6. **Next** — one line offering the next layer, a diagram, or flashcards.

Keep it conversational and short: aim for what a person can read in two or three minutes. Go longer only when asked.

## Example

**Input:** "How does tapping my card at a shop actually work? I'm a nurse, keep it beginner."

**Output (trimmed):**

> **In short:** When you tap, your card and the shop's terminal have a short, encrypted conversation, and the shop asks your bank, through the card network, "Is this person good for this amount?" The bank says yes or no in a second or two. The money actually moves later, usually in a batch.
>
> **Behind the scenes:**
>
> 1. **The tap.** A chip in the card talks to the terminal over a very short-range radio link and produces a one-time code for this purchase, so a copied code is useless later. Think of it like a single-use wristband: valid for one patient, one visit.
> 2. **The request.** The terminal sends the amount and that code to the shop's payment provider, which passes it to the card network (for example Visa or Mastercard).
> 3. **The check.** The network routes it to your bank, which checks the code, your balance or credit limit, and fraud signals, like triage deciding quickly whether to proceed.
> 4. **The answer.** "Approved" travels back the same way to the terminal.
> 5. **Settlement.** Later, the banks settle up and the shop receives the money, minus fees.
>
> **Simplified here:** some small purchases are approved without contacting your bank at all; exact rules vary by country and card.
>
> **Next:** want the next layer (what the one-time code is and why it stops copying), a diagram of this flow, or flashcards?

## Limits

- **Needs:** a subject. Web research is optional, for checking current or version-specific facts.
- **Won't:** fabricate internals of proprietary systems, present guesses as documented fact, invent numbers or sources, or write long saved notes (use tech-topic-notes) or render images (use topic-diagram-creator).
