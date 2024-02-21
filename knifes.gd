extends Label

var my_knifes = 0
var dealer_knifes = 0

func _ready():
	self.text = str("knifes: ", my_knifes, " - ", dealer_knifes)	

func _process(delta):
	if Input.is_action_just_released("my_knifes_increase"): my_knifes = my_knifes + 1
	self.text = str("knifes: ", my_knifes, " - ", dealer_knifes)
	if Input.is_action_just_released("my_knifes_decrease"): my_knifes = my_knifes - 1
	self.text = str("knifes: ", my_knifes, " - ", dealer_knifes)
	if Input.is_action_just_released("dealer_knifes_increase"): dealer_knifes = dealer_knifes + 1
	self.text = str("knifes: ", my_knifes, " - ", dealer_knifes)
	if Input.is_action_just_released("dealer_knifes_decrease"): dealer_knifes = dealer_knifes - 1
	self.text = str("knifes: ", my_knifes, " - ", dealer_knifes)
