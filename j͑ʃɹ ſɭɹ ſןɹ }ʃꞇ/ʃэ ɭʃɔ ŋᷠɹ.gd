extends Control

@onready var តាហ្លា : AnimationPlayer = $"ɭʃᴜ ſᶘɜ ſɭɜ/ɭʃᴜ ֭ſɭᴜ j͐ʃᴜ ſ͕ɭᴜƴ"

var សាកានី = []
var ផ៏សាជេ = 0

var អារាង : PackedScene = load("res://ꞁȷ̀ᴜ ɽ͑ʃᴜȝ/ſ͔ɭɹƴ ſ͔ɭɹ.tscn"):
	set = ងឹមាអារាង

func ងឹមាអារាង(_កិរេអារាង):
	អារាង = Kootlai.អារាង
 
func _ready():
	ងឹមាអារាង(អារាង)
	if អារាង.resource_path != null:
		ResourceLoader.load_threaded_request(អារាង.resource_path)
		
func _process(_delta):
	ផ៏សាជេ = ResourceLoader.load_threaded_get_status(អារាង.resource_path, សាកានី)
	if ផ៏សាជេ == ResourceLoader.THREAD_LOAD_LOADED:
		get_tree().change_scene_to_packed(អារាង)
		self.queue_free()
		
func សាជេដ():
	តាហ្លា.play("ʃэ ɭʃɔ ŋᷠɹ")
