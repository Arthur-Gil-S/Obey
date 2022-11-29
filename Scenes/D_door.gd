extends Area2D

signal on_door_D

func _on_D_door_body_entered(body):
	if body.name == 'Player':
		emit_signal("on_door_D")
