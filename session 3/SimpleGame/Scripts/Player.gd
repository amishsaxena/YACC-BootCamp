extends KinematicBody2D

var velocity = Vector2.ZERO
const SPEED = 500
const G = 50
const UP = Vector2(0, -1)
const JUMP = 1000

var animatedSprite

func _ready():
	animatedSprite = $AnimatedSprite

func _physics_process(delta):
	apply_gravity()
	jump()
	move()
	move_and_slide(velocity, UP)
	animate()
	
func move():
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		velocity.x = SPEED
	else:
		velocity.x = 0
	
	
func apply_gravity():
	if is_on_floor():
		velocity.y = G
	else :
		velocity.y += G
		
func jump():
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = -JUMP
		
func animate():
	if is_on_floor():
		if velocity.x == 0:
			animatedSprite.play("Idle")
		else:
			animatedSprite.play("Run")
	else:
		animatedSprite.play("Jump")
