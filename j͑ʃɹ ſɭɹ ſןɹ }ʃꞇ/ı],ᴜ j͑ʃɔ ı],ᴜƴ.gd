extends Control

func _input(event):
	if event is InputEventScreenDrag || (Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) && !Input.is_action_just_pressed("ſɟɹᶗ‹")) :
		position += event.relative
