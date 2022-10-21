extends StaticBody2D

func _ready():
	$Opened.visible = false
	$Closed.visible = true

func _on_Key_chest_opened():
	$Opened.visible = true
	$Closed.visible = false
