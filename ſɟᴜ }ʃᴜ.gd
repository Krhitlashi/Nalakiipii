extends Node3D

var ស្តីភេហិ : float
@export var ស្តាភ្លិ : float = 24.0
@export var សាជេនី : float = 0.4
var សាកានី : float

var សុត្សិ : DirectionalLight3D
var វេហិសុត្សិ : Gradient
var ត្លុហេនីសុត្សិ : Curve
# https://www.bing.com/videos/riverview/relatedvideo?q=godot+day+night+cycle&mid=05A53FF872C7C6AE80D005A53FF872C7C6AE80D0&FORM=VIRE

# Called when the node enters the scene tree for the first time.
func _ready():
	សាកានី = 1.0 / ស្តាភ្លិ
	ស្តីភេហិ = សាជេនី
	
	សុត្សិ = get_node("j͑ʃɜ ſᶘɹ")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ស្តីភេហិ += សាកានី * delta
	
	if ស្តីភេហិ >= 1.0:
		ស្តីភេហិ = 0.0
	
	សុត្សិ.rotation_degrees.x = ស្តីភេហិ * 360 + 90
