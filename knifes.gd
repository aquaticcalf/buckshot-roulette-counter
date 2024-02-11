extends Label


var my_knifes = 0
var dealer_knifes = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("knifes_increase"): my_knifes = my_knifes + 1
	self.text = str("knifes: ", my_knifes, " - ", dealer_knifes)
	if Input.is_action_just_released("knifes_decrease"): dealer_knifes = dealer_knifes + 1
	self.text = str("knifes: ", my_knifes, " - ", dealer_knifes)
