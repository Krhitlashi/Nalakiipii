extends Area3D

@export_dir var ហ្វ៍សាជេ : String

func កេតេមិ():
	Kiitse.ហ្វ៍តេមិ.ហ្វ៍សាជេ = ហ្វ៍សាជេ
	get_tree().root.add_child(Kiitse.ហ្វ៍តេមិ)
