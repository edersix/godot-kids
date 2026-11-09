extends CharacterBody2D

var speed = 0    # TODO 1: put a number here, for example 200

func _physics_process(delta):
	# TODO 2: ask which arrow keys are pressed
	var direction = Vector2.ZERO
	# TODO 3: make velocity bigger by multiplying direction by speed
	velocity = Vector2.ZERO
	# TODO 4: tell the hero to move
