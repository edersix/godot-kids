# Curriculum Overview

**Course:** Make Your First Game in Godot
**Audience:** kids aged 8–10, complete beginners
**Language:** English
**Format:** 12 lessons of about 45 minutes each, 1 facilitator for every 6 kids
**Engine:** latest stable Godot 4.x, GDScript, Compatibility renderer

## What Kids Will Do
Every lesson adds one feature to the same small game, "Coin Quest": a hero walks around, collects coins, avoids enemies, and has three lives. In lessons 11 and 12 the kids turn it into their own game and show it to the group.

The full game design (scene tree, scripts, node names) is in [`game-blueprint.md`](game-blueprint.md). Every lesson plan and every Godot project follows it.

## Learning Goals
By the end of the course, a child can:
1. Find the main parts of the Godot editor and run a game.
2. Explain that a game is built from **nodes**, and that nodes are grouped into **scenes**.
3. Add a picture (sprite) to a scene and move it around.
4. Change a few lines of code (numbers, words, `if`) and predict what will happen.
5. Make a character move, stop at walls, and collect things.
6. Use a variable to keep score and lives.
7. Add sound and simple effects.
8. Change a game to make it their own, and show it to others.

## How the Lessons Are Taught
- **Mostly clicking, little typing.** Most work is in the visual editor. Code is short and comes with gaps to fill in (marked `# TODO`).
- **One idea per lesson.** Each lesson has a single "Big Idea".
- **Always something to play.** Every child can run a working game at the end of every lesson.
- **Checkpoints.** Every few steps there is a "you should see..." line, so the facilitator and the kids know they are on track.
- **Make it yours.** Every lesson ends with an open creative step.
- **Fast finishers.** Each lesson has an extra challenge, so nobody waits.
- **Reset each lesson.** Each lesson starts from its own `starter` project, so a child who fell behind is back on track.

## Lesson Plans

| # | Lesson | Big idea | Plan |
|---|--------|----------|------|
| 1 | Meet Godot | Nodes and scenes | [lesson-01.md](lesson-01.md) |
| 2 | Sprites and Scenes | A scene is a tree of nodes | [lesson-02.md](lesson-02.md) |
| 3 | Move the Hero | Code gives instructions; variables remember | [lesson-03.md](lesson-03.md) |
| 4 | Walls and Worlds | Bodies and collision shapes | [lesson-04.md](lesson-04.md) |
| 5 | Collect Coins | Signals: "something happened" | [lesson-05.md](lesson-05.md) |
| 6 | Keep Score | Variables count things; labels show them | [lesson-06.md](lesson-06.md) |
| 7 | Meet the Enemy | `if` makes choices | [lesson-07.md](lesson-07.md) |
| 8 | Lives and Game Over | Functions are reusable recipes | [lesson-08.md](lesson-08.md) |
| 9 | Sound and Music | Nodes can be told what to do | [lesson-09.md](lesson-09.md) |
| 10 | Make It Shine | Animation and particles | [lesson-10.md](lesson-10.md) |
| 11 | My Own Game (Part 1) | Plan before you build | [lesson-11.md](lesson-11.md) |
| 12 | My Own Game (Part 2) and Showcase | Finish, share, celebrate | [lesson-12.md](lesson-12.md) |

## Skills Ladder

| Skill | L1 | L2 | L3 | L4 | L5 | L6 | L7 | L8 | L9 | L10 | L11 | L12 |
|-------|----|----|----|----|----|----|----|----|----|-----|-----|-----|
| Use the editor | introduce | practice | practice | practice | practice | practice | practice | practice | practice | practice | use | use |
| Nodes and scenes | introduce | practice | | practice | practice | | practice | | practice | practice | use | use |
| Variables | | | introduce | | | practice | | practice | | | use | use |
| `if` | | | | | introduce | | practice | practice | | | use | use |
| Signals | | | | | introduce | practice | practice | | | | use | use |
| Functions | | | | | | | | introduce | practice | | use | use |

## Shared Resources
- [`lesson-template.md`](lesson-template.md): the structure every lesson plan follows
- [`game-blueprint.md`](game-blueprint.md): the game design shared by lessons and projects
- [`resources/game-design-card.md`](resources/game-design-card.md): the planning sheet for lesson 11
- [`../facilitator-guide/README.md`](../facilitator-guide/README.md): setup and classroom tips
- [`../projects/README.md`](../projects/README.md): project conventions

## Facilitator Conventions Used in the Lesson Plans
- **Checkpoint** means: stop and make sure every child sees the described result before moving on.
- **Code gaps** are listed with their answers in each lesson's "Fill-in-the-Blank Code" table. Do not give the answers out at the start.
- **Hints** are ordered from smallest to largest. The solution project is always the last hint.
- Menu names and button names in the lessons follow the English version of the Godot 4 editor. If the editor looks different on your Godot version, use the Godot documentation to find the new name, and write it down for the next class.
