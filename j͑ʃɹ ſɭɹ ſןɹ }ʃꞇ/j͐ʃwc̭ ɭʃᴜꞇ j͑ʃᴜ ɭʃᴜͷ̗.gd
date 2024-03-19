extends Area3D

var ក្យេលុង = false

func _on_body_entered(body: PhysicsBody3D):
	ក្យេលុង = true

func _on_body_exited(body):
	ក្យេលុង = false

func _process(delta):
	if ក្យេលុង == true:
		if Input.is_action_just_pressed("ſɭɔ˞ꞇ ɽ͑ʃɹ"):
			get_tree().change_scene_to_file("res://j͐ʃɜȝ.tscn")
