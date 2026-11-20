---
name: topic-diagram-creator
description: 'Create a clear, accurate visual explanation of a technology topic as a rendered PNG, carousel of PNG slides, animated GIF, or short MP4, sized for learning notes and social platforms such as LinkedIn, Instagram, X, Threads, Medium, and Substack. Use when the user names a topic and wants a diagram for learning or posting: architecture diagrams, workflows, sequence diagrams, data flows, lifecycles, and other technical visuals.'
argument-hint: '[topic] [optional: platform, diagram type, PNG/carousel/GIF/MP4]'
license: MIT
version: 1.0.0
---

# Topic Diagram Creator

Turn the user's topic into a visual explanation that is accurate, readable on a phone, and useful both for learning and for posting on social platforms. Deliver rendered image files, not only diagram source text. Prefer concrete, technically meaningful visuals over decorative illustrations.

The topic is the only required input. Choose the diagram type, format, and size yourself when the user does not specify them, and state the choices briefly in the handoff. Anything the user specifies takes precedence over the defaults in this skill.

## Workflow

1. **Understand the request.** Identify the topic and learning goal, plus any platform, diagram type, format, size, or output location the user volunteered. Ask a concise clarifying question only when an ambiguity would materially change the diagram. Otherwise state reasonable assumptions and proceed.
2. **Choose a visual form.** Match the form to the concept: architecture/component diagram for structure and dependencies; workflow/flowchart for decisions and process; sequence diagram for interactions over time; state diagram for lifecycle; data-flow diagram for movement and trust boundaries. If one diagram would exceed the readability limits below, split it into a carousel or a small set of diagrams.
3. **Choose the format.** Follow [references/formats-and-rendering.md](references/formats-and-rendering.md). Default to a single static PNG. Use a carousel or GIF/MP4 only when ordered steps or motion materially improve understanding, never for visual effect alone.
4. **Ground the content.** Verify version-, provider-, or standards-dependent details when they matter. Do not invent components, protocols, data flows, or capabilities. Label illustrative assumptions and distinguish them from established behavior. Follow Privacy and Safety.
5. **Design for comprehension.** Follow Visual Design. Show boundaries, decision points, error paths, or trust zones when they are important to the topic.
6. **Use realistic examples where they help.** By default, design for software engineers and architects, and use widely understood scenarios such as online shopping, payments, ride-hailing, video streaming, or messaging. If the user names a domain or industry, use theirs instead. Do not force an industry example that obscures the concept or overcrowds the diagram.
7. **Render.** Follow the Rendering section of [references/formats-and-rendering.md](references/formats-and-rendering.md). Keep the editable source (for example, a `.mmd`, `.dot`, or small Python script) next to the exported files.
8. **Save the files.** Use the requested directory when supplied. Otherwise save under `outputs/diagrams/<topic-slug>/` in the workspace. If the workspace is a documentation or website project, ask before saving there. Use descriptive filenames (for example `oauth-flow-square.png`, `oauth-flow-slide-01.png`) and check for existing files before writing; do not silently overwrite user content.
9. **Validate the result.** Confirm each file exists and is non-empty, then inspect it visually. For a carousel, inspect every slide. For a GIF or MP4, extract the frames (for example, with Pillow's `ImageSequence` or ffmpeg) and inspect each one, because an image viewer may show only the first frame. Check for clipped or tiny labels, overlaps, broken arrows, wrong flow, and the wrong dimensions. Check that file sizes are reasonable for upload. Fix issues and re-render before reporting completion.
10. **Close with a concise handoff.** Provide the paths to the rendered files and editable source, the chosen diagram type, format, and dimensions, one line of alt text per image, and any important assumptions. If rendering is unavailable, say so plainly, provide the source, and give the single install command needed; never claim an image was rendered when it was not.

## Formats and Rendering

Default to one static PNG at 1080 × 1080. Read [references/formats-and-rendering.md](references/formats-and-rendering.md) before choosing a format other than a single PNG, choosing platform dimensions, or rendering. It covers carousels, GIF, MP4, default sizes, the renderer order (Mermaid, Graphviz, Pillow), and how to build GIF and MP4 files.

## Visual Design

- **Readable on a phone.** Use at most about 8 to 10 boxes or nodes per image, three to five words per label, and large text: no text smaller than roughly 24 px on a 1080 px-wide image. Split the topic into more slides or images rather than shrinking text.
- **Hook title.** Put a short, specific title at the top of each image (for example "How OAuth 2.0 Login Actually Works"), large enough to read in a feed thumbnail.
- **Consistent visual grammar.** Distinguish actors, services, data stores, boundaries, decisions, and events with consistent shapes. Label arrows with the action or data exchanged where useful. Use a clear reading direction (top to bottom or left to right).
- **Architecture:** identify system boundaries and external dependencies; show direction of calls or data only when known. **Workflows:** include meaningful branches and terminal outcomes. **Sequences:** make actor order and message direction unambiguous.
- **Security and finance topics:** make sensitive data, authorization boundaries, audit events, and failure paths visible when relevant, without implying regulatory compliance from the diagram alone.
- **Color and contrast.** Use a solid white background, never transparent, so the image stays readable in dark-mode apps and sites. Use a color-blind-safe palette with strong contrast, never rely on color alone to carry meaning, and add a small legend whenever colors or shapes have meaning.
- **Consistent style.** Use the same palette, font, and layout from image to image so a series of posts looks recognizable.
- **Optional signature.** Add a small footer with a name or handle only when the user provides one. Never invent or hard-code one.

## Privacy and Safety

Images are often shared publicly and are hard to take back. Use generic names (for example "Order Service", "Payments API", "Customer DB") instead of real internal system names, hostnames, URLs, IP addresses, credentials, customer data, or proprietary data fields, unless the user explicitly asks to include specific names and the content is clearly safe to share. Do not include company logos or trademarks unless the user supplies them for that purpose.

## Example

**Input:** "Make a diagram of the OAuth 2.0 authorization code flow for a LinkedIn post."

**Output (trimmed handoff):**

> - **Files:** `outputs/diagrams/oauth-code-flow/oauth-code-flow-portrait.png` and the editable source `oauth-code-flow.mmd`.
> - **Type and format:** sequence diagram, single PNG, 1080 × 1350 (portrait for the LinkedIn feed; platform size **not live-verified**: check current limits).
> - **Alt text:** "Sequence diagram: the user signs in, the app redirects to the authorization server, receives a code, and exchanges it for an access token."
> - **Assumptions:** PKCE shown as part of the flow; generic names used for the app and API.

## Limits

- **Needs:** a way to run code and save files, with at least one renderer: Node.js for the Mermaid CLI, Graphviz, or Python with Pillow. MP4 also needs ffmpeg or the `imageio-ffmpeg` package. Without a renderer, it returns the diagram source and the install command instead of an image.
- **Won't:** post images, include real internal system names, credentials, or logos unless the user supplies and approves them, or claim an image was rendered when it was not.
