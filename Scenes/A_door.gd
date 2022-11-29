extends Area2D

signal on_door_A

func _on_A_door_body_entered(body):
	if body.name == 'Player':
		emit_signal("on_door_A")
