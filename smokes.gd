extends Label

var my_smokes = 0
var dealer_smokes = 0

func _ready():
	self.text = str("smokes: ", my_smokes, " - ", dealer_smokes)	

func _process(delta):
	if Input.is_action_just_released("my_smokes_increase"): my_smokes = my_smokes + 1
	self.text = str("smokes: ", my_smokes, " - ", dealer_smokes)
	if Input.is_action_just_released("my_smokes_decrease"): my_smokes = my_smokes - 1
	self.text = str("smokes: ", my_smokes, " - ", dealer_smokes)
	if Input.is_action_just_released("dealer_smokes_increase"): dealer_smokes = dealer_smokes + 1
	self.text = str("smokes: ", my_smokes, " - ", dealer_smokes)
	if Input.is_action_just_released("dealer_smokes_decrease"): dealer_smokes = dealer_smokes - 1
	self.text = str("smokes: ", my_smokes, " - ", dealer_smokes)
