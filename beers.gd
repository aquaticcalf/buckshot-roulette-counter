extends Label


var my_beers = 0
var dealer_beers = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("beers_increase"): my_beers = my_beers + 1
	self.text = str("beers: ", my_beers, " - ", dealer_beers)
	if Input.is_action_just_released("beers_decrease"): dealer_beers = dealer_beers + 1
	self.text = str("beers: ", my_beers, " - ", dealer_beers)
