# Lesson 2: Sprites and Scenes

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will put my hero on the screen and place it where I want."

## Big Idea (Concept)
A scene is a **tree** of nodes. A parent node can have children, and when you move the parent, the children move with it.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Sprite | A picture in a game |
| Parent / child | A node holding other nodes / a node inside another node |
| Position | Where something is on the screen (x goes right, y goes down) |
| Instance | A copy of a scene you put into another scene. The scene is the cookie cutter and each copy is a cookie |

## Materials
- Starter project: `projects/lesson-02/starter`
- Solution project: `projects/lesson-02/solution`
- Slides: `slides/lesson-02.md`
- Parent handout: `parent-handouts/lesson-02.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`hero.tscn` gets its `Sprite2D`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "What is a node? What is a scene?" |
| 5–10 | Demo: a hero standing in the room |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-02/starter` in Godot. **Checkpoint:** the editor shows `main.tscn` with a colored background.
2. In the FileSystem panel, double-click `hero.tscn`. This is a small scene for the hero. It has a **Hero** node and one child called **CollisionShape2D**, the hero's invisible outline (we use it in lesson 4). **Checkpoint:** the Scene panel shows **Hero** with **CollisionShape2D** indented below it.
3. With **Hero** selected, press the **+** button (Add Child Node) and add a **Sprite2D**. **Checkpoint:** **Sprite2D** is shown indented below **Hero**, next to **CollisionShape2D**. They are both children.
4. Select **Sprite2D**. In the Inspector, drag `assets/hero.svg` from the FileSystem panel onto the **Texture** field. **Checkpoint:** the hero picture appears in the viewport.
5. Save with Ctrl+S. Then open `main.tscn` using its tab at the top of the viewport. **Checkpoint:** the Main scene is back.
6. Drag `hero.tscn` from the FileSystem panel into the viewport, or right-click **Main** and choose **Instantiate Child Scene**. **Checkpoint:** **Hero** is now a child of **Main**.
7. Select **Hero** and look at **Transform > Position** in the Inspector. Change it to `576` and `324` (this is the middle of the window). **Checkpoint:** the hero is in the middle of the room.
8. Run the game. **Checkpoint:** the hero stands in the middle of the window.
9. Explain the "tree" idea: select **Hero** and drag it in the viewport. Its Sprite2D child moves along. **Checkpoint:** kids say "the child moves with the parent". Press Ctrl+Z to put it back.
10. Save and run once more. **Checkpoint:** hero in the middle.

## Fill-in-the-Blank Code
No code in this lesson.

| File | Marker | Answer |
|------|--------|--------|
| (none) | (none) | (none) |

## Make It Yours
- Place your hero anywhere you like.
- Add decorations: drag `assets/tree.svg` and `assets/flower.svg` into the viewport. Group them under a **Node2D** called **Decorations** (right-click **Main** > Add Child Node > Node2D, then rename it with F2).
- Change the background color of **Background** in the Inspector.

## If You Get Stuck
1. "Is the Sprite2D a child of the Hero?" (Look at the indent.)
2. "Which scene tab are you in, Hero or Main?"
3. Show where the Texture field is in the Inspector.
4. Look at the solution project.

## Facilitator Notes
- Common mistake: adding the Sprite2D to **Main** instead of to **Hero**. Compare the indentation.
- Common mistake: editing the wrong tab. Teach "check the tab name" as a habit.
- Position uses pixels: x grows to the right, y grows **down**. Draw it on a whiteboard.
- Fast finishers: add three trees and a flower, then move the Decorations parent and see them all move.

## Wrap-Up
- Recap question: "Which node is the parent and which is the child?"
- Show-and-tell: kids show their room.
- Use the cookie-cutter idea: `hero.tscn` is the cutter and the Hero in `main.tscn` is one cookie made from it. Change the cutter (`hero.tscn`) and every cookie changes. We use this again with coins and enemies.
- Next lesson: we make the hero move with the keyboard.
