extends Area2D

func _on_player_entered(body) -> void:
	if "Player" in body.name:
		body.queue_free()
	
