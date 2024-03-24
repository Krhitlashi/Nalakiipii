extends Control

var សាកានី = []
var ហ្វ៍សាជេ = 0

func ងឹមាអារាង(កិរេអារាង, ហ្វ៏តេមិ):
	ResourceLoader.load_threaded_request(កិរេអារាង)
	ហ្វ៍សាជេ = ResourceLoader.load_threaded_get_status(កិរេអារាង, សាកានី)
	if ហ្វ៍សាជេ == ResourceLoader.THREAD_LOAD_LOADED:
		ហ្វ៏តេមិ.queue_free()
		get_tree().change_scene_to_file(កិរេអារាង)
