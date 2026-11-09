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
