extends Node2D

var score = 0
var start_position = Vector2.ZERO

func _ready():
	start_position = $Hero.position
	for coin in $Coins.get_children():
		coin.collected.connect(_on_coin_collected)
	for enemy in $Enemies.get_children():
		enemy.hit.connect(_on_enemy_hit)

func _on_coin_collected():
	score += 1
	$HUD/ScoreLabel.text = "Score: " + str(score)

func _on_enemy_hit():
	$Hero.position = start_position
