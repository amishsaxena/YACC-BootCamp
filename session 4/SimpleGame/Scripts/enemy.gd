extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dir=1
var velocity = Vector2.ZERO
var speed=200
const UP = Vector2(0, -1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
# put this inside _process()
	if is_on_wall():
		dir=dir*-1
	velocity.x=speed*dir
	move_and_slide(velocity, UP)

#	pass
