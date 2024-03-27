extends Area3D

@export var អារាង : PackedScene = load("res://ꞁȷ̀ᴜ ɽ͑ʃᴜȝ/ſ͔ɭɹƴ ſ͔ɭɹ.tscn"):
	set = កិរអារាង
	
func កិរអារាង(កឺត្លអារាង):
	អារាង = កឺត្លអារាង

func ក្សីរិ(កឺត្លអារាង):
	កិរអារាង(កឺត្លអារាង)
	var ហ្វ៏តេមិ = load("res://ʃэ ɭʃɔ ŋᷠɹ.tscn").instantiate()
	get_tree().root.add_child(ហ្វ៏តេមិ)	
