# Game Blueprint: "Coin Quest"

This file is the single source of truth for the game that kids build across the 12 lessons. The lesson plans (sub-task 3) and the Godot projects (sub-tasks 4–6) must both follow it, so that the lesson text always matches what is on screen.

**The game:** a top-down 2D game. The hero walks around a room, collects coins, and avoids patrolling enemies. The player has 3 lives. When the lives run out, "Game Over" appears and Enter (or Space) restarts the game.

## Technical Choices
- Godot 4.x, **Compatibility renderer**, GDScript only, tabs for indentation.
- No gravity (top-down view), so the hero is a `CharacterBody2D` with **Motion Mode = Floating**.
- Movement uses Godot's built-in input actions (`ui_left`, `ui_right`, `ui_up`, `ui_down`, `ui_accept`), so kids never need to edit the Input Map. (These are the arrow keys, plus Enter and Space for `ui_accept`.)
- Window size: Godot's default (1152 x 648).
- Particles use `CPUParticles2D` (not GPU particles), because it works well with the Compatibility renderer.
- Scripts come **already attached** to their nodes in every starter project. Kids open and edit them.
- Node names are part of the lesson text, and scripts use them. Do not rename them: `Hero`, `Coins`, `Enemies`, `HUD`, `ScoreLabel`, `LivesLabel`, `GameOverLabel`, `CoinSound`, `HitSound`, `Music`, `Sparkle`.

## Final Scene Tree (end of lesson 10)

```
Main (Node2D)                     main.gd
  Background (ColorRect)
  Decorations (Node2D)            tree and flower Sprite2Ds, no collision
  Walls (Node2D)                  several StaticBody2D walls
  Coins (Node2D)                  several instances of coin.tscn
  Enemies (Node2D)                several instances of enemy.tscn (Enemies stays at position 0,0)
  Hero (instance of hero.tscn)
  HUD (CanvasLayer)
    ScoreLabel (Label)
    LivesLabel (Label)
    GameOverLabel (Label, hidden at the start)
  CoinSound (AudioStreamPlayer)
  HitSound (AudioStreamPlayer)
  Music (AudioStreamPlayer, Autoplay on)

hero.tscn:  Hero (CharacterBody2D, hero.gd)
              Sprite2D
              CollisionShape2D

coin.tscn:  Coin (Area2D, coin.gd)
              Sprite2D
              CollisionShape2D
              AnimationPlayer       animation "bob", looping, autoplay
              Sparkle (CPUParticles2D)

enemy.tscn: Enemy (Area2D, enemy.gd)
              Sprite2D
              CollisionShape2D
```

## Where Each Lesson Adds to the Game

| Lesson | Added to the game |
|--------|-------------------|
| 1 | A tiny scene: root `Main` with a `Message` Label (not part of the final game). The kids add a `ColorRect` background |
| 2 | `hero.tscn` gets its Sprite2D; the hero is placed in `main.tscn` |
| 3 | `hero.gd` (movement) |
| 4 | `Walls` |
| 5 | `coin.tscn`, `coin.gd`, the `Coins` node |
| 6 | `HUD`, `ScoreLabel`, `signal collected`, score in `main.gd` |
| 7 | `enemy.tscn`, `enemy.gd`, the `Enemies` node, hero reset on hit |
| 8 | `LivesLabel`, `GameOverLabel`, lives and game over in `main.gd` |
| 9 | `CoinSound`, `HitSound`, `Music` |
| 10 | Coin animation and `Sparkle` particles |
| 11–12 | Kids change and extend their own copy of the game |

## Final Scripts (end of lesson 10)

These are the finished versions. A lesson's solution project contains only the parts added up to that lesson. The `# TODO` gaps in the starters are taken from these lines.

### `hero.gd` (added in lesson 3)
```gdscript
extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()
```

### `coin.gd` (lesson 5 creates it; lessons 6 and 10 add to it)
```gdscript
extends Area2D

signal collected

func _on_body_entered(body):
	if body.name == "Hero":
		collected.emit()
		$Sprite2D.hide()
		$Sparkle.emitting = true
		$CollisionShape2D.set_deferred("disabled", true)
		await get_tree().create_timer(0.6).timeout
		queue_free()
```
- Lesson 5 version: only `if body.name == "Hero":` then `queue_free()`.
- Lesson 6 adds `signal collected` and `collected.emit()`.
- Lesson 10 adds the hide, sparkle, disable and timer lines. The `set_deferred` and `await` lines are written for the kids (they are not gaps), with a comment that explains them.

### `enemy.gd` (added in lesson 7)
```gdscript
extends Area2D

signal hit

@export var speed = 100
@export var left_limit = 100
@export var right_limit = 500
var direction = 1

func _process(delta):
	position.x += speed * direction * delta
	if position.x > right_limit:
		direction = -1
	if position.x < left_limit:
		direction = 1

func _on_body_entered(body):
	if body.name == "Hero":
		hit.emit()
```

### `main.gd` (lessons 6, 7, 8 and 9 add to it)
```gdscript
extends Node2D

var score = 0
var lives = 3
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
	$CoinSound.play()
	update_labels()

func _on_enemy_hit():
	if game_over:
		return
	lives -= 1
	$HitSound.play()
	$Hero.position = start_position
	update_labels()
	if lives <= 0:
		end_game()

func update_labels():
	$HUD/ScoreLabel.text = "Score: " + str(score)
	$HUD/LivesLabel.text = "Lives: " + str(lives)

func end_game():
	game_over = true
	$HUD/GameOverLabel.show()
	$Hero.set_physics_process(false)
```
- Lesson 6: `score`, `_ready` (coins part), `_on_coin_collected`, and the score label line (inline, before `update_labels` exists).
- Lesson 7: the `Enemies` loop in `_ready`, and `_on_enemy_hit` that only resets the hero position.
- Lesson 8: `lives`, `game_over`, `update_labels` (pre-written; the kids **call** it, and learn that a function is a reusable recipe), `end_game`, and the restart in `_process` (pre-written). The score line from lesson 6 moves into `update_labels()` in the lesson 8 starter, so the lesson 8 starter is a small refactor of the lesson 7 solution.
- Lesson 9: the two `.play()` lines.

Safety rule for the lessons: the `Enemies` and `Coins` nodes stay at position (0, 0), because `enemy.gd` moves the enemy by its local `position`.

## Assets (all self-made, no third-party assets)

| File | Used for |
|------|----------|
| `assets/hero.svg`, `coin.svg`, `enemy.svg` | Characters |
| `assets/tree.svg`, `flower.svg` | Decorations (lesson 2 "make it yours") |
| `assets/coin.wav`, `hit.wav` | Sound effects (lesson 9) |
| `assets/music.wav` | Looping background music (lesson 9) |
| `assets/skins/*.svg` | Alternative looks for the hero, coin and enemy (lesson 11) |

Notes for sub-tasks 4–6:
- SVG art is hand-written and imports directly in Godot. Alternative "skins" for lesson 11 are extra SVG files.
- Sounds and music are generated by a small script from simple sine tones, so they are self-made and carry no license problems. How they were made is recorded in `projects/ASSETS.md`.
- The projects contain no `.import` files and no `.godot/` cache. Godot creates them the first time a project is opened. The music is a WAV file with a loop marker; if Godot does not detect it, set **Loop Mode** to **Forward** in the file's **Import** tab (see the lesson 9 plan).
