extends Label


var full_bullets = 0
var empty_bullets = 0

func _ready():
	self.text = str("bullets: ", full_bullets, " - ", empty_bullets)	

func _process(delta):
	if Input.is_action_just_released("full_bullets_increase"): full_bullets = full_bullets + 1
	self.text = str("bullets: ", full_bullets, " - ", empty_bullets)
	if Input.is_action_just_released("full_bullets_decrease"): full_bullets = full_bullets - 1
	self.text = str("bullets: ", full_bullets, " - ", empty_bullets)
	if Input.is_action_just_released("empty_bullets_increase"): empty_bullets = empty_bullets + 1
	self.text = str("bullets: ", full_bullets, " - ", empty_bullets)
	if Input.is_action_just_released("empty_bullets_decrease"): empty_bullets = empty_bullets - 1
	self.text = str("bullets: ", full_bullets, " - ", empty_bullets)
