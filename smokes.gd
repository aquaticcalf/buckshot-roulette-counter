extends Label


var my_smokes = 0
var dealer_smokes = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("smokes_increase"): my_smokes = my_smokes + 1
	self.text = str("smokes: ", my_smokes, " - ", dealer_smokes)
	if Input.is_action_just_released("smokes_decrease"): dealer_smokes = dealer_smokes + 1
	self.text = str("smokes: ", my_smokes, " - ", dealer_smokes)
