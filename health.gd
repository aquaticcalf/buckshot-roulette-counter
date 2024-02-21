extends Label

var my_health = 0
var dealer_health = 0

func _ready():
	self.text = str("health: ", my_health, " - ", dealer_health)	

func _process(delta):
	if Input.is_action_just_released("my_health_increase"): my_health = my_health + 1
	self.text = str("health: ", my_health, " - ", dealer_health)
	if Input.is_action_just_released("my_health_decrease"): my_health = my_health - 1
	self.text = str("health: ", my_health, " - ", dealer_health)
	if Input.is_action_just_released("dealer_health_increase"): dealer_health = dealer_health + 1
	self.text = str("health: ", my_health, " - ", dealer_health)
	if Input.is_action_just_released("dealer_health_decrease"): dealer_health = dealer_health - 1
	self.text = str("health: ", my_health, " - ", dealer_health)
