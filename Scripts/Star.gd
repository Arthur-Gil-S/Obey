extends Area2D

signal on_star

func _on_Star_body_entered(body):
	if body.name == 'Player':
		emit_signal("on_star")
