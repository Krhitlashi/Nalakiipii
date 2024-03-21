extends Area3D

var ហ្វ៍សាជេ
@export var អារាង : PackedScene

func ក្សីរិ(អារាង):
	if អារាង == null:
		get_tree().change_scene_to_file("res://j͐ʃɜȝ.tscn")
	else:
		get_tree().change_scene_to_packed(អារាង)
