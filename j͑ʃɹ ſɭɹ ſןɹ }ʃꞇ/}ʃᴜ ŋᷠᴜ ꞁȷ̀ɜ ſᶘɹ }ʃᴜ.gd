extends Control

func _ready():
	if not DisplayServer.is_touchscreen_available():
		hide()
