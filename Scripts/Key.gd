extends StaticBody2D

signal chest_opened
var taked = false
var in_chest_zone = false

func _on_Area2D_body_entered(body: PhysicsBody2D):
	if taked == false:
		taked = true
		$Sprite.queue_free()

func _process(delta):
	if taked == true:
		if in_chest_zone == true:
			if Input.is_action_just_pressed("interact"):
				print('chest opened')
				emit_signal("chest_opened")

func _on_Chest_zone_body_entered(body: PhysicsBody2D):
	in_chest_zone = true
	print(in_chest_zone)

func _on_Chest_zone_body_exited(body):
	in_chest_zone = false
	print(in_chest_zone)
