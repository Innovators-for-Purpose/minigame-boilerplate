extends MarginContainer

onready var Panel1 = $Panel
onready var Label1 = $Label
onready var Label2 = $Label2
onready var Label3 = $Label3
onready var Label4 = $Label4
var active_dialogue = 1
func _ready():
	Label2.hide()
	print("Label2ishidden", !Label2.visible)
	Label3.hide()
	print("Label3ishidden", !Label3.visible)
	Label4.hide()
	print("Label4ishidden", !Label4.visible)

func _physics_process(delta):
	if Input.is_action_just_pressed("game_usage") and active_dialogue == 1:
		Label1.hide()
		Label2.show()
		Label3.hide()
		Label4.hide()
		active_dialogue = 2
	elif Input.is_action_just_pressed("game_usage") and active_dialogue == 2:
		Label1.hide()
		Label2.hide()
		Label3.show()
		Label4.hide()
		active_dialogue = 3
	elif Input.is_action_just_pressed("game_usage") and active_dialogue == 3:
		Label1.hide()
		Label2.hide()
		Label3.hide()
		Label4.show()
		active_dialogue = 4
	elif Input.is_action_just_pressed("game_usage") and active_dialogue == 4:
		Label1.hide()
		Label2.hide()
		Label3.hide()
		Label4.hide()
		Panel1.hide()
