extends Area2D

# TODO 1: add a signal called collected  ->  signal collected

func _on_body_entered(body):
	if body.name == "Hero":
		# TODO 2: send the signal  ->  collected.emit()
		queue_free()
