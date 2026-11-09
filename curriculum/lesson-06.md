# Lesson 6: Keep Score

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will show a score on the screen that goes up when I collect a coin."

## Big Idea (Concept)
A **variable** can count things. A **Label** shows words on the screen. A coin can send a signal, and the game can listen and add one to the score.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Label | A node that shows words on the screen |
| HUD | The words and numbers drawn on top of the game (score, lives) |
| `score` | A variable (a box) that remembers the points |
| `emit` | Send a signal |

## Materials
- Starter project: `projects/lesson-06/starter`
- Solution project: `projects/lesson-06/solution`
- Slides: `slides/lesson-06.md`
- Parent handout: `parent-handouts/lesson-06.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`HUD`, `ScoreLabel`, `signal collected`, `main.gd`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "What is a signal? Who can name one?" |
| 5–10 | Demo: the score going up with each coin |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-06/starter` and run it. **Checkpoint:** coins disappear, but there is no score yet.
2. Open `main.tscn`. Select **Main**, press **+**, and add a **CanvasLayer**. Rename it **HUD**. (A CanvasLayer keeps its children on top of the game.) **Checkpoint:** **HUD** is a child of **Main**.
3. Select **HUD**, press **+**, and add a **Label**. Rename it **ScoreLabel**. In the Inspector set **Text** to `Score: 0` and, under **Theme Overrides > Font Sizes**, set **Font Size** to `32`. Move it to the top-left corner. **Checkpoint:** the words "Score: 0" show in the corner.
4. Open `coin.gd`. The coin must tell the game when it is collected. Fill in `# TODO 1` and `# TODO 2` (see the table). **Checkpoint:** no red underlines in `coin.gd`.
5. Save, then open `main.gd` (click the scroll icon next to **Main**). Read the code together. **Checkpoint:** the code editor shows `main.gd` with gaps.
6. Fill in `# TODO 3`, `# TODO 4` and `# TODO 5` (see the table). **Checkpoint:** no red underlines in `main.gd`.
7. Save everything and run. **Checkpoint:** the score goes up by one with every coin.

## Fill-in-the-Blank Code
Starter `coin.gd`:

```gdscript
extends Area2D

# TODO 1: add a signal called collected  ->  signal collected

func _on_body_entered(body):
	if body.name == "Hero":
		# TODO 2: send the signal  ->  collected.emit()
		queue_free()
```

Starter `main.gd`:

```gdscript
extends Node2D

var score = 0

func _ready():
	for coin in $Coins.get_children():
		# TODO 3: listen to the coin's signal
		pass

func _on_coin_collected():
	# TODO 4: add 1 to the score
	# TODO 5: show the score in the label
	pass
```

| File | Marker | Answer |
|------|--------|--------|
| `coin.gd` | TODO 1 | `signal collected` |
| `coin.gd` | TODO 2 | `collected.emit()` |
| `main.gd` | TODO 3 | `coin.collected.connect(_on_coin_collected)` |
| `main.gd` | TODO 4 | `score += 1` |
| `main.gd` | TODO 5 | `$HUD/ScoreLabel.text = "Score: " + str(score)` |

Notes:
- `+= 1` means "add 1". Say it as "score gets one more".
- `str(score)` turns the number into words so it can be glued to "Score: ". Just say "it turns a number into words".
- `$Coins` means "the node called Coins". The `for` line says "for every coin". Do not explain `for` further.

## Make It Yours
- Change the words: "Treasure: ", "Stars: ", "Points: ".
- Change the font size and color of the label.
- Make each coin worth 10 points instead of 1. (Change `score += 1` to `score += 10`.)

## If You Get Stuck
1. "Does the name in `$HUD/ScoreLabel` match the node names in the Scene panel?"
2. Did you save `coin.gd` before `main.gd`?
3. Check capital letters and spaces: `"Score: "` has a space after the colon.
4. Look at the solution project.

## Facilitator Notes
- Common mistake: the `ScoreLabel` is not inside **HUD**, so `$HUD/ScoreLabel` finds nothing. Compare the indentation.
- Common mistake: forgetting `str(...)` and getting an error about adding a number to words. Show the red error text and read it aloud.
- If a coin disappears without adding points, check TODO 2 was filled in.
- Fast finishers: make a bonus coin worth more points (change the variable name and value in a duplicate coin scene).

## Wrap-Up
- Recap question: "What does `score += 1` do? Who sends the signal and who listens?"
- Show-and-tell: highest score in 30 seconds.
- Next lesson: we add an enemy that patrols the room.
