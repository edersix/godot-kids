extends Node2D

var score = 0

func _ready():
	for coin in $Coins.get_children():
		coin.collected.connect(_on_coin_collected)

func _on_coin_collected():
	score += 1
	$HUD/ScoreLabel.text = "Score: " + str(score)
