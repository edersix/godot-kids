extends Area2D

signal collected

func _on_body_entered(body):
	if body.name == "Hero":
		collected.emit()
		$Sprite2D.hide()
		$Sparkle.emitting = true
		# This line turns the coin off, so it cannot be collected twice
		$CollisionShape2D.set_deferred("disabled", true)
		# This line waits a little bit, so the sparkle can finish
		await get_tree().create_timer(0.6).timeout
		queue_free()
