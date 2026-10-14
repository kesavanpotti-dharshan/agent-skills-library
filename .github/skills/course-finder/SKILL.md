---
name: course-finder
description: Find the best online courses and programs for a user-provided topic from platforms such as Coursera, edX, Udemy, and university open courseware, prioritizing free and low-cost options. Use when the user wants course recommendations, a learning path, or university-backed programs for a topic; verifies prices, ratings, and availability live and explains each pick.
argument-hint: '[topic] [optional: level, budget, hours per week, certificate needed, format]'
---

# Course Finder

Find and recommend the best available online courses and programs for the user's topic, with free and low-cost options first and university-backed options clearly identified. Explain why each course was chosen so the user can decide quickly.

The topic is the only required input. Optional inputs are the learner's level, budget, available hours per week, whether a certificate is needed, and preferred format (video, reading, hands-on). If they are not given, assume a motivated learner with no budget preference, state the assumption briefly after the results, and proceed. Anything the user specifies takes precedence over the defaults in this skill. The default low-cost threshold is **$50 USD** total, or per month for subscriptions, unless the user gives a different budget or currency.

## Workflow

1. **Clarify the topic only if needed.** If the topic is too broad to search well (for example "programming"), ask one short question to narrow it. Otherwise proceed.
2. **Search live.** This skill requires web research, because prices, free-audit rules, and course availability change often. Search the sources below and open each candidate's own course page to confirm its details. Do not recommend courses from memory. If web research is unavailable, say so plainly, list only long-standing free resources known to exist (for example MIT OpenCourseWare or Harvard CS50), mark them **not live-verified**, and do not give prices or ratings.
3. **Screen for quality.** Keep courses that fit the topic and level and show strong quality signals (see Selection Criteria). Drop outdated, thin, or poorly reviewed courses even if they are popular or free.
4. **Check cost and cheaper routes.** Record the current price shown on the course page and the date it was checked. Note free audit options, financial aid, free trials, and whether a certificate costs extra.
5. **Rank and organize.** Choose one top pick and group the rest by cost tier, following the Output format. Prefer fewer, well-justified recommendations over long lists: about three to five per tier.
6. **Build a learning order.** Suggest a short sequence that combines the picks, for example a free foundation course, then a hands-on course, then an optional certificate.
7. **Validate before presenting.** Confirm every listed course has a working link, that the provider, instructor or university, price, and level match what was found, and that nothing was invented.

## Sources

Search broadly, then verify on the course's own page:

- **Course platforms:** Coursera, edX, Udemy, Udacity, Pluralsight, LinkedIn Learning, DataCamp, Educative, and similar platforms relevant to the topic.
- **University open courseware and online programs:** MIT OpenCourseWare, Stanford Online, Harvard Online and CS50, Yale Open Courses, Carnegie Mellon Open Learning Initiative, and official university lecture playlists.
- **Free vendor and community training:** Microsoft Learn, AWS Skill Builder, Google Cloud Skills Boost, IBM SkillsBuild, DeepLearning.AI, Hugging Face, fast.ai, freeCodeCamp, The Odin Project, and Khan Academy, when relevant to the topic.
- **Review aggregators and learner feedback:** Class Central and reputable learner reviews, used to cross-check quality rather than as the only source.

## Selection Criteria

- **Instructor credibility:** a recognized university, an established company, or an instructor with demonstrable expertise in the topic.
- **Ratings with volume:** weigh the rating together with the number of reviews. A 4.6 rating from 20,000 reviews is stronger evidence than a 4.9 from 40.
- **Freshness:** check when the course was last updated. For fast-moving topics such as AI, cloud, and frameworks, prefer courses updated within roughly the last two years, and flag older ones.
- **Syllabus fit:** the course must cover the core of the requested topic at the requested level, not just mention it.
- **Hands-on practice:** prefer courses with projects, labs, or graded exercises.
- **Value:** what the learner gets for the price, including whether the certificate is worth paying for in their situation.
- **Independence:** ignore sponsored placements, affiliate rankings, and "best course" listicles that do not show evidence. Never let a commission or promotion influence a pick.

## Cost Notes

- Record the price exactly as shown on the course page with the date checked, for example "$19.99 (checked 2026-10-13)". State the currency.
- Udemy and similar marketplaces change prices frequently and run regular sales, so note that the listed price may differ when the user visits and that waiting for a sale is often worthwhile.
- Free audit access, financial aid, and certificate pricing differ by platform and course and change over time; report only what the course page currently shows.
- For subscriptions, give the monthly or annual price and a realistic total cost based on the course length and the user's available hours.

## Output

Present the results in portable Markdown, in this order:

1. **Top Pick** — the single best starting point for this learner, with two or three sentences on why.
2. **Free Options** — courses that can be completed at no cost (a paid certificate may still be offered).
3. **Low-Cost Options** — courses within the low-cost threshold.
4. **University Programs and Certificates** — university-backed courses, specializations, or professional certificates for when a credential matters, including higher-priced options if they are clearly worth it.
5. **Suggested Learning Order** — a short numbered sequence using the picks above.
6. **Assumptions** — only if the user did not specify level, budget, time, or certificate needs.
7. **Sources** — the course page URL for every course listed, one per bullet, as the course title followed by its full URL.

Use a table for each tier with these columns: Course, Provider / University, Level, Length, Cost (checked date), Free Option, Certificate, Why Recommended. Write "Not listed" when the course page does not show a value; never guess. Leave a tier out with one line of explanation if no course qualifies, rather than filling it with weak options.

Keep descriptions short and plain. The goal is a decision the user can make in a few minutes.
