# Formats, Sizes, and Rendering

## Formats and Sizes

- **PNG (default):** one static image. Use when a single view explains the topic.
- **Carousel:** three to seven PNG slides, one idea or step per slide, numbered in the filename and visibly on each slide (for example "2/5"). Use for step-by-step topics on platforms that support multi-image posts, such as LinkedIn and Instagram; readers move at their own pace. Make the first slide a title slide that works as a hook.
- **GIF:** animated steps for platforms and destinations that accept GIFs. Keep it short and the file small; check the target platform's current file-size limit rather than assuming one.
- **MP4:** a short silent video of the same frames, for platforms that do not accept GIF uploads (check the platform's current upload rules). Offer it whenever the target platform's GIF support is missing or unverified.

Default dimensions, rendered with crisp text at these sizes or larger:

- **Square 1:1 (1080 × 1080):** default canvas when no platform is named.
- **Portrait 4:5 (1080 × 1350):** a common choice for feed posts; check the target platform's current recommended sizes.
- **Wide 16:9 (1920 × 1080):** for notes and articles; check the target platform's current recommended sizes.

Platform image sizes, aspect ratios, carousel limits, and GIF/video support change over time. When web research is available and a specific platform is targeted, verify current requirements from official help pages; if verification is unavailable, use the defaults above and say they were not live-verified.

## Rendering

Check which tools are available before rendering, and use the first one that works:

1. **Mermaid** through `npx -y @mermaid-js/mermaid-cli` (`mmdc`) when Node.js is available. Render with a white background and a scale of 2 or more for sharp text (for example `-b white -s 2`). The first run downloads a headless browser, which can take a while.
2. **Graphviz** (`dot -Tpng -Gdpi=200`) when it is installed, for dependency graphs and layouts Mermaid handles poorly.
3. **Python with Pillow** as the fallback that works almost anywhere: draw the boxes, arrows, and text directly with a small script.

To fit the exact target dimensions, render the diagram first, then place it with Pillow on a white canvas of the target size with the title above, padding around it, and the optional footer below. Scale the diagram to fit without distortion.

**GIF:** render one PNG per step, highlighting the active element (for example, a bold outline or accent color while the rest is muted), at identical dimensions. Combine the frames with Pillow (`save_all=True`, `append_images`, `loop=0`), showing each step for about 1.5 to 3 seconds and holding the final frame about twice as long. Reduce colors or frame count if the file is too large.

**MP4:** build it from the same frames with ffmpeg. If ffmpeg is not installed, install the `imageio-ffmpeg` Python package, which bundles an ffmpeg binary. Use H.264 with the `yuv420p` pixel format for broad platform compatibility.

If no renderer is available, provide the diagram source and the single command needed to enable rendering (for example, installing Node.js for Mermaid or `pip install Pillow`).
