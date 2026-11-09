# Lesson 5: Collect Coins

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will make coins that disappear when my hero touches them."

## Big Idea (Concept)
A **signal** is a message a node sends when something happens. We listen for it and react. An `if` lets the code make a choice.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Area2D | A node that notices when something enters it, but does not block it |
| Signal | A message: "Something happened!" |
| `if` | "Only do this when something is true" |
| `queue_free()` | Remove this node from the game |

## Materials
- Starter project: `projects/lesson-05/starter`
- Solution project: `projects/lesson-05/solution`
- Slides: `slides/lesson-05.md`
- Parent handout: `parent-handouts/lesson-05.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`coin.tscn`, `coin.gd`, `Coins`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "How did we build the walls?" Then: a doorbell is a signal. Who hears it? |
| 5–10 | Demo: the hero collecting coins |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-05/starter`. Open `coin.tscn`. **Checkpoint:** you see **Coin** (an Area2D) with a Sprite2D and a CollisionShape2D, and a scroll icon for `coin.gd`.
2. Click **Coin**. Next to the **Inspector** tab there is a **Node** tab. Open it and choose **Signals**.
3. Double-click **body_entered(body)**. In the window that opens, make sure **Coin** is selected and the receiver method is `_on_body_entered`, then press **Connect**. The function already exists in `coin.gd`, so Godot connects to it and does not add a second one. **Checkpoint:** a green icon appears next to **Coin** in the Scene panel.
4. Read the code together. Explain: when something enters the coin, Godot sends the signal, and this function runs.
5. Fix the first gap, `# TODO 1`: change `false` to `body.name == "Hero"`. This means: only react when it is the hero.
6. Fix the second gap, `# TODO 2`: change `pass` to `queue_free()`.
7. Save the script and the scene (Ctrl+S).
8. Open `main.tscn`. Select the **Coins** node. Drag `coin.tscn` into the viewport 5 times and put the coins where the hero can reach them. **Checkpoint:** five **Coin** nodes appear under **Coins**.
9. Run the game. **Checkpoint:** each coin disappears when the hero touches it.

## Fill-in-the-Blank Code
Starter code (`coin.gd`):

```gdscript
extends Area2D

func _on_body_entered(body):
	# TODO 1: change false to  body.name == "Hero"
	if false:
		# TODO 2: change pass to  queue_free()
		pass
```

| File | Marker | Answer |
|------|--------|--------|
| `coin.gd` | TODO 1 | `if body.name == "Hero":` |
| `coin.gd` | TODO 2 | `queue_free()` |

Note for sub-task 5: the starter's `coin.gd` already contains `_on_body_entered`, but the signal is **not** connected in `coin.tscn`. The kids make the connection in step 3, and the solution has it connected.

## Make It Yours
- Place the coins in a shape: a path, a circle, or a heart.
- Hide a coin in a corner of your maze.

## If You Get Stuck
1. Is the green signal icon next to **Coin** in `coin.tscn`? If not, connect the signal again.
2. Check the quote marks around `Hero`, and the capital H.
3. Look at the solution project.

## Facilitator Notes
- Common mistake: the signal is connected twice and Godot shows an error. Disconnect it from the Node tab and connect once.
- Common mistake: a coin is placed outside the **Coins** node. Drag it onto **Coins** in the Scene panel. Keep **Coins** at position (0, 0).
- Cookie-cutter idea again: `coin.tscn` is the cutter and every coin placed in `main.tscn` is a cookie. All coins share the same code, but each coin has its own place, and each one disappears on its own. Ask: "If I collect one coin, why do the others stay?"
- The `if false:` is a bug on purpose. Let kids run the game and see that the coins do not vanish. Ask them to find out why.
- Fast finishers: make a coin much bigger and place it in the hardest spot.

## Wrap-Up
- Recap question: "What is a signal? What does the `if` check?"
- Show-and-tell: kids show their coin shapes.
- Next lesson: we keep score and show it on the screen.
