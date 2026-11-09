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
