extends Node2D

onready var total = 5
onready var coins : int = 0
var next_step = 0
var next_door = 0

onready var Player := $Player
onready var Door := $Door
onready var Score := $HUD/Score
onready var coin := preload("res://Scenes/Coin.tscn")

export (float, 2.0) var duration = 1.0

onready var transition_animation = get_node("Transition/ColorRect/AnimationPlayer")


func _process(delta):
	open_door()
	
	
func open_door():
	$Door.visible = false
	if coins == total:
		$Door.visible = true
		

func _on_Coin_coin_taken():
	get_tree().call_group("HUD", "update_score")
	coins += 1


func _on_Life_score_no_life():
	get_tree().change_scene("res://Scenes/GameOver.tscn")


func _on_Trap_trapped():
	get_tree().call_group("Life", "update_life_score")


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
		

func coin_appear():
	if next_door == 1:
		var x := coin.instance()
		x.position = global_position
		get_parent().add_child(x)
		x.connect("coin_taken", self, "_on_Coin_coin_taken")

func _on_A_door_on_door_A():
	var i = randi() % 2 + 1
	print(i)
	if i == 1:
		next_door += 1
	else:
		next_door -= 1
	Player.position = $C_pos.position
	coin_appear()


func _on_B_door_on_door_B():
	var i = randi() % 2 + 1
	print(i)
	if i == 1:
		next_door += 1
	else:
		next_door -= 1
	Player.position = $D_pos.position
	coin_appear()


func _on_C_door_on_door_C():
	var i = randi() % 2 + 1
	print(i)
	if i == 1:
		next_door += 1
	else:
		next_door -= 1
	Player.position = $A_pos.position
	coin_appear()


func _on_D_door_on_door_D():
	var i = randi() % 2 + 1
	print(i)
	if i == 1:
		next_door += 1
	else:
		next_door -= 1
	Player.position = $B_pos.position
	coin_appear()


func _on_Door_next_level():
	var Scenes = $Door.scenes
	if coins == total:
		transition_animation.play("Transition")
		$Timer.start(1.0); yield($Timer, "timeout")
		get_tree().change_scene(Scenes)
