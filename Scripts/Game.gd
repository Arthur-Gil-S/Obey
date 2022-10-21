extends Node2D

onready var total = 5
onready var coins : int = 0

onready var Player := $Player
onready var Door := $Door
onready var Score := $HUD/Score

func _on_Door_body_entered(body):
	if Score.score == total:
		get_tree().change_scene("res://Scenes/GameOver.tscn")



func _on_Coin_coin_taken():
	get_tree().call_group("HUD", "update_score")
	$Coin.queue_free()


func _on_Coin2_coin_taken():
	get_tree().call_group("HUD", "update_score")
	$Coin2.queue_free()


func _on_Coin3_coin_taken():
	get_tree().call_group("HUD", "update_score")
	$Coin3.queue_free()


func _on_Coin4_coin_taken():
	get_tree().call_group("HUD", "update_score")
	$Coin4.queue_free()


func _on_Coin5_coin_taken():
	get_tree().call_group("HUD", "update_score")
	$Coin5.queue_free()
