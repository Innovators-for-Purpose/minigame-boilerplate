extends KinematicBody2D

export var original_speed = 500
export var speed = 500
export var player_active = true
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	velocity = Vector2()
		
	if not player_active:
		velocity = 0  # probably not right
		return
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if Input.is_action_pressed("ui_up"):
		velocity.y -= speed
	if Input.is_action_pressed("ui_down"):
		velocity.y += speed
	
	if Input.is_action_pressed("ui_turbo"):
		speed = 1000
	else:
		speed = original_speed
	

	velocity = move_and_slide(velocity)
