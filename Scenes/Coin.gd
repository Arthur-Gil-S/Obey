extends Area2D

signal coin_taken

func _on_Coin_body_entered(body):
	emit_signal("coin_taken")
	queue_free()
