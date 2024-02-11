extends Label


var my_magnifying_glass = 0
var dealer_magnifying_glass = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("magnifying_glass_increase"): my_magnifying_glass = my_magnifying_glass + 1
	self.text = str("magnifying_glass: ", my_magnifying_glass, " - ", dealer_magnifying_glass)
	if Input.is_action_just_released("magnifying_glass_decrease"): dealer_magnifying_glass = dealer_magnifying_glass + 1
	self.text = str("magnifying_glass: ", my_magnifying_glass, " - ", dealer_magnifying_glass)
