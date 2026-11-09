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
