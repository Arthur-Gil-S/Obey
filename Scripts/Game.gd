extends Node2D

onready var total = 5
onready var coins : int = 0
onready var actual_level = 1

onready var Player := $Player
onready var Door := $Door
onready var Score := $HUD/Score

func _on_Door_body_entered(body):
	if actual_level == 1:
		if Score.score == total:
			actual_level = 2
			get_tree().change_scene("res://Scenes/Level2.tscn")
	if actual_level == 2:
		if Score.score == total:
			actual_level = 3
			get_tree().change_scene("res://Scenes/Level2.tscn")


func _on_Coin_coin_taken():
	get_tree().call_group("HUD", "update_score")


func _on_Life_score_no_life():
	get_tree().change_scene("res://Scenes/GameOver.tscn")


func _on_Trap_trapped():
	get_tree().call_group("Life", "update_life_score")


var next_step = 0

func _on_Moon_in_moon():
	if next_step != 0:
		Player.position = $Start.position
		next_step = 0
		get_tree().call_group("Life", "update_life_score")
	else:
		next_step = 1


func _on_Star_on_star():
	if next_step != 1:
		Player.position = $Start.position
		next_step = 0
		get_tree().call_group("Life", "update_life_score")
	else:
		next_step = 2


func _on_Sun_on_sun():
	if next_step != 2:
		Player.position = $Start.position
		next_step = 0
		get_tree().call_group("Life", "update_life_score")
	else:
		next_step = 3


func _on_FullMoon_in_full_moon():
	if next_step != 3:
		Player.position = $Start.position
		next_step = 0
		get_tree().call_group("Life", "update_life_score")
	else:
		next_step = 0

