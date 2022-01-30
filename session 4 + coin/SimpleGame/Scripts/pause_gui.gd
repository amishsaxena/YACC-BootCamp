extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var isPaused=false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_pause"):
		isPaused=!isPaused
		print(isPaused)
		self.set_visible(isPaused)
		get_tree().set_pause(isPaused)
func _on_Button_pressed():
	get_tree().change_scene("res://Levels/intro_gui.tscn")
