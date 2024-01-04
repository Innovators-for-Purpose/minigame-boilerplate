extends Timer

var inactive = false
var count = 1

func _on_Timer_timeout():
	var inactive = true
	count = count+1
	print(count)
	if count == 8:
		stop()

