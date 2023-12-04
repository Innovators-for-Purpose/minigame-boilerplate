extends Area2D

var picked_up = false
var in_object = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventKey and Input.is_action_just_pressed("ui_pickup") and picked_up:
		picked_up = false
	elif event is InputEventKey and Input.is_action_just_pressed("ui_pickup"):
		picked_up = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	if picked_up:
		position = get_node('/root/MinigameBoilerplate/MainPlayer').position

func _on_LiftableObject_body_entered(body):
	if body.name == "MainPlayer":
		in_object = true
