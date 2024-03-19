extends Area3D

var ក្យេចិហិ = false

func _on_body_entered(body: PhysicsBody3D):
	ក្យេចិហិ = true

func _on_body_exited(body):
	ក្យេចិហិ = false

func _process(delta):
	if ក្យេចិហិ == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://ɭl̀э j͑ʃᴜ ɭʃᴜͷ̗.tscn")
