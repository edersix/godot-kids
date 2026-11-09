# Godot Kids Training (Young Game Makers, Ages 8–10)

A ready-to-deliver course that teaches children aged 8–10 to make a simple 2D game in [Godot](https://godotengine.org/) using the visual editor and very small GDScript snippets.

- **Format:** 12 lessons of about 45 minutes each
- **Audience:** beginners, heavy guidance
- **Engine:** latest stable Godot 4.x (check the official site before class)
- **Build-up:** every lesson adds one feature to the same small game, and kids add their own creative touches

Full plan: [`godot-kids-training-plan.md`](godot-kids-training-plan.md)

## Repository Layout

| Folder | Contents |
|--------|----------|
| [`facilitator-guide/`](facilitator-guide/) | Installing Godot, preparing laptops, classroom tips, the [before-the-first-class checklist](facilitator-guide/set-up.md), and the [known risks](facilitator-guide/known-risks.md) to review |
| [`curriculum/`](curriculum/) | Course overview, [lesson template](curriculum/lesson-template.md), and lesson plans |
| [`projects/`](projects/) | `lesson-NN/starter` and `lesson-NN/solution` Godot projects (see [conventions](projects/README.md)) |
| [`slides/`](slides/) | One Marp Markdown deck per lesson |
| [`parent-handouts/`](parent-handouts/) | One take-home sheet per lesson |
| [`assessment/`](assessment/) | Certificate template and skills checklist |

## Lessons

| # | Title |
|---|-------|
| 1 | Meet Godot |
| 2 | Sprites and Scenes |
| 3 | Move the Hero |
| 4 | Walls and Worlds |
| 5 | Collect Coins |
| 6 | Keep Score |
| 7 | Meet the Enemy |
| 8 | Lives and Game Over |
| 9 | Sound and Music |
| 10 | Make It Shine |
| 11 | My Own Game (Part 1) |
| 12 | My Own Game (Part 2) and Showcase |

## Status

All materials are written: facilitator guide, 12 lesson plans, 24 Godot projects (a `starter` and a `solution` for every lesson), 12 slide decks, parent handouts, and the assessment pack.

**Not yet tested.** The materials were written on a machine without Godot, Node or Python. They have been checked only by scripts and by reading (file references, resource counts, indentation, titles across folders). Before the first class, a facilitator must:

1. Install the latest stable Godot 4.x and open all 24 projects. Accept the "convert project" offer if Godot shows it.
2. Run each project (F5) and walk through each lesson's steps. Fix menu and button names in the lesson plans and slides where they differ from the editor.
3. Check that `projects/lesson-09/*/assets/music.wav` loops (see the lesson 9 plan, Facilitator Notes).
4. Open the slide decks in a Marp preview and look for layout problems.
5. Test-print `assessment/certificate.html`.

Work is tracked in the sub-tasks of [`godot-kids-training-plan.md`](godot-kids-training-plan.md).

## License

See [`LICENSE`](LICENSE).
