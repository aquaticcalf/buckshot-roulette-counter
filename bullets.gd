extends Label


var my_bullets = 0
var dealer_bullets = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("bullets_increase"): my_bullets = my_bullets + 1
	self.text = str("bullets: ", my_bullets, " - ", dealer_bullets)
	if Input.is_action_just_released("bullets_decrease"): dealer_bullets = dealer_bullets + 1
	self.text = str("bullets: ", my_bullets, " - ", dealer_bullets)
