---
name: topic-diagram-creator
description: 'Create a clear, accurate visual explanation of a technology topic as a rendered PNG, carousel of PNG slides, animated GIF, or short MP4, sized for learning notes and social platforms such as LinkedIn, Instagram, X, Threads, Medium, and Substack. Use when the user names a topic and wants a diagram for learning or posting: architecture diagrams, workflows, sequence diagrams, data flows, lifecycles, and other technical visuals.'
argument-hint: '[topic] [optional: platform, diagram type, PNG/carousel/GIF/MP4]'
---

# Topic Diagram Creator

Turn the user's topic into a visual explanation that is accurate, readable on a phone, and useful both for learning and for posting on social platforms. Deliver rendered image files, not only diagram source text. Prefer concrete, technically meaningful visuals over decorative illustrations.

The topic is the only required input. Choose the diagram type, format, and size yourself when the user does not specify them, and state the choices briefly in the handoff. Anything the user specifies takes precedence over the defaults in this skill.

## Workflow

1. **Understand the request.** Identify the topic and learning goal, plus any platform, diagram type, format, size, or output location the user volunteered. Ask a concise clarifying question only when an ambiguity would materially change the diagram. Otherwise state reasonable assumptions and proceed.
2. **Choose a visual form.** Match the form to the concept: architecture/component diagram for structure and dependencies; workflow/flowchart for decisions and process; sequence diagram for interactions over time; state diagram for lifecycle; data-flow diagram for movement and trust boundaries. If one diagram would exceed the readability limits below, split it into a carousel or a small set of diagrams.
3. **Choose the format.** Follow Formats and Sizes. Default to a single static PNG. Use a carousel or GIF/MP4 only when ordered steps or motion materially improve understanding, never for visual effect alone.
4. **Ground the content.** Verify version-, provider-, or standards-dependent details when they matter. Do not invent components, protocols, data flows, or capabilities. Label illustrative assumptions and distinguish them from established behavior. Follow Privacy and Safety.
5. **Design for comprehension.** Follow Visual Design. Show boundaries, decision points, error paths, or trust zones when they are important to the topic.
6. **Use domain context where it helps.** By default, prefer realistic examples from Banking, Insurance, and Finance when relevant. Follow the user's own domain if they name a different one. Do not force an industry example that obscures the concept or overcrowds the diagram.
7. **Render.** Follow Rendering. Keep the editable source (for example, a `.mmd`, `.dot`, or small Python script) next to the exported files.
8. **Save the files.** Use the requested directory when supplied. Otherwise save under `outputs/diagrams/<topic-slug>/` in the workspace. If the workspace is a documentation or website project, ask before saving there. Use descriptive filenames (for example `oauth-flow-square.png`, `oauth-flow-slide-01.png`) and check for existing files before writing; do not silently overwrite user content.
9. **Validate the result.** Confirm each file exists and is non-empty, then inspect it visually. For a carousel, inspect every slide. For a GIF or MP4, extract the frames (for example, with Pillow's `ImageSequence` or ffmpeg) and inspect each one, because an image viewer may show only the first frame. Check for clipped or tiny labels, overlaps, broken arrows, wrong flow, and the wrong dimensions. Check that file sizes are reasonable for upload. Fix issues and re-render before reporting completion.
10. **Close with a concise handoff.** Provide the paths to the rendered files and editable source, the chosen diagram type, format, and dimensions, one line of alt text per image, and any important assumptions. If rendering is unavailable, say so plainly, provide the source, and give the single install command needed; never claim an image was rendered when it was not.

## Formats and Sizes

- **PNG (default):** one static image. Use when a single view explains the topic.
- **Carousel:** three to seven PNG slides, one idea or step per slide, numbered in the filename and visibly on each slide (for example "2/5"). Use for step-by-step topics on platforms that support multi-image posts, such as LinkedIn and Instagram; readers move at their own pace. Make the first slide a title slide that works as a hook.
- **GIF:** animated steps for platforms and destinations that accept GIFs. Keep it short and under a modest file size (around 5 MB unless a verified platform limit says otherwise).
- **MP4:** a short silent video of the same frames, for platforms that do not accept GIF uploads (Instagram, for example, generally does not accept GIF uploads to the feed). Offer it whenever the target platform's GIF support is missing or unverified.

Default dimensions, rendered with crisp text at these sizes or larger:

- **Square 1:1 (1080 × 1080):** default when no platform is named; displays well on every major platform.
- **Portrait 4:5 (1080 × 1350):** for Instagram and LinkedIn feed posts when requested.
- **Wide 16:9 (1920 × 1080):** for notes, articles, Medium, and Substack.

Platform image sizes, aspect ratios, carousel limits, and GIF/video support change over time. When web research is available and a specific platform is targeted, verify current requirements from official help pages; if verification is unavailable, use the defaults above and say they were not live-verified.

## Visual Design

- **Readable on a phone.** Use at most about 8 to 10 boxes or nodes per image, three to five words per label, and large text: no text smaller than roughly 24 px on a 1080 px-wide image. Split the topic into more slides or images rather than shrinking text.
- **Hook title.** Put a short, specific title at the top of each image (for example "How OAuth 2.0 Login Actually Works"), large enough to read in a feed thumbnail.
- **Consistent visual grammar.** Distinguish actors, services, data stores, boundaries, decisions, and events with consistent shapes. Label arrows with the action or data exchanged where useful. Use a clear reading direction (top to bottom or left to right).
- **Architecture:** identify system boundaries and external dependencies; show direction of calls or data only when known. **Workflows:** include meaningful branches and terminal outcomes. **Sequences:** make actor order and message direction unambiguous.
- **Security and finance topics:** make sensitive data, authorization boundaries, audit events, and failure paths visible when relevant, without implying regulatory compliance from the diagram alone.
- **Color and contrast.** Use a solid white background, never transparent, so the image stays readable in dark-mode apps and sites. Use a color-blind-safe palette with strong contrast, never rely on color alone to carry meaning, and add a small legend whenever colors or shapes have meaning.
- **Consistent style.** Use the same palette, font, and layout from image to image so a series of posts looks recognizable.
- **Optional signature.** Add a small footer with a name or handle only when the user provides one. Never invent or hard-code one.

## Rendering

Check which tools are available before rendering, and use the first one that works:

1. **Mermaid** through `npx -y @mermaid-js/mermaid-cli` (`mmdc`) when Node.js is available. Render with a white background and a scale of 2 or more for sharp text (for example `-b white -s 2`). The first run downloads a headless browser, which can take a while.
2. **Graphviz** (`dot -Tpng -Gdpi=200`) when it is installed, for dependency graphs and layouts Mermaid handles poorly.
3. **Python with Pillow** as the fallback that works almost anywhere: draw the boxes, arrows, and text directly with a small script.

To fit the exact target dimensions, render the diagram first, then place it with Pillow on a white canvas of the target size with the title above, padding around it, and the optional footer below. Scale the diagram to fit without distortion.

**GIF:** render one PNG per step, highlighting the active element (for example, a bold outline or accent color while the rest is muted), at identical dimensions. Combine the frames with Pillow (`save_all=True`, `append_images`, `loop=0`), showing each step for about 1.5 to 3 seconds and holding the final frame about twice as long. Reduce colors or frame count if the file is too large.

**MP4:** build it from the same frames with ffmpeg. If ffmpeg is not installed, install the `imageio-ffmpeg` Python package, which bundles an ffmpeg binary. Use H.264 with the `yuv420p` pixel format for broad platform compatibility.

If no renderer is available, provide the diagram source and the single command needed to enable rendering (for example, installing Node.js for Mermaid or `pip install Pillow`).

## Privacy and Safety

Images are often shared publicly and are hard to take back. Use generic names (for example "Policy Service", "Payments API", "Customer DB") instead of real internal system names, hostnames, URLs, IP addresses, credentials, customer data, or proprietary data fields, unless the user explicitly asks to include specific names and the content is clearly safe to share. Do not include company logos or trademarks unless the user supplies them for that purpose.
