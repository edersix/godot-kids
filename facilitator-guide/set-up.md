# Set Up: Before the First Class

The course materials were written on a machine without Godot, Node or Python. They have been checked by scripts and by reading only. Nothing has been opened in Godot yet. Do these steps once, before the first class, and tick each box.

For the normal laptop and classroom preparation, see the [Facilitator Setup Guide](README.md). For the places where the materials are most likely to be wrong, see [Known Risks](known-risks.md).

## 1. Install Godot
- [ ] Install the latest stable Godot 4.x from the [official site](https://godotengine.org/). On Windows you can also run `winget install GodotEngine.GodotEngine` (version 4.7.2 was listed when this was written).
- [ ] Note the exact version you installed: ______________

## 2. Open and Run All 24 Projects
There are 24 projects: a `starter` and a `solution` for each of the 12 lessons, in [`../projects/`](../projects/).

- [ ] Open each project in the Godot Project Manager. Use **Import** and pick the `project.godot` file.
- [ ] If Godot offers to convert the project, accept. The projects say Godot 4.3 in `project.godot`, so a newer Godot may ask.
- [ ] Run each project with **F5**. It must start without red errors in the **Output** panel.
- [ ] Expect these harmless warnings: unused variables in the lesson 3 starter.
- [ ] Write down every project that fails to open or run, and the error message.

| Lessons | Starter opens and runs | Solution opens and runs | Notes |
|---------|------------------------|-------------------------|-------|
| 1 | [ ] | [ ] | |
| 2 | [ ] | [ ] | |
| 3 | [ ] | [ ] | |
| 4 | [ ] | [ ] | |
| 5 | [ ] | [ ] | |
| 6 | [ ] | [ ] | |
| 7 | [ ] | [ ] | |
| 8 | [ ] | [ ] | |
| 9 | [ ] | [ ] | |
| 10 | [ ] | [ ] | |
| 11 | [ ] | [ ] | |
| 12 | [ ] | [ ] | |

## 3. Walk Through Each Lesson
- [ ] For each lesson in [`../curriculum/`](../curriculum/), follow the **Steps** in the lesson plan, starting from the `starter` project. Check every **Checkpoint**.
- [ ] The menu and button names were written from general knowledge of Godot 4.x. Check them against the editor. Examples: **Debug > Visible Collision Shapes**, **Make Unique**, **Instantiate Child Scene**, **Autoplay on Load**, and the animation key icon.
- [ ] Where a name differs, fix it in the lesson plan, the slide deck and the parent handout for that lesson.
- [ ] Check that the `# TODO` answer tables in the lesson plans give a project that runs.

## 4. Check the Music Loops (Lesson 9)
- [ ] Open `projects/lesson-09/solution`, run it, and listen for more than 8 seconds. The music must start again by itself.
- [ ] If it stops, select `assets/music.wav` in the **FileSystem** dock, open the **Import** tab, set **Loop Mode** to **Forward**, and click **Reimport**.
- [ ] If you had to change the setting, also tell the facilitators in the lesson 9 plan (Facilitator Notes) that the setting is needed, and add the setting to the starter project.

## 5. Check the Lesson 10 Animation and Sparkle
- [ ] In `projects/lesson-10/solution`, the coin bobs up and down, and a sparkle plays once when you collect it.
- [ ] In `projects/lesson-10/starter`, check that the kids can follow step 2 of the lesson plan: select the `bob` animation, set the length to `1` and turn on **Loop**.
- [ ] Check that the sparkle does not play at the start once **Emitting** is off and **One Shot** is on.

## 6. Check the Slides
- [ ] Open the decks in [`../slides/`](../slides/) with the Marp extension for VS Code, or install Marp CLI, and look at all 12 decks.
- [ ] Look for text that runs off a slide, tables that are too wide, and broken line breaks.
- [ ] Check that each deck matches its lesson plan (the steps and the menu names).

## 7. Check the Printed Materials
- [ ] Open [`../assessment/certificate.html`](../assessment/certificate.html) in a browser and print one on A4 landscape. Check that it fits on one page.
- [ ] Print one parent handout and check that it fits on one page.

## 8. Run the Readiness Checklist
- [ ] Follow section 3 of the [Facilitator Setup Guide](README.md) on one of the real laptops.
- [ ] Copy the `projects/` folder to every laptop (section 4 of the guide).

## 9. Clean Up After Testing
- [ ] Fix the problems you found in the projects, lesson plans, slides and handouts.
- [ ] Remove the "not tested" notes in [`../README.md`](../README.md) and in [`../godot-kids-training-plan.md`](../godot-kids-training-plan.md) when everything passes.
- [ ] Commit the fixes to the repository.
