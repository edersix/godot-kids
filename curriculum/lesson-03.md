# Lesson 3: Move the Hero

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will make my hero walk around with the arrow keys."

## Big Idea (Concept)
Code is a list of instructions the computer follows. A **variable** is a box with a name that remembers a value, such as the hero's speed.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Script | A file with instructions for a node |
| Code | The instructions, written in words the computer understands |
| Variable | A named box that remembers something |
| Function | A group of instructions with a name |

## Materials
- Starter project: `projects/lesson-03/starter`
- Solution project: `projects/lesson-03/solution`
- Slides: `slides/lesson-03.md`
- Parent handout: `parent-handouts/lesson-03.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`hero.gd`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "How did we put the hero in the room?" |
| 5–10 | Demo: the hero walking, then the same hero at three different speeds |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-03/starter`. Run the game. **Checkpoint:** the hero stands still and the arrow keys do nothing.
2. Open `hero.tscn`. The **Hero** node is a **CharacterBody2D**, a node made for things that move. In this lesson's starter its script `hero.gd` is already attached (the small scroll icon next to the node). **Checkpoint:** the scroll icon is visible.
3. Click the scroll icon to open `hero.gd`. **Checkpoint:** the code editor opens and shows a few lines with `# TODO` gaps.
4. Read the code together, one line at a time. Do not explain everything. Just say that `var speed` is a box that remembers a number.
5. Fill in the first gap: set the **speed** box to a number, for example `200`. **Checkpoint:** no red underlines.
6. Fill in the second gap: ask Godot which arrow keys are pressed, using `Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")`. **Checkpoint:** no red underlines.
7. Fill in the third gap: multiply the direction by speed to get `velocity`. **Checkpoint:** no red underlines.
8. Fill in the last gap: `move_and_slide()` tells the hero to move. **Checkpoint:** no red underlines.
9. Save (Ctrl+S) and run. Press the arrow keys. **Checkpoint:** the hero walks in all four directions.
10. Change the speed to `400`, save, run again. Then try `50`. **Checkpoint:** kids see that the box changes how fast the hero is.

## Fill-in-the-Blank Code
Starter script (`hero.gd`), from the blueprint:

```gdscript
extends CharacterBody2D

var speed = 0    # TODO 1: put a number here, for example 200

func _physics_process(delta):
	# TODO 2: ask which arrow keys are pressed
	var direction = Vector2.ZERO
	# TODO 3: make velocity bigger by multiplying direction by speed
	velocity = Vector2.ZERO
	# TODO 4: tell the hero to move
```

| File | Marker | Answer |
|------|--------|--------|
| `hero.gd` | TODO 1 | `var speed = 200` |
| `hero.gd` | TODO 2 | `var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")` |
| `hero.gd` | TODO 3 | `velocity = direction * speed` |
| `hero.gd` | TODO 4 | `move_and_slide()` |

Note for sub-task 4: the starter must run without errors even with the gaps unfilled (the hero just stays still). In the Hero scene, **Motion Mode** is set to **Floating**, because the game is top-down.

## Make It Yours
- Find your favorite speed and write it on a sticky note.
- Change the hero picture: in `hero.tscn` drag a different SVG from `assets/` onto the Sprite2D's Texture.
- Try a negative speed: `-200`. What happens? Why?

## If You Get Stuck
1. "Read the red line. What does Godot say it expected?"
2. Check capital letters and quotation marks. Code is picky about them.
3. Count the brackets: every `(` needs a `)`.
4. Look at the solution project.

## Facilitator Notes
- Indentation matters in GDScript. The starter uses tabs; tell kids to press Tab, never the space bar, to indent.
- The first line, `extends CharacterBody2D`, means "this script is a kind of CharacterBody2D, so it knows how to move". Say only that. Do not use the word "inheritance".
- Common mistake: typing the quotes as curly quotes or forgetting the closing quote.
- Do not teach `delta` now. Say "it helps the game run smoothly" and move on.
- Fast finishers: give the hero a second speed by changing the number in a copy of the project, and compare the two.

## Wrap-Up
- Recap question: "What is a variable? What does `speed` remember?"
- Show-and-tell: a quick race between two heroes with different speeds.
- Next lesson: we build walls so the hero cannot leave the room.
