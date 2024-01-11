extends Timer

var inactive = false
var count = 1

func _on_Timer_timeout():
	
	if Input.is_action_just_pressed("game_usage"):
		var inactive = true
	count = count+1
	print(count)
	if count == 8:
		stop()

