extends Area3D

var ហ្វ៍សាជេ

func ក្សីរិ():
	ហ្វ៍សាជេ = preload("res://ʃэ ɭʃɔ ŋᷠɹ.tscn").instantiate()
	add_child(ហ្វ៍សាជេ)
	get_tree().change_scene_to_file("res://j͐ʃɜȝ.tscn")

func _process(delta):
	if Input.is_action_just_pressed("ſɭɔ˞ꞇ ɽ͑ʃɹ"):
		pass
