extends RayCast3D

func _process(_delta):
	var អេស្កេក = self.get_collider()
	
	if self.is_colliding():
		if អេស្កេក.is_in_group("ꞁȷ̀ɜ ſɭɔ˞ꞇ ɽ͑ʃɹ"):
			$"ſɭɔ˞ꞇ ɽ͑ʃɹ".show()
			if អេស្កេក.is_in_group("ꞁȷ̀ɜ ſɭw ſ̀ȷᴜꞇ"):
				$"ſɭɔ˞ꞇ ɽ͑ʃɹ/ſɭɔʞ".text = "ſ̀ȷᴜꞇ \n ſɭw"
				if Input.is_action_just_pressed("ſɭɔ˞ꞇ ɽ͑ʃɹ"):
					Kootlai.ក្សីរិ(អេស្កេក.អារាង)
		if អេស្កេក.is_in_group("ꞁȷ̀ɜ j͑ʃ'ɔ ɭl̀ᴜȝ ɭl̀ɜ"):
			Kiitse.ហ្តេយាង្យុ = true
		else:
			Kiitse.ហ្តេយាង្យុ = false
	else:
		$"ſɭɔ˞ꞇ ɽ͑ʃɹ".hide()
