# Facilitator Setup Guide

This guide helps you get Godot and the laptops ready before the first class. You don't need to know Godot beforehand.

- **Audience:** kids aged 8–10, complete beginners
- **Class format:** 12 lessons of about 45 minutes each
- **Staffing:** 1 facilitator for every 6 kids. Class sizes are multiples of 6 (6, 12, 18...), with one facilitator per group of 6.

## 1. What You Need

| Item | Notes |
|------|-------|
| One laptop per child | Windows, macOS or Linux. The Godot editor must run on it. |
| Mouse per laptop | Strongly recommended. Kids this age find a touchpad hard to use for drag-and-drop. |
| Headphones (optional) | Needed from lesson 9 (sound and music). Without them, sound plays through the speakers. |
| Facilitator laptop | Connected to a projector or screen for demos, with slides open. |
| Printed handouts | See [`../parent-handouts/`](../parent-handouts/). |
| This repo | Copied onto every laptop (see section 4). |

## 2. Install Godot

Install on every laptop **at least one day before** the first class.

1. Open the official site: <https://godotengine.org/download>
2. Download the **latest stable Godot 4.x** for the laptop's operating system.
   - Choose the standard version, **not** the ".NET" or "Mono" version. This course uses GDScript only.
   - Use the same Godot version on every laptop, so all screens look the same.
3. Check the download before running it. The official download page and the Godot release page list checksums (SHA-512) for each file. Compare the checksum of your file with the published one.
   - Windows (PowerShell): `Get-FileHash .\<downloaded-file>.zip -Algorithm SHA512`
   - macOS / Linux: `shasum -a 512 <downloaded-file>`
4. Unpack and start Godot.
   - Godot is a single program that doesn't need an installer. On Windows it comes as a zip file: unzip it into a folder such as `C:\Godot`, then double-click the `.exe`.
   - On macOS, drag the app into the Applications folder.
5. Make it easy to open: create a desktop shortcut on each laptop.

> Write down the exact version number you installed (shown in the title bar and in **Help > About Godot**) and use it for all 12 lessons. Don't update Godot in the middle of the course.

## 3. Check That the Laptop Is Ready

Complete this checklist for **every** laptop.

- [ ] Godot starts without errors and shows the Project Manager
- [ ] The course folder is copied onto the laptop (section 4)
- [ ] `projects/lesson-01/starter` opens in Godot
- [ ] Pressing **Run** (the play button, or F5) opens a game window
- [ ] The mouse works for dragging in the editor
- [ ] Sound works (needed from lesson 9)
- [ ] The screen is big enough to see the editor panels without scrolling much
- [ ] The laptop has enough battery or is plugged in

If the editor shows a graphics or rendering error, see the troubleshooting table below.

## 4. Get the Projects onto the Laptops

Kids do not need Git or an internet connection during class.

1. Copy the whole course folder to each laptop, for example with a USB stick or a shared school drive.
   - Put it somewhere simple, such as `Documents\godot-kids`.
2. In Godot's Project Manager, choose **Import**, then browse to the lesson's `starter` folder and select its `project.godot` file.
3. Each child works **only** in the `starter` project for the current lesson.
4. Keep the `solution` folders for yourself. Use them to check the checkpoints or to help a stuck child, and don't give them out at the start.
5. After each lesson, kids carry on from the next lesson's `starter`, not from their own saved work. This way a child who fell behind is back on track. If a child wants to keep their own version, they can save a copy of their folder with their name on it.

> Starter projects don't contain the hidden `.godot/` cache folder. Godot creates it on the first open, so the first import takes a little longer.

## 5. Running a Lesson

Each lesson plan in [`../curriculum/`](../curriculum/) follows the same timing:

| Minutes | Activity |
|---------|----------|
| 0–5 | Warm-up and recap |
| 5–10 | Demo of the finished feature |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

### Working with groups of 6
- Seat each group of 6 around one facilitator, so you can see all the screens.
- Before each class, run the lesson yourself once, so you know where kids will get stuck.
- Do the **checkpoints** together. Say "Hands up when you see the hero on the screen", and don't move on until most hands are up.
- Pair a child who finished early with a child who is stuck, but let them *point and explain*, not take the mouse.
- Use the **If You Get Stuck** hints in the lesson plan in order. Look at the solution project last.
- Let kids make mistakes. Saying "What do you think will happen if we change this number?" works better than giving the answer.

### Keeping it fun and safe
- Keep each activity short. Change activity every 10 minutes or so.
- Celebrate small wins. Every child should run a game in every lesson.
- Only use the provided starter projects and assets. Don't let kids download assets from the internet during class.
- Make sure kids don't share personal information (names are fine on the certificate; no addresses, phone numbers or photos on screen).
- Follow your organization's child-safety and supervision rules at all times.

## 6. Troubleshooting

| Problem | Try this |
|---------|----------|
| Godot won't start | Check that you downloaded the right version for the operating system (for example 64-bit). Download it again and compare the checksum. |
| Graphics or rendering error on an older laptop | Close Godot, reopen it, and choose a different renderer in the Project Manager or the project's settings. The "Compatibility" renderer works on more laptops than "Forward+". The lesson projects are meant to run on the Compatibility renderer. |
| Project won't import or shows "missing dependencies" | Make sure the whole `starter` folder was copied, including the `project.godot` file. Copy it again. |
| Pressing Run does nothing | Check the project has a main scene set (**Project > Project Settings > Application > Run**). Starter projects already have one, so re-copy the folder if it's missing. |
| A script shows red errors | Look for the first red line. Most often a `# TODO` gap was left empty, or a word was mistyped. Check the lesson's answer table. |
| Editor panels are in the wrong place | In the **Editor** menu choose **Layout** and reset to the default layout, or ask a helper to fix it. |
| The text in the editor is too small for kids | Open **Editor > Editor Settings > Interface > Editor** and increase the display scale, then restart Godot. |
| No sound | Check the laptop volume, check that headphones are plugged in, and check that the audio output is the right device. |
| A child has lost their work | Reopen the project from the Project Manager. If it's gone, copy the lesson's `starter` folder again and continue from there. |

## 7. Before Each Lesson: Quick Checklist

- [ ] I did the lesson myself and know the answers to the `# TODO` gaps
- [ ] Slides are ready and the projector works
- [ ] Every laptop has the lesson's `starter` project
- [ ] Parent handout for this lesson is printed
- [ ] Extra challenge ready for fast finishers
- [ ] I know which child may need extra help

## 8. After the Course

- Hand out the certificates and the final parent handout (see [`../assessment/`](../assessment/)).
- Collect feedback from kids and parents, and note what to improve.
