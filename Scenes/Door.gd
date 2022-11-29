extends Area2D

signal next_level

export(String, FILE, "*.tscn") var scenes

func _on_Door_body_entered(body):
	emit_signal("next_level")
