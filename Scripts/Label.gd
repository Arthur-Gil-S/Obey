extends Label

onready var targetCoin := 5
onready var coin := 0

func updateCoin():
	coin += 1
	text = str(coin) + " / " + str(targetCoin)


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
