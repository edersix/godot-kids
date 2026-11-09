# Slides

One [Marp](https://marp.app/) Markdown deck per lesson (`lesson-01.md` to `lesson-12.md`). Each deck follows the lesson plan in [`../curriculum/`](../curriculum/) and uses large, short text for kids aged 8–10.

## How to Use
- **VS Code:** install the "Marp for VS Code" extension, open a deck, and use the preview. Use its export command for PDF or PPTX.
- **Command line:** use Marp CLI, for example `npx @marp-team/marp-cli@latest lesson-01.md --pdf`. Check that the Marp tools are still maintained and up to date before relying on them.
- Present from the exported PDF if the classroom laptop cannot run the tools.

## Conventions
- Start from [`_template.md`](_template.md) for any new deck.
- Every deck has: title, goal, new words, the steps in groups with a checkpoint slide after each group, a "make it yours" slide, a "stuck?" slide, and a wrap-up.
- The slides show the **gaps** only for code lessons. Answers are in the lesson plan, not on the slides.
- Slides use no external images or links, so they work offline.
- Keep the wording in sync with the lesson plan. If a step changes in the plan (for example after testing in Godot), change the slide too.
