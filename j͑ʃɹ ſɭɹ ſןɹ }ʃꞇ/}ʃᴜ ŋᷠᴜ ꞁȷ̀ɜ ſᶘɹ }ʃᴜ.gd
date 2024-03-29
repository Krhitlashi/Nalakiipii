extends Control

func _ready():
	if DisplayServer.is_touchscreen_available():
		hide()

func កុផុយ():
	if 	$"../ſןw".visible:
		$"../ſןw".hide()
		$"../֭ſɭɔⅎ ɭʃᴜƴ".hide()
	else:
		$"../ſןw".show()
		$"../֭ſɭɔⅎ ɭʃᴜƴ".show()
