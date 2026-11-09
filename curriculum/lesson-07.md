# Lesson 7: Meet the Enemy

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will add an enemy that walks back and forth. If it touches my hero, the hero goes back to the start."

## Big Idea (Concept)
An `if` lets the code make choices: "If the enemy is too far right, turn around."

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Enemy | A character the hero must avoid |
| Patrol | Walk back and forth along a path |
| `if` | Do something only when a question is "yes" |
| Direction | Which way something is going (`1` = right, `-1` = left) |

## Materials
- Starter project: `projects/lesson-07/starter`
- Solution project: `projects/lesson-07/solution`
- Slides: `slides/lesson-07.md`
- Parent handout: `parent-handouts/lesson-07.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`enemy.tscn`, `enemy.gd`, `Enemies`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "How does the score work?" Then play "If..." game: "If I clap, you jump" |
| 5–10 | Demo: an enemy patrolling and the hero being sent back |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-07/starter`. Open `enemy.tscn`. **Checkpoint:** an **Enemy** (Area2D) with a Sprite2D and a CollisionShape2D, and a scroll icon for `enemy.gd`.
2. Connect the `body_entered(body)` signal from the **Node** tab, as in lesson 5. **Checkpoint:** green signal icon next to **Enemy**.
3. Open `enemy.gd` and read it together. Fill in `# TODO 1` to `# TODO 4` (see the table). **Checkpoint:** no red underlines.
4. Save. Open `main.tscn`. Select the **Enemies** node and drag `enemy.tscn` into the viewport. Place the enemy in the middle of the room. Keep **Enemies** at position (0, 0). **Checkpoint:** an **Enemy** under **Enemies**.
5. Select the **Enemy**. In the Inspector find the exported values **Speed**, **Left Limit** and **Right Limit**. Set them to `100`, `100` and `500`. **Checkpoint:** the Inspector shows these three values.
6. Run the game. **Checkpoint:** the enemy walks back and forth between x = 100 and x = 500.
7. Open `main.gd`. Fill in `# TODO 5` and `# TODO 6` (see the table). **Checkpoint:** no red underlines.
8. Run. Touch the enemy. **Checkpoint:** the hero jumps back to the start position.

## Fill-in-the-Blank Code
Starter `enemy.gd`:

```gdscript
extends Area2D

signal hit

@export var speed = 100
@export var left_limit = 100
@export var right_limit = 500
var direction = 1

func _process(delta):
	position.x += speed * direction * delta
	# TODO 1: if the enemy is past the right limit, turn left
	if false:
		# TODO 2: direction becomes -1
		pass
	# TODO 3: if the enemy is past the left limit, turn right
	if false:
		# TODO 4: direction becomes 1
		pass

func _on_body_entered(body):
	if body.name == "Hero":
		hit.emit()
```

Starter `main.gd` additions:

```gdscript
var start_position = Vector2.ZERO

func _ready():
	start_position = $Hero.position
	for coin in $Coins.get_children():
		coin.collected.connect(_on_coin_collected)
	for enemy in $Enemies.get_children():
		# TODO 5: listen to the enemy's hit signal
		pass

func _on_enemy_hit():
	# TODO 6: send the hero back to the start position
	pass
```

| File | Marker | Answer |
|------|--------|--------|
| `enemy.gd` | TODO 1 | `if position.x > right_limit:` |
| `enemy.gd` | TODO 2 | `direction = -1` |
| `enemy.gd` | TODO 3 | `if position.x < left_limit:` |
| `enemy.gd` | TODO 4 | `direction = 1` |
| `main.gd` | TODO 5 | `enemy.hit.connect(_on_enemy_hit)` |
| `main.gd` | TODO 6 | `$Hero.position = start_position` |

## Make It Yours
- Change the speed and the limits to make the patrol longer or shorter.
- Add a second and third enemy at different heights, each with its own speed.
- Rotate the story: who is the enemy? A ghost, a robot, a cat?

## If You Get Stuck
1. "Is the signal connected? Look for the green icon next to Enemy."
2. Check `>` and `<`: `>` means "more than", `<` means "less than".
3. Check the dashes: `-1` has a minus sign.
4. Look at the solution project.

## Facilitator Notes
- Common mistake: the enemy walks away and never turns because the limits do not surround it. Make sure `left_limit` is smaller than the enemy's start x and `right_limit` is bigger.
- Common mistake: the enemy sits on top of the hero at the start. Move the enemy away from the hero.
- Keep **Enemies** at (0, 0). The limits are in the enemy's own coordinates relative to it.
- Fast finishers: make a fast enemy and a slow enemy and see which one is harder.

## Wrap-Up
- Recap question: "What does `if position.x > right_limit` ask?"
- Show-and-tell: kids dodge each other's enemies.
- Next lesson: lives and a Game Over screen.
