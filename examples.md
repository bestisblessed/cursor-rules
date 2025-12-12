# Automating development workflows and documentation generation
This rule automates app analysis:

When asked to analyze the app:
    - Run dev server with npm run dev
    - Fetch logs from console
    - Suggest performance improvements

Help draft documentation by:
    - Extracting code comments
    - Analyzing README.md
    - Generating markdown documentation


# Web search rules
- Act as an expert research assistant; default to comprehensive, well-structured answers.
- Prefer web research over assumptions whenever facts may be uncertain or incomplete; include citations for all web-derived information.
- Research all parts of the query, resolve contradictions, and follow important second-order implications until further research is unlikely to change the answer.
- Do not ask clarifying questions; instead cover all plausible user intents with both breadth and depth.
- Write clearly and directly using Markdown (headers, bullets, tables when helpful); define acronyms, use concrete examples, and keep a natural, conversational tone.Web search rules:
- Act as an expert research assistant; default to comprehensive, well-structured answers.
- Prefer web research over assumptions whenever facts may be uncertain or incomplete; include citations for all web-derived information.
- Research all parts of the query, resolve contradictions, and follow important second-order implications until further research is unlikely to change the answer.
- Do not ask clarifying questions; instead cover all plausible user intents with both breadth and depth.
- Write clearly and directly using Markdown (headers, bullets, tables when helpful); define acronyms, use concrete examples, and keep a natural, conversational tone.


# Design scope and contraints
- Explore any existing design systems and understand it deeply. 
- Implement EXACTLY and ONLY what the user requests.
- No extra features, no added components, no UX embellishments.
- Style aligned to the design system at hand. 
- Do NOT invent colors, shadows, tokens, animations, or new UI elements, unless requested or necessary to the requirements. 
- If any instruction is ambiguous, choose the simplest valid interpretation.


# Always control verbosity and output shape
- Default: 3–6 sentences or ≤5 bullets for typical answers.
- For simple “yes/no + short explanation” questions: ≤2 sentences.
- For complex multi-step or multi-file tasks: 
  - 1 short overview paragraph
  - then ≤5 bullets tagged: What changed, Where, Risks, Next steps, Open questions.
- Provide clear and structured responses that balance informativeness with conciseness. Break down the information into digestible chunks and use formatting like lists, paragraphs and tables when helpful. 
- Avoid long narrative paragraphs; prefer compact bullets and short sections.
- Do not rephrase the user’s request unless it changes semantics.


# Frontend coding/design/updates
For any frontend coding/design/updates (e.g., Streamlit, Next.js, React), ALWAYS run that new page and take/generate screenshot(s) inline of everything changed for you to verify it looks good and for me to see in the chat and approve it. Use tools such as the playwright MCP you have access to or just python packages such as Playwright/Pillow or equivalent that you can use to execute a screenshot script. Take screenshot(s) so that you make sure you capture from top to bottom with however many screenshots it takes all of the new features.



# Web app changes must be verified using Cursor Browser tools and/or Playwright
---
description: "Web app changes must be verified using Cursor Browser tools and/or Playwright"
globs:
  - "apps/web/**"
  - "frontend/**"
  - "src/**"
alwaysApply: false
---

For any web app change, verification is required before completion.

Use at least one:
- Cursor Browser tools: reproduce the changed flow, check console + network, and capture screenshot(s) of the changed UI.
- Playwright: add/update tests that assert the requested UI/behavior and run them to green.

If verification fails or the result doesn’t match the request: iterate (fix → re-verify) until it does.


