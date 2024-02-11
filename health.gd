extends Label


var my_health = 0
var dealer_health = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("health_increase"): my_health = my_health + 1
	self.text = str("health: ", my_health, " - ", dealer_health)
	if Input.is_action_just_released("health_decrease"): dealer_health = dealer_health + 1
	self.text = str("health: ", my_health, " - ", dealer_health)
