extends Control

func _ready():
	if !DisplayServer.is_touchscreen_available():
		hide()

func កុផុយ():
	if 	$"../ſןw".visible:
		$"../ſןw".hide()
		$"../֭ſɭɔⅎ ɭʃᴜƴ".hide()
		$"../../ʃᴜ j͐ʃɹ ı],ᴜ".hide()
	else:
		$"../ſןw".show()
		$"../֭ſɭɔⅎ ɭʃᴜƴ".show()
		$"../../ʃᴜ j͐ʃɹ ı],ᴜ".show()
