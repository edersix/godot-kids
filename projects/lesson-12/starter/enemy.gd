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
