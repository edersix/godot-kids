# Godot Kids Training Plan (Young Game Makers, Ages 8–10)

## Top-Level Overview

**Goal:** Build a ready-to-deliver training course that teaches children aged 8–10 to make simple 2D games in Godot.

**Scope:** 12 lessons of about 45 minutes each. The repo is currently empty (only `LICENSE`), so everything is created from scratch.

**Approach:**
- Godot 4.x (latest stable at time of delivery) with GDScript, in very small snippets.
- Mostly visual editor work (scenes, nodes, sprites). Code is "fill in the blank" on top of provided starter scripts.
- Each lesson adds one feature to a single small game, so the kids finish every lesson with something playable.
- Each lesson has a creative "make it yours" step (colors, characters, sounds).
- Heavy guidance: step-by-step instructions, frequent checkpoints, and a working solution project per lesson.

**Deliverables (confirmed):**
1. Curriculum and lesson plans
2. Starter and solution Godot projects for each lesson
3. Slide decks
4. Parent handouts
5. Certificate and assessment templates
6. Short facilitator setup guide (installing Godot, preparing laptops)

**Non-goals:** 3D, multiplayer, exporting or publishing games, advanced GDScript (classes, arrays, dictionaries).

## Proposed Repo Layout

```
README.md
facilitator-guide/
curriculum/            (course overview + lesson-01.md ... lesson-12.md)
projects/
  lesson-01/starter, lesson-01/solution
  ...
  lesson-12/starter, lesson-12/solution
slides/                (one deck per lesson)
parent-handouts/       (one sheet per lesson)
assessment/            (certificate + skills checklist)
.gitignore             (includes Godot's .godot/ cache and import artifacts)
```

## Lesson Outline (12 x ~45 min)

| # | Title | Main concept | Game progress |
|---|-------|--------------|---------------|
| 1 | Meet Godot | Editor, nodes, scenes, Run button | Empty scene runs |
| 2 | Sprites and Scenes | Sprite2D, position, scene tree | Hero appears on screen |
| 3 | Move the Hero | Input, variables, `_process`/`_physics_process` | Hero moves with keyboard |
| 4 | Walls and Worlds | Collision shapes, static bodies | Hero stops at walls |
| 5 | Collect Coins | Area2D, signals | Coins disappear when touched |
| 6 | Keep Score | Label, variables, UI | On-screen score |
| 7 | Meet the Enemy | Moving hazards, `if` statements | Enemy patrols |
| 8 | Lives and Game Over | Counters, scene reload | Lives and game-over screen |
| 9 | Sound and Music | AudioStreamPlayer | Sound effects and music |
| 10 | Make It Shine | Animation, particles | Animated hero, coin sparkle |
| 11 | My Own Game (Part 1) | Design and planning | Kids start their own variation |
| 12 | My Own Game (Part 2) + Showcase | Build, share, celebrate | Showcase and certificates |

The outline is a starting point and may be refined during sub-task 3.

## Sub-Tasks

### 1. Repo scaffold and conventions
- **Intent:** Create the folder structure and shared conventions so later work stays consistent.
- **Expected Outcomes:** Folders exist, `README.md` explains layout, `.gitignore` excludes Godot cache files, and naming and lesson-template conventions are documented.
- **Todo List:**
  1. Create the folder layout above.
  2. Add `.gitignore` (Godot `.godot/`, import caches, OS files).
  3. Add `README.md` with the course overview and layout.
  4. Define a lesson template (goal, materials, timing, steps, checkpoints, challenge, wrap-up).
  5. Define a Godot project convention (project name, folder layout, a shared placeholder asset policy).
- **Relevant Context:** Repo contains only `LICENSE`. Check the license's compatibility before adding any third-party assets.
- **Status:** [x] done
- **Notes for next sub-tasks:** `.gitignore` is blocked for the file tools; it was created via shell with the user's approval. The `.gitkeep` files in `facilitator-guide/`, `slides/`, `parent-handouts/` and `assessment/` can be removed once real files are added. The lesson template is `curriculum/lesson-template.md` and project conventions are in `projects/README.md`.

### 2. Facilitator setup guide
- **Intent:** Let a facilitator get laptops ready without prior Godot knowledge.
- **Expected Outcomes:** A short guide covering install, project import, a pre-class checklist, and troubleshooting.
- **Todo List:**
  1. Document how to download and install the latest stable Godot 4.x from the official source, and how to verify the download.
  2. Document laptop requirements and a pre-class checklist (editor opens, a starter project runs, audio works).
  3. Document how to distribute the starter projects to the kids.
  4. Add classroom tips (pacing, helping stuck kids, safe-use notes) and common problems.
- **Relevant Context:** `facilitator-guide/`. Do not pin an outdated Godot version; state "latest stable 4.x" and tell the facilitator to check it.
- **Status:** [x] done
- **Notes for next sub-tasks:** The guide is `facilitator-guide/README.md`. It assumes 1 facilitator per 6 kids, projects on the Compatibility renderer, a main scene set in every starter project, `# TODO` answer tables in each lesson plan, and an "If You Get Stuck" hint list in each lesson plan. Its readiness checklist can only be fully run once `projects/lesson-01/starter` exists (sub-task 4).

### 3. Curriculum overview and lesson plans
- **Intent:** Define learning goals and a detailed plan for each lesson.
- **Expected Outcomes:** A course overview and 12 lesson plans using the shared template, with a clear progression and checkpoints.
- **Todo List:**
  1. Write the course overview (audience, goals, skills ladder, outcomes).
  2. Finalize the 12-lesson outline.
  3. Write each lesson plan: kid-friendly steps, "fill in the blank" code, stuck-helper hints, and a "make it yours" step.
  4. Add facilitator notes per lesson (timing, common mistakes).
- **Relevant Context:** `curriculum/`. Keep vocabulary at an age 8–10 reading level.
- **Status:** [x] done
- **Notes for sub-tasks 4–6 (project building):**
  - **Source of truth:** `curriculum/game-blueprint.md` (scene tree, node names, final scripts, assets). Each lesson plan's "Fill-in-the-Blank Code" section shows the exact starter script and answer table. The starters must match those scripts exactly, including `# TODO n` markers.
  - **Starters must run with the gaps unfilled** (no parse errors). Where a gap is a `pass`, `if false:` or `Vector2.ZERO` placeholder, the lesson plan shows it. Lesson 8 TODO 3, 5 and 6 and lesson 10 TODO 1 to 3 are comment-only gaps inside functions that already have other statements, so check each runs.
  - **Chain:** each starter is the previous solution plus the new lesson's pieces, with two deliberate exceptions. Lesson 8's starter moves the score line into `update_labels()` (see the note in `lesson-08.md`). Lesson 10's starter includes an `AnimationPlayer` with an empty `bob` animation (no length, no loop; the kids set both) and a `Sparkle` node with default settings.
  - **Scenes the starters must contain** (kids do not build these): lesson 1: `Main` with a `Message` Label (kids add a `ColorRect`). Lesson 2: `main.tscn` with `Background` and `hero.tscn` with `Hero` and `CollisionShape2D` only. Lesson 3: `hero.gd` attached, Motion Mode Floating. Lesson 5: `coin.tscn` and `coin.gd` with `_on_body_entered`, signal not connected. Lesson 7: `enemy.tscn` and `enemy.gd`, signal not connected, `Enemies` node present but empty (kids drag the enemy into it). Lesson 6: `HUD` absent. Lesson 8: `LivesLabel` and `GameOverLabel` absent. Lesson 9: audio nodes absent, audio files present in `assets/`. Lesson 11: `assets/skins/` with alternate SVGs.
  - **Lesson 4 starter:** has no `Walls` node, and the kids build the four walls. The blueprint tree lists `Walls` as a `Node2D` with `StaticBody2D` children named `TopWall`, `BottomWall`, `LeftWall`, `RightWall`, each with a `CollisionShape2D` and a `ColorRect`.
  - **Lesson 5 coins:** kids place five coins under `Coins` in `main.tscn` (the starter has `Coins` as an empty `Node2D`). From lesson 6 on, the solution must have coins placed under `Coins`.
  - **Lesson 7 enemy:** exported values `speed` (100), `left_limit` (100), `right_limit` (500).
  - **Verify (blocking for sub-task 4):** the curriculum menu and button names (for example **Debug > Visible Collision Shapes**, **Make Unique**, **Instantiate Child Scene**, the animation key icon, **Autoplay on Load**) were written from general knowledge of Godot 4.x and have **not** been checked against the installed Godot version. Check them when the projects are first opened in Godot, and fix the lesson text.
  - **Not verified:** the projects were written without Godot, so none of the lesson steps have been run.

> **Order change (history):** Godot is not installed on this machine. The user chose to build sub-tasks 4–6 (the Godot projects) untested and test them later. Sub-tasks 7–9 were done first.

### 4. Godot projects, lessons 1–4
- **Intent:** Provide working starter and solution projects for the foundations.
- **Expected Outcomes:** Each of lessons 1–4 has a `starter` and a `solution` project that opens and runs in Godot, and each lesson's starter equals the previous lesson's solution plus the new gaps.
- **Todo List:**
  1. Create the shared placeholder art and sound approach (simple, freely licensed or self-made assets, with credits recorded).
  2. Build projects for lessons 1–4.
  3. Add inline comments and fill-in-the-blank markers to starter scripts.
  4. Verify that each project opens and runs in Godot.
- **Relevant Context:** `projects/lesson-01` to `lesson-04`.
- **Status:** [x] written, **not tested in Godot** (Godot is not installed; the user chose to build untested and test later)
- **Notes:**
  - Files: each of `lesson-01` to `lesson-04` has `starter` and `solution` with `project.godot` (Compatibility renderer, main scene `main.tscn`), the scenes (`.tscn` written by hand), and `hero.gd` from lesson 3. Assets (`hero.svg`, `tree.svg`, `flower.svg`) are in `assets/` from lesson 2 on.
  - Checked by script only: every `res://` path in the scenes resolves to an existing file in its own project. Nothing was opened in Godot.
  - **To test when Godot is available:** open all 8 projects, check each runs (F5), then walk the lesson steps. Likely trouble spots: (1) `project.godot` says `config/features` 4.3, so a newer Godot may offer to convert the project (accept it); (2) hand-written `.tscn` files omit `uid` values and use `load_steps`, which new Godot versions rewrite on save; (3) the lesson 3 starter has unused-variable warnings, which are expected; (4) hero uses `motion_mode = 1` (Floating).
  - Lesson 1 starter has `Message` only, no `ColorRect`. The lesson 4 starter has no `Walls` (kids build them), and the solution has the four walls with the sizes and positions given in the lesson plan.
  - Lesson 4 starter and solution reuse the same `hero.gd` and `hero.tscn` as the lesson 3 solution.
  - Nothing in the lesson 2 starter for `Decorations`. The kids create it in "Make it yours".

### 5. Godot projects, lessons 5–8
- **Intent:** Add the core game mechanics (coins, score, enemies, lives).
- **Expected Outcomes:** Starter and solution projects for lessons 5–8 that chain on from lesson 4 and run correctly.
- **Todo List:**
  1. Build projects for lessons 5–8.
  2. Add fill-in-the-blank markers and comments.
  3. Verify each project opens and runs.
- **Relevant Context:** `projects/lesson-05` to `lesson-08`.
- **Status:** [x] written, **not tested in Godot**
- **Notes:**
  - Each of `lesson-05` to `lesson-08` has `starter` and `solution` (16 projects in total with lessons 1-4). New files: `coin.svg` (lesson 5), `enemy.svg` (lesson 7), `coin.tscn` and `coin.gd`, `enemy.tscn` and `enemy.gd`, and `main.gd` from lesson 6.
  - Starters match the gaps in the lesson plans: lesson 5 (`coin.gd` TODO 1-2, coin signal not connected, `Coins` empty), lesson 6 (`coin.gd` TODO 1-2, `main.gd` TODO 3-5, no `HUD`), lesson 7 (`enemy.gd` TODO 1-4, `main.gd` TODO 5-6, `Enemies` present but empty, enemy signal not connected), lesson 8 (`main.gd` TODO 1-6, no `LivesLabel` or `GameOverLabel`).
  - Solutions have the finished scripts from `curriculum/game-blueprint.md` as they stand at that lesson. Five coins are placed from lesson 5 on, and one `Enemy` from lesson 7 on (position 300, 520; limits 100 and 500).
  - Checked by script only: no byte-order marks, correct `load_steps`, every `res://`, `ExtResource` and `SubResource` reference resolves, GDScript uses tabs, SVGs are valid XML, and the node list of each `main.tscn` matches the lesson. Nothing was opened in Godot.
  - Problems found and fixed during the build: (1) files written with PowerShell 5.1 `Set-Content -Encoding utf8` get a byte-order mark, which Godot may reject in `project.godot`, so 13 files from lessons 1-4 were rewritten without it. Use no-BOM writes for any new project file. (2) The first generation script for the lesson 5-8 scenes failed because a helper named `R` clashed with a PowerShell alias, so it was re-run and the result checked. (3) A typo in `coin.svg` (an invalid color value) was caught and fixed before use.
  - The score line lives in `_on_coin_collected` in lessons 6 and 7, and moves into `update_labels()` in lesson 8, as the lesson 8 note describes.

### 6. Godot projects, lessons 9–12
- **Intent:** Add polish and set up the final project.
- **Expected Outcomes:** Starter and solution projects for lessons 9–12, including a template for the kids' own game.
- **Todo List:**
  1. Build projects for lessons 9–10 (audio, animation, particles).
  2. Build the lessons 11–12 starter template and an example finished game.
  3. Verify each project opens and runs.
- **Relevant Context:** `projects/lesson-09` to `lesson-12`.
- **Status:** [x] written, **not tested in Godot**
- **Notes:**
  - Each of `lesson-09` to `lesson-12` has `starter` and `solution` (24 projects in total with lessons 1-8).
  - **Lesson 9:** the starter is the lesson 8 solution plus `coin.wav`, `hit.wav` and `music.wav` in `assets/`. `main.gd` has `# TODO 1-2` and there are no audio nodes. The solution adds `CoinSound`, `HitSound` and `Music` (-10 dB, autoplay) and the two `.play()` lines.
  - **Lesson 10:** the starter's `coin.tscn` has an `AnimationPlayer` with a `bob` animation that has no length and no loop, and a `Sparkle` (`CPUParticles2D`) with default settings. The kids set length 1 and Loop on in step 2 of the lesson plan. The solution has `bob` (1 s, loop, y 0 / -8 / 0, autoplay) and a configured, one-shot `Sparkle`. `coin.gd` has `# TODO 1-3` in the starter.
  - **Lesson 11:** the starter is the lesson 10 solution plus six skins in `assets/skins/`. The solution is a sample remix (cat, fish, ghost, speed 250, 5 lives, "Fish:" label, "Oh no! Press Enter", beige background).
  - **Lesson 12:** the starter equals the lesson 11 starter. The solution is the lesson 11 solution plus `Coin6`, `Coin7` and `Enemy2`.
  - **Audio:** the three WAV files were generated from sine tones by a PowerShell script (22050 Hz, 16-bit, mono). The music is 8 s with an appended `smpl` loop chunk. **Unverified:** whether Godot detects that loop. The lesson 9 plan tells the facilitator to check once and set **Loop Mode** to **Forward** in the Import tab if needed. The docs now say `music.wav` (no OGG encoder was available).
  - **Checked by script only** (all 8 projects of lessons 9-12): no byte-order marks, no CR characters, correct `load_steps`, every `res://`, `ExtResource` and `SubResource` reference resolves, GDScript uses tabs, SVGs are valid XML. Nothing was opened in Godot.
  - **To test when Godot is available:** the loop of `music.wav`; the `bob` animation and the `Sparkle` timing (0.6 s wait in `coin.gd`); the hand-written `AnimationLibrary` in `coin.tscn`; the lesson 10 starter `Sparkle` (it emits by default, so the kids turn Emitting off in the lesson).

### 7. Slide decks
- **Intent:** Give the facilitator visual material to present each lesson.
- **Expected Outcomes:** One deck per lesson, aligned with the lesson plans.
- **Todo List:**
  1. Use Marp Markdown slides (confirmed by the user), which are easy to version-control and export to PDF/PPTX.
  2. Create a deck template.
  3. Create 12 decks (goal, demo, steps, challenge, recap).
- **Relevant Context:** `slides/`. Keep text short and use large, kid-friendly wording.
- **Status:** [x] done (done before sub-tasks 4–6, see the note below)
- **Notes:** `slides/README.md`, `_template.md` and `lesson-01.md` to `lesson-12.md`. A script check confirmed that every deck starts with the Marp header and has between 9 and 14 slides. The decks have **not** been rendered with Marp, because Node was not found on this machine, so check them in the Marp preview. The slide steps repeat the lesson plan, including the Godot menu names that still need checking (see sub-task 3 notes). If a lesson step changes after testing, change its deck too.

### 8. Parent handouts
- **Intent:** Keep parents informed and let kids continue learning at home.
- **Expected Outcomes:** A one-page handout per lesson, plus a course introduction handout.
- **Todo List:**
  1. Write the course introduction (what Godot is, what kids will learn, home-setup notes).
  2. Write a per-lesson handout (what we did, words to know, a conversation question, an optional home activity).
  3. Include a short note on safe and age-appropriate use.
- **Relevant Context:** `parent-handouts/`. Use plain, non-technical language.
- **Status:** [x] done (done before sub-tasks 4–6, see the note below)
- **Notes:** `00-course-introduction.md` plus `lesson-01.md` to `lesson-12.md`. The words in each handout match the "New Words" table of the lesson plan. The home activities use no computer.

### 9. Assessment and certificate
- **Intent:** Recognize and measure what kids have learned.
- **Expected Outcomes:** A printable certificate template and a simple skills checklist.
- **Todo List:**
  1. Create a certificate template (name, date, course title, facilitator signature).
  2. Create a kid-friendly skills checklist tied to the 12 lessons.
  3. Create a facilitator observation sheet for the final project.
- **Relevant Context:** `assessment/`. The format should be printable (for example HTML or PDF). The certificate carries no logo.
- **Status:** [x] done (done before sub-tasks 4–6, see the note below)
- **Notes:** `assessment/certificate.html` (A4 landscape, name, signature and date written by hand, no logo), `skills-checklist.md` (22 skills tied to the lessons), `observation-sheet.md` (facilitator only) and a `README.md` with printing tips. The certificate has no scripts and no external links. It has not been test-printed.

### 10. Final review and README polish
- **Intent:** Make sure the whole package is consistent and usable.
- **Expected Outcomes:** All lessons, projects, slides, and handouts line up, and the README gives a clear entry point.
- **Todo List:**
  1. Cross-check that lesson numbers, titles, and concepts match across all folders.
  2. Walk through every project from lesson 1 to 12.
  3. Check licenses and credits for all assets.
  4. Finalize the README.
- **Relevant Context:** Whole repo.
- **Status:** [x] done as far as possible without Godot (item 2 is blocked)
- **Notes:**
  - **Done (1):** lesson numbers and titles match in `README.md`, `curriculum/README.md`, the 12 lesson plans, the 12 slide decks and the 12 parent handouts. Every file name written in backticks in the docs exists in `projects/`. `music.ogg` was changed to `music.wav` everywhere. The slide decks have 9 to 14 slides each.
  - **Done (3):** `projects/ASSETS.md` now lists every asset (SVG art, skins, and the three generated WAV files). All are self-made, under the repository license.
  - **Done (4):** the `README.md` status section says what is written and what is untested.
  - **Blocked (2):** walking through every project needs Godot. Only script checks were possible (see sub-tasks 4 to 6).
  - **Still open for the user (test list):**
    1. Install Godot (`winget install GodotEngine.GodotEngine`) and open all 24 projects. Accept the project conversion if offered.
    2. Run each project (F5) and walk through the lesson steps. Fix menu and button names in the lesson plans and slides (see the sub-task 3 notes).
    3. Check that `music.wav` loops. If not, set **Loop Mode** to **Forward** in the Import tab.
    4. Check the lesson 10 animation (`bob`) and the `Sparkle` effect.
    5. Render the Marp slides and look for layout problems.
    6. Test-print `assessment/certificate.html`.
    7. After the tests, remove the "not tested" notes from the docs.
  - Nothing was committed.

## Open Questions
- Branding: decided. The course is a volunteer activity, so the slides and the certificate carry no company logo or branding, and the repository uses the generic name "Young Game Makers" (confirmed by the user).
- Language: English only (confirmed by the user).
