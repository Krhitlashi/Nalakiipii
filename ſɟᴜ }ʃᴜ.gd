extends Node3D

var ស្តីភេហិ : float
@export var ស្តាភ្លិ : float = 200.0
@export var សាជេនី : float = 0.4
var សាកានី : float

# j͑ʃɜ ſᶘɹ
var សុត្សិ : DirectionalLight3D
@export var វេហិសុត្សិ : Gradient
@export var ត្លុហេនីសុត្សិ : Curve

# ſןᴜ j͐ʃɹ
var ពាលិ  : DirectionalLight3D
@export var វេហិពាលិ : Gradient
@export var ត្លុហេនីពាលិ : Curve

# ſןw ſɟᴜ }ʃᴜ
var ពឺចានា : WorldEnvironment
@export var វេហិពឺចានា : Gradient
@export var វេហិចានា : Gradient

func _ready():
	សាកានី = 1.0 / ស្តាភ្លិ
	ស្តីភេហិ = សាជេនី
	
	សុត្សិ = get_node("j͑ʃɜ ſᶘɹ")
	ពាលិ = get_node("ſןᴜ j͐ʃɹ")
	ពឺចានា = get_node("ſןw ſɟᴜ }ʃᴜ")

func _process(delta):
	ស្តីភេហិ += សាកានី * delta
	
	if ស្តីភេហិ >= 1.0:
		ស្តីភេហិ = 0.0
	
	# j͑ʃɜ ſᶘɹ
	សុត្សិ.rotation_degrees.x = ស្តីភេហិ * 360 + 90
	សុត្សិ.light_color = វេហិសុត្សិ.sample(ស្តីភេហិ)
	សុត្សិ.light_energy = ត្លុហេនីសុត្សិ.sample(ស្តីភេហិ)
	សុត្សិ.visible = សុត្សិ.light_energy > 0
	
	# ſןᴜ j͐ʃɹ
	ពាលិ.rotation_degrees.x = ស្តីភេហិ * 360 + 270
	ពាលិ.light_color = វេហិពាលិ.sample(ស្តីភេហិ)
	ពាលិ.light_energy = ត្លុហេនីពាលិ.sample(ស្តីភេហិ)
	ពាលិ.visible = ពាលិ.light_energy > 0
	
	# ſɟᴜ }ʃᴜ
	ពឺចានា.environment.sky.sky_material.set("sky_top_color",វេហិពឺចានា.sample(ស្តីភេហិ))
	ពឺចានា.environment.sky.sky_material.set("sky_horizon_color",វេហិចានា.sample(ស្តីភេហិ))
	ពឺចានា.environment.sky.sky_material.set("ground_bottom_color",វេហិពឺចានា.sample(ស្តីភេហិ))
	ពឺចានា.environment.sky.sky_material.set("ground_horizon_color",វេហិចានា.sample(ស្តីភេហិ))
