extends Label

var my_magnifying_glasses = 0
var dealer_magnifying_glasses = 0

func _ready():
	self.text = str("magnifying_glasses: ", my_magnifying_glasses, " - ", dealer_magnifying_glasses)	

func _process(delta):
	if Input.is_action_just_released("my_magnifying_glasses_increase"): my_magnifying_glasses = my_magnifying_glasses + 1
	self.text = str("magnifying glasses: ", my_magnifying_glasses, " - ", dealer_magnifying_glasses)
	if Input.is_action_just_released("my_magnifying_glasses_decrease"): my_magnifying_glasses = my_magnifying_glasses - 1
	self.text = str("magnifying glasses: ", my_magnifying_glasses, " - ", dealer_magnifying_glasses)
	if Input.is_action_just_released("dealer_magnifying_glasses_increase"): dealer_magnifying_glasses = dealer_magnifying_glasses + 1
	self.text = str("magnifying glasses: ", my_magnifying_glasses, " - ", dealer_magnifying_glasses)
	if Input.is_action_just_released("dealer_magnifying_glasses_decrease"): dealer_magnifying_glasses = dealer_magnifying_glasses - 1
	self.text = str("magnifying glasses: ", my_magnifying_glasses, " - ", dealer_magnifying_glasses)
