# Lesson 8: Lives and Game Over

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will give my hero three lives, and show Game Over when they run out."

## Big Idea (Concept)
A **function** is a recipe with a name. When we use it many times, we do not have to write the steps again.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Function | A recipe: a named group of instructions |
| Call | Use a function: run its recipe |
| Lives | How many tries the player has left |
| Game over | When the player has no lives left |

## Materials
- Starter project: `projects/lesson-08/starter`
- Solution project: `projects/lesson-08/solution`
- Slides: `slides/lesson-08.md`
- Parent handout: `parent-handouts/lesson-08.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`LivesLabel`, `GameOverLabel`, `lives`, `game_over`, `update_labels`, `end_game`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "What happens when the hero touches the enemy?" Then: a recipe for a sandwich is a function |
| 5–10 | Demo: three lives, then Game Over and restart |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-08/starter`. Run it. **Checkpoint:** touching the enemy sends the hero back, but nothing counts lives.
2. Open `main.tscn`. Select **HUD** and add two **Label** nodes: **LivesLabel** (Text: `Lives: 3`) and **GameOverLabel** (Text: `Game Over! Press Enter`). Put **LivesLabel** under the score, and **GameOverLabel** in the middle of the screen, with a big font. **Checkpoint:** three labels in the HUD.
3. Select **GameOverLabel** and in the Inspector turn off **Visible** (the eye icon). **Checkpoint:** the Game Over text disappears from the viewport.
4. Open `main.gd` and read it together. Explain that `update_labels` is a **recipe** that writes the score and lives into the labels. Fill in `# TODO 1` to `# TODO 6` (see the table). **Checkpoint:** no red underlines.
5. Save and run. Touch the enemy three times. **Checkpoint:** lives go down 3, 2, 1, then "Game Over! Press Enter" appears and the hero stops.
6. Press Enter. **Checkpoint:** the game restarts.

## Fill-in-the-Blank Code
Starter `main.gd`:

```gdscript
extends Node2D

var score = 0
# TODO 1: add a variable lives that starts at 3
var game_over = false
var start_position = Vector2.ZERO

func _ready():
	start_position = $Hero.position
	for coin in $Coins.get_children():
		coin.collected.connect(_on_coin_collected)
	for enemy in $Enemies.get_children():
		enemy.hit.connect(_on_enemy_hit)
	update_labels()

func _process(delta):
	if game_over and Input.is_action_just_pressed("ui_accept"):
		get_tree().reload_current_scene()

func _on_coin_collected():
	score += 1
	update_labels()

func _on_enemy_hit():
	if game_over:
		return
	# TODO 2: take away one life
	$Hero.position = start_position
	update_labels()
	# TODO 3: if lives are 0 or less, call end_game()

func update_labels():
	$HUD/ScoreLabel.text = "Score: " + str(score)
	# TODO 4: show the lives in LivesLabel

func end_game():
	# TODO 5: set game_over to true
	# TODO 6: show the GameOverLabel
	$Hero.set_physics_process(false)
```

| File | Marker | Answer |
|------|--------|--------|
| `main.gd` | TODO 1 | `var lives = 3` |
| `main.gd` | TODO 2 | `lives -= 1` |
| `main.gd` | TODO 3 | `if lives <= 0:` followed by an indented `end_game()` |
| `main.gd` | TODO 4 | `$HUD/LivesLabel.text = "Lives: " + str(lives)` |
| `main.gd` | TODO 5 | `game_over = true` |
| `main.gd` | TODO 6 | `$HUD/GameOverLabel.show()` |

Notes:
- `update_labels()` is already written for the kids. They only **call** it. The point is that one recipe is used many times.
- Note for sub-task 5: this starter is not simply the lesson 7 solution plus gaps. The score line that lesson 6 wrote inside `_on_coin_collected` is moved into `update_labels()`, and `_ready` and `_on_coin_collected` now call `update_labels()`. The lesson 7 solution therefore keeps the inline score line, and the lesson 8 starter has the refactored version. Tell the kids: "we moved the score line into a recipe, so we do not repeat it."
- `reload_current_scene()` and `set_physics_process(false)` are written for the kids. Tell them: "this restarts the game" and "this stops the hero from moving".
- Press Enter or Space restarts the game (the `ui_accept` action).

## Make It Yours
- Change the starting lives to 1 (hard mode) or 10 (easy mode).
- Change the Game Over message to something funny.
- Make the Game Over label a new color.

## If You Get Stuck
1. "Did you create the labels inside HUD with exactly the right names?"
2. "Is `end_game()` indented under the `if`?"
3. Check `<=` (less than or equal to).
4. Look at the solution project.

## Facilitator Notes
- Common mistake: the Game Over label is visible from the start because Visible was not turned off.
- Common mistake: wrong indentation for TODO 3. The call must be inside the `if`.
- Common mistake: the label names are typed differently, so Godot cannot find the node (an error appears). Read the error with the child.
- Fast finishers: add a second restart key, or make the label show how many coins were collected.

## Wrap-Up
- Recap question: "What is a function? Which function did we call many times?"
- Show-and-tell: the funniest Game Over message.
- Next lesson: sound and music.
