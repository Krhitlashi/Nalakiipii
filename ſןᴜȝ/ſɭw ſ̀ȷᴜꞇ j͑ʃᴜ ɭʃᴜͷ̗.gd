extends Area3D

var ក្យេចិហិ = false
var ហ្វ៍សាជេ

func _on_body_entered(_body: PhysicsBody3D):
	ក្យេចិហិ = true

func _on_body_exited(body):
	ក្យេចិហិ = false

func _process(_delta):
	if ក្យេចិហិ == true:
		if Input.is_action_just_pressed("ſɭɔ˞ꞇ ɽ͑ʃɹ"):
			ហ្វ៍សាជេ = preload("res://ʃэ ɭʃɔ ŋᷠɹ.tscn").instantiate()
			add_child(ហ្វ៍សាជេ)
			get_tree().change_scene_to_file("res://ɭl̀э j͑ʃᴜ ɭʃᴜͷ̗.tscn")
