extends Label

var my_beers = 0
var dealer_beers = 0

func _ready():
	self.text = str("beers: ", my_beers, " - ", dealer_beers)	

func _process(delta):
	if Input.is_action_just_released("my_beers_increase"): my_beers = my_beers + 1
	self.text = str("beers: ", my_beers, " - ", dealer_beers)
	if Input.is_action_just_released("my_beers_decrease"): my_beers = my_beers - 1
	self.text = str("beers: ", my_beers, " - ", dealer_beers)
	if Input.is_action_just_released("dealer_beers_increase"): dealer_beers = dealer_beers + 1
	self.text = str("beers: ", my_beers, " - ", dealer_beers)
	if Input.is_action_just_released("dealer_beers_decrease"): dealer_beers = dealer_beers - 1
	self.text = str("beers: ", my_beers, " - ", dealer_beers)
