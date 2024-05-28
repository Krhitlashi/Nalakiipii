extends Control

func _ready():
	if !DisplayServer.is_touchscreen_available():
		hide()

func កុផុយ():
	if 	$"../ſɭw ſᶘɜ".visible:
		$"../ſןw".hide()
		$"../֭ſɭɔⅎ ɭʃᴜƴ".hide()
		$"../ʃᴜ j͐ʃɹ ı],ᴜ".hide()
		$"../ſɭw ſᶘɜ".hide()
	else:
		$"../ſןw".show()
		$"../֭ſɭɔⅎ ɭʃᴜƴ".show()
		$"../ʃᴜ j͐ʃɹ ı],ᴜ".show()
		$"../ſɭw ſᶘɜ".show()
