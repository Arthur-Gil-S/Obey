extends Control

func _on_NewGame_pressed():
	get_tree().change_scene("res://Obey.tscn")

func _on_Quit_pressed():
	get_tree().change_scene("res://GameOver.tscn")
