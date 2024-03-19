extends Control

var ហ្វ៍សាជេ : String

func _ready():
	$Timer.start()

func _on_timer_timeout():
	get_tree().change_scene_to_file(ហ្វ៍សាជេ)
	Kiitse.ហ្វ៍តេមិ.queue_free()
