extends Timer

var count = 1

func _on_Timer_timeout():
	count = count+1
	print(count)
	if count == 8:
		stop()

