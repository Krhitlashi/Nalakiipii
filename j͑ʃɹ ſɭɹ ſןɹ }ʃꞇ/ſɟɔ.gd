extends Node3D

@export var អុរ : Node
@export var ថេមិ : int
@export var ចេ : Node

@onready var តព = get_node(អុរ.get_path())
@onready var ចព = get_node(អុរ.get_path())

var សាជេអារាចេ = MultiMeshInstance3D.new()
var អារាចេ = MultiMesh.new()

func _ready():
	ក្ភិអារាចេ()

func ក្ភិអារាចេ():
	តព = get_node(អុរ.get_path()).scale.x
	ចព = get_node(អុរ.get_path()).scale.y
	សាជេអារាចេ = MultiMeshInstance3D.new()
	សាជេអារាចេ.top_level = true
	អារាចេ = MultiMesh.new()
	អារាចេ.transform_format = MultiMesh.TRANSFORM_3D
	អារាចេ.instance_count = ថេមិ
	អារាចេ.mesh = ចេ
	
	add_child(សាជេអារាចេ)
