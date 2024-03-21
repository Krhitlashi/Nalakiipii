extends RayCast3D

func _process(delta):
	var អេស្កេក = self.get_collider()
	
	if self.is_colliding():
		if អេស្កេក.is_in_group("ꞁȷ̀ɜ ſɭɔ˞ꞇ ɽ͑ʃɹ"):
			$"ſɭɔ˞ꞇ ɽ͑ʃɹ".show()
			if Input.is_action_just_pressed("ſɭɔ˞ꞇ ɽ͑ʃɹ"):
				Kootlai.ក្សីរិ(អេស្កេក.អារាង)
	else:
		$"ſɭɔ˞ꞇ ɽ͑ʃɹ".hide()
