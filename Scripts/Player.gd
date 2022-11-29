extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

onready var _animation_player = $AnimatedSprite

func _process(delta):
	if Input.is_action_pressed("right"):
		_animation_player.play("walking_right")
	elif Input.is_action_pressed("left"):
		_animation_player.play("walking_left")
	elif Input.is_action_pressed("up"):
		_animation_player.play("walking_right")
	elif Input.is_action_pressed("down"):
		_animation_player.play("walking_right")
	else:
		_animation_player.play("breathing")


func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)



