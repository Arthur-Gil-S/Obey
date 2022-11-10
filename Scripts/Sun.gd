extends Area2D

signal on_sun

func _on_Sun_body_entered(body):
	if body.name == 'Player':
		emit_signal("on_sun")
