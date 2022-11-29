extends TextureProgress

onready var life_score := 10
signal no_life

func update_life_score():
	life_score -= 1
	#print($TextureProgress.value)
	self.value -= 10

func look_life():
	if life_score == 0:
		emit_signal("no_life")
		
func _process(delta):
	look_life()
