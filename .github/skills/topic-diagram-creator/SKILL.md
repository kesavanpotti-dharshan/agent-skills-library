---
name: topic-diagram-creator
description: 'Create clear visual explanations of user-named technology topics as rendered PNG diagrams or animated GIFs. Use for architecture diagrams, workflows, sequence diagrams, data flows, lifecycles, and other technical visuals.'
argument-hint: '[topic] [diagram type] [PNG or GIF]'
---

# Topic Diagram Creator

Turn the user's topic into a visual explanation that is accurate, readable, and useful to the intended audience. Deliver a rendered image file, not only diagram source text. Prefer concrete, technically meaningful visuals over decorative illustrations.

## Workflow

1. **Understand the request.** Identify the topic, learning goal, audience, preferred diagram type, format, and output location. Ask a concise clarifying question only when an ambiguity would materially change the diagram. Otherwise state reasonable assumptions and proceed.
2. **Choose a visual form.** Match the form to the concept: architecture/component diagram for structure and dependencies; workflow/flowchart for decisions and process; sequence diagram for interactions over time; state diagram for lifecycle; data-flow diagram for movement and trust boundaries; or a small set of complementary diagrams when one would be too dense.
3. **Ground the content.** Verify version-, provider-, or standards-dependent details when they matter. Do not invent components, protocols, data flows, or capabilities. Label illustrative assumptions and distinguish them from established behavior.
4. **Design for comprehension.** Give the diagram a descriptive title; use a clear reading direction, meaningful grouping, concise labels, consistent arrows, and adequate contrast. Show boundaries, decision points, error paths, or trust zones when they are important to the topic. Keep text legible at normal viewing size and avoid unnecessary decoration.
5. **Use the user's domain context where it helps.** The user is a developer experienced in Banking, Insurance, and Finance. Prefer realistic examples from those fields when relevant; do not force an industry analogy that obscures the concept or makes the diagram overcrowded.
6. **Render the requested artifact.** Use an available diagram or image renderer appropriate to the format. PNG is the default for static diagrams. Use GIF only when motion or ordered steps materially improve understanding; create distinct, purposeful frames with a readable frame duration and a sensible loop. Preserve editable diagram source alongside the image when practical.
7. **Choose and report the output path.** Use the requested directory when supplied. Otherwise save under `outputs/diagrams/` in the workspace, creating a topic-named subfolder if useful. Use descriptive filenames and check for existing files before writing; do not silently overwrite user content.
8. **Validate the result.** Confirm the image exists and is non-empty, inspect it with an available image viewer or renderer preview, and check for clipped labels, unreadable text, broken arrows, overlaps, and incorrect flow. For GIFs, verify that it has multiple frames and that the animation communicates the intended order. Fix issues before reporting completion.
9. **Close with a concise handoff.** Link the rendered image and editable source, summarize what it shows, and note important assumptions. If rendering is unavailable, say so plainly, provide the source artifact, and explain what is needed to produce the requested image; never claim an image was rendered when it was not.

## Output Guidance

- Keep each diagram focused on one learning objective. Split broad topics into multiple diagrams rather than shrinking labels or cramming in every detail.
- Use a consistent visual grammar: distinguish actors, services, stores, boundaries, decisions, and events; label arrows with the action or data exchanged where useful.
- For architecture diagrams, identify system boundaries and external dependencies; show direction of calls or data only when known.
- For workflows, include meaningful branches and terminal outcomes. For sequences, make actor order and message direction unambiguous.
- For security- or finance-related topics, make sensitive data, authorization boundaries, audit events, and failure paths visible when relevant, without implying regulatory compliance from the diagram alone.
- Prefer a static PNG when a sequence of labeled steps is enough. Do not add motion solely for visual effect.
- Keep the source editable where feasible (for example, Mermaid, Graphviz DOT, or a small rendering script) and save it near the exported image.
