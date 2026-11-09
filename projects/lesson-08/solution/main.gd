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
	update_labels()

func _on_enemy_hit():
	if game_over:
		return
	lives -= 1
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
