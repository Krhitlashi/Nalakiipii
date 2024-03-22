extends Area3D

var ហ្វ៍សាជេ
@export var អារាង : PackedScene = load("res://j͐ʃɜȝ.tscn")

func ក្សីរិ(កឺត្លអារាង):
	if កឺត្លអារាង == null:
		Xaatemii.ងឹមាអារាង("res://j͐ʃɜȝ.tscn")
	else:
		Xaatemii.ងឹមាអារាង(កឺត្លអារាង.resource_path)
	
