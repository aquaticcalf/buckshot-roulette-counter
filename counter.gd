extends Node2D

var settings = preload("res://settings.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("settings"): 
		get_tree().change_scene_to_packed(settings)
