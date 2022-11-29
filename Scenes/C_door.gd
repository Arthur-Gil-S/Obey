extends Area2D

signal on_door_C

func _on_C_door_body_entered(body):
	if body.name == 'Player':
		emit_signal("on_door_C")
