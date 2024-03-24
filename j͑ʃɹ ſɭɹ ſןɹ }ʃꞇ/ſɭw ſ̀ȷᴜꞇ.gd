extends Area3D

var ហ្វ៏តេមិ
@export var អារាង : PackedScene = load("res://ꞁȷ̀ᴜ ɽ͑ʃᴜȝ/ſ͔ɭɹƴ ſ͔ɭɹ.tscn")

func ក្សីរិ(កឺត្លអារាង):
	ហ្វ៏តេមិ = preload("res://ʃэ ɭʃɔ ŋᷠɹ.tscn").instantiate()
	add_child(ហ្វ៏តេមិ)
	if កឺត្លអារាង == null:
		Xaatemii.ងឹមាអារាង("res://ꞁȷ̀ᴜ ɽ͑ʃᴜȝ/ſ͔ɭɹƴ ſ͔ɭɹ.tscn", ហ្វ៏តេមិ)
	else:
		Xaatemii.ងឹមាអារាង(កឺត្លអារាង.resource_path, ហ្វ៏តេមិ)
	
