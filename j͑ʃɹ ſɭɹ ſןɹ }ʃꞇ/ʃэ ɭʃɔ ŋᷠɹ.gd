extends Control

@onready var តាហ្លា : AnimationPlayer = $"ɭʃᴜ ſᶘɜ ſɭɜ/ɭʃᴜ ֭ſɭᴜ j͐ʃᴜ ſ͕ɭᴜƴ"

var សាកានី = []
var ហ្វ៍សាជេ = 0

var អារាង : PackedScene = load("res://ꞁȷ̀ᴜ ɽ͑ʃᴜȝ/ſ͔ɭɹƴ ſ͔ɭɹ.tscn"):
	set = ងឹមាអារាង

func ងឹមាអារាង(កិរេអារាង):
	អារាង = Kootlai.អារាង

func _ready():
	ងឹមាអារាង(អារាង)
	if អារាង.resource_path != null:
		ResourceLoader.load_threaded_request(អារាង.resource_path)
		
func _process(delta):
	ហ្វ៍សាជេ = ResourceLoader.load_threaded_get_status(អារាង.resource_path, សាកានី)
	if ហ្វ៍សាជេ == ResourceLoader.THREAD_LOAD_LOADED:
		get_tree().change_scene_to_packed(អារាង)
		
func សាជេដ():
	តាហ្លា.play()
