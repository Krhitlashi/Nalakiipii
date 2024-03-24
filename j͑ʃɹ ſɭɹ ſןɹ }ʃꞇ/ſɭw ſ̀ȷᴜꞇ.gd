extends Area3D

var ហ្វ៍សាជេ
@export var អារាង : PackedScene = load("res://ꞁȷ̀ᴜ ɽ͑ʃᴜȝ/ſ͔ɭɹƴ ſ͔ɭɹ.tscn")

func ក្សីរិ(កឺត្លអារាង):
	if កឺត្លអារាង == null:
		Xaatemii.ងឹមាអារាង("res://ꞁȷ̀ᴜ ɽ͑ʃᴜȝ/ſ͔ɭɹƴ ſ͔ɭɹ.tscn")
	else:
		Xaatemii.ងឹមាអារាង(កឺត្លអារាង.resource_path)
	
