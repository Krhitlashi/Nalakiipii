@tool
extends Control

var អំត្សេហ្វា

func _enter_tree():
	អំត្សេហ្វា = preload("res://addons/ſɟᴜ ſɭᴜ ŋᷠᴜ/ſɟᴜ ſɭᴜ ŋᷠᴜ.tscn").instantiate()
	add_child(អំត្សេហ្វា)

func _exit_tree():
	អំត្សេហ្វា.free()
