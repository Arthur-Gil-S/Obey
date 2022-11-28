extends Area2D

signal in_full_moon

func _on_FullMoon_body_entered(body):
	if body.name == 'Player':
		emit_signal("in_full_moon")
