extends Area2D

signal coin_taken
var taken = false

func _on_Coin_body_entered(body):
	if taken == false:
		taken = true

func _process(delta):
	if taken == true:
		taken = false
		emit_signal("coin_taken")
		
