extends Control

func _input(event):
	if event is InputEventScreenDrag:
		position = event.get_position() - get_viewport_rect().size / 2
