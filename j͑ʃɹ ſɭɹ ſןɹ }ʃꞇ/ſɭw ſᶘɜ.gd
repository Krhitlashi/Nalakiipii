extends Control

func កុផុយ(អាត្លេ):
	if get_tree().current_scene.has_node("ſ͕ɭɔ }ʃᴜ"):
		if អាត្លេ:
			for កេក in $"..".get_children():
				កេក.hide()
		else:
			for កេក in $"..".get_children():
				កេក.show()
			if !DisplayServer.is_touchscreen_available():
				$"../ſןw".hide()
				$"../֭ſɭɔⅎ ɭʃᴜƴ".hide()
				$"../ſɟƨᴜ ŋᷠᴜ".hide()
			if $"../ɭʃᴜ ŋᷠᴜ".visible:
				$"../ɭʃᴜ ŋᷠᴜ".hide()
		
func ហឹនា(អាត្លេ):
	pass # Replace with function body.
