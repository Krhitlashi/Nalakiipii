extends Control

func _ready():
	if not DisplayServer.is_touchscreen_available() || Kiitse.ផ៏តេមិ == true:
		hide()
