# Known Risks: Please Review These Points

**Warning for the facilitator.** This course was written without opening Godot. The files were checked by scripts and by reading only. The points below are the places where the materials are most likely to be wrong. Review each one before you rely on it in front of the kids.

How to use this list:
- Check each risk before the first class (see also [Set Up: Before the First Class](set-up.md)).
- When you find a problem, fix it in the lesson plan, the slide deck and the parent handout for that lesson. All three repeat the same steps.
- Write the result in the **Result** column.

## Summary

| # | Risk | Likelihood | If wrong, what happens | Where to check | Result |
|---|------|------------|------------------------|----------------|--------|
| 1 | Hand-written scene files (`.tscn`) | Medium | A project does not open, or a node is missing | All 24 projects | |
| 2 | Godot menu and button names | High | Kids cannot find a step and get stuck | All lesson plans | |
| 3 | Music loop in `music.wav` | Medium | Music stops after about 8 seconds | Lesson 9 | |
| 4 | Lesson 10 animation and sparkle | Medium | Coin does not bob, or the sparkle plays at the start | Lesson 10 | |
| 5 | Slides not rendered | Medium | Text runs off a slide, or a table is cut | All 12 decks | |
| 6 | Slide steps not fully compared with lesson plans | Low to medium | The slide says something different from the plan | All 12 decks | |
| 7 | Certificate not test-printed | Low | Does not fit on one A4 page | `assessment/certificate.html` | |
| 8 | Lesson timing | Medium | A lesson runs over 45 minutes | Lessons 7, 8 and 10 first | |
| 9 | Godot version differences | Medium | Names and panels look different | The installed Godot | |

## 1. Hand-written scene files (`.tscn`)

**What could be wrong.** All scenes were written by hand, not saved from the editor. One wrong line can stop a project from opening. The files leave out the `uid` values that Godot normally adds.

**Where it is most likely.**
- `coin.tscn` in lessons 10 to 12: the `AnimationLibrary` and the `CPUParticles2D` (`Sparkle`) settings.
- The `main.tscn` files that contain many nodes and instanced scenes.
- `hero.tscn`, which uses Floating motion mode.

**What to do.**
- Open all 24 projects and run each with **F5**.
- Look at the **Output** panel for red errors.
- If Godot offers to convert the project, accept. The projects say Godot 4.3, so a newer Godot may ask.
- If a scene is broken, open the previous lesson's solution and rebuild the scene in the editor. Saving it from the editor writes a correct file.

## 2. Godot menu and button names

**What could be wrong.** Names such as these were written from general knowledge of Godot 4.x and were not compared with the editor:
- **Debug > Visible Collision Shapes**
- **Make Unique**
- **Instantiate Child Scene**
- **Autoplay on Load** and the animation key icon
- The names of Inspector fields, such as **Motion Mode**, **Volume dB**, **One Shot** and **Explosiveness**

**What to do.**
- Follow every lesson's **Steps** in the editor, from the `starter` project.
- Where a name differs, correct it in `curriculum/lesson-NN.md`, `slides/lesson-NN.md` and `parent-handouts/lesson-NN.md`.
- The steps for a kid aged 8 to 10 need to be exactly right. Do not leave "close enough".

## 3. Music loop (lesson 9)

**What could be wrong.** `music.wav` is 8 seconds long and has a loop marker added by a script. It is not known whether Godot reads that marker.

**What to do.**
- Run `projects/lesson-09/solution` and listen for longer than 8 seconds.
- If the music stops, select `assets/music.wav` in the **FileSystem** dock, open the **Import** tab, set **Loop Mode** to **Forward**, and click **Reimport**.
- Make the same change in the starter project, so the kids do not hit the problem.
- Remember that six laptops playing music in one group is loud. Ask the kids to use headphones or lower the volume.

## 4. Lesson 10: animation and sparkle

**What could be wrong.**
- The `bob` animation in the starter has no length and no loop on purpose. The kids set both in step 2. It is not known whether the editor shows it as the lesson plan says.
- The `Sparkle` node in the starter emits by default. The kids must turn **Emitting** off and **One Shot** on. If they forget, the sparkle plays at the start.
- The coin waits 0.6 seconds before it is removed. The sparkle may look cut off or too long.

**What to do.**
- Walk through lesson 10 once with the starter.
- Change the wait time in `coin.gd` if the sparkle does not fit.

## 5. Slides not rendered

**What could be wrong.** The 12 Marp decks were never rendered, because Node was not available. Long tables or code may run off a slide.

**What to do.**
- Open the decks with the Marp extension for VS Code, or install Marp CLI.
- Look at every slide. Shorten text or split a slide where it does not fit.
- Check that each deck starts with the Marp header and shows no stray text.

## 6. Slide steps not fully compared with lesson plans

**What could be wrong.** The titles, slide counts and the lesson 9 music name were checked. Each slide step was not compared line by line with the lesson plan.

**What to do.**
- While you walk through a lesson, keep its slide deck open next to the plan.
- Fix any step where the two differ. The lesson plan is the source of truth.

## 7. Certificate not test-printed

**What could be wrong.** `assessment/certificate.html` is made for A4 landscape. It was never printed, so margins and page breaks are unchecked.

**What to do.**
- Open it in a browser and print one copy on A4 landscape.
- Check that it fits on one page and that there are no headers or footers added by the browser.
- If you use Letter paper, test that too.

## 8. Lesson timing

**What could be wrong.** No lesson was tried with real children. The time per step is an estimate. Lessons 7, 8 and 10 have the most steps and may not fit in 45 minutes.

**What to do.**
- Pilot lessons 1 to 3 with one or two kids before the course starts. Note which steps take too long.
- Use the **fast finishers** and **if you get stuck** parts of each plan to keep the group together.
- If a lesson is too long, move the last steps into the next lesson, or give the `solution` file for one step.

## 9. Godot version differences

**What could be wrong.** Godot changes between releases. The projects say 4.3, and the latest version may be newer. Panels, menu names and default settings can move.

**What to do.**
- Write down the Godot version you use (in [Set Up](set-up.md)).
- Install the same version on every laptop. Do not update Godot in the middle of the course.

## Not a risk, but good to know

- No company logo or branding is in the materials, because this is a volunteer activity.
- All art and audio were made for this course (see [`../projects/ASSETS.md`](../projects/ASSETS.md)), so there are no third-party licence issues.
- The materials are in English only.

## After You Have Reviewed

- [ ] Every row in the summary table has a result.
- [ ] Fixes are made in the lesson plans, slides, handouts and projects.
- [ ] The "not tested" notes in [`../README.md`](../README.md) and [`../godot-kids-training-plan.md`](../godot-kids-training-plan.md) are removed or updated.
