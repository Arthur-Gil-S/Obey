extends Area2D

signal in_moon

func _on_Moon_body_entered(body):
	if body.name == 'Player':
		emit_signal("in_moon")
