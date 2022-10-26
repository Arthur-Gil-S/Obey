extends Area2D

signal trapped

func _on_Trap_body_entered(body):
	if body.name == "Player":
		emit_signal("trapped")
