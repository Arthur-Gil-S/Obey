extends Node2D

onready var total = 5
onready var coins : int = 0

onready var Player := $Player
onready var Door := $Door
onready var Score := $HUD/Score


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Door_body_entered(body):
	if Score.score == total:
		get_tree().change_scene("res://Scenes/GameOver.tscn")
