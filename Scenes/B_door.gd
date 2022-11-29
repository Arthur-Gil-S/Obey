extends Area2D

signal on_door_B

func _on_B_door_body_entered(body):
	if body.name == 'Player':
		emit_signal("on_door_B")
