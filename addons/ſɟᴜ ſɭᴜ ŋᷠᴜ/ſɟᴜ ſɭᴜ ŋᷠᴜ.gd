class_name ចាកាមា

extends Control

# }ʃɔ ſ͕ɭɹȝ

## The color of the button when the joystick is pressed.
@export var វេហិត្សិនា := Color.GRAY

## If the input is inside this range, the output is zero.
@export_range(0, 200, 1) var កុតាជា : float = 10

## The max distance the tip can reach.
@export_range(0, 500, 1) var ក្មាភអ៏ហ៏ក : float = 75

enum ត្សហាជេកាមា {
	កុជា, ## The joystick doesn't move.
	អុជា, ## Every time the joystick area is pressed, the joystick position is set on the touched position.
	ពានា ## When the finger moves outside the joystick area, the joystick will follow it.
}

## If the joystick stays in the same position or appears on the touched position when touch is started
@export var ហាជេកាមា := ត្សហាជេកាមា.កុជា

enum ត្សអុរអិហ្វានី {
	ការា, ## Always visible
	នាមាតីក, ## Visible on touch screens only
	អាត្សាត្សិនា ## Visible only when touched
}

## If the joystick is always visible, or is shown only if there is a touchscreen
@export var អុរអិហ្វានី := ត្សអុរអិហ្វានី.ការា

## If true, the joystick uses Input Actions (Project -> Project Settings -> Input Map)
@export var សាជា := true

@export var ច្តាមាសៃ := "ſɟƨᴜ ŋᷠᴜ j͑ʃᴜꞇ"
@export var ព្តាមាសៃ := "ſןƨᴜ ŋᷠᴜ j͑ʃᴜꞇ"
@export var តេរៃសៃ := "ɭʃɔƴ ꞁȷ̀ᴜꞇ"
@export var កិត្សុកុសៃ := "ſɭɹ ſᶘɜ ſɭɜ j͑ʃᴜꞇ"

# ſɭп́ꞇ ſɭꞇ

## If the joystick is receiving inputs.
var ក្យេត្សិនា := false

# The joystick output.
var ត្សេំនី := Vector2.ZERO

# ֭ſɭwƴ

var អារាត្សិនា : int = -1

@onready var ព៏ក្សិចា := $"ſןэ ſɭɔ˞ɹ ſɟᴜ"
@onready var ចិហិ := $"ſןэ ſɭɔ˞ɹ ſɟᴜ/ſɭᴜ ŋᷠᴜ ſɟɹ ֭ſɭɹ"

@onready var ត្សីងព៏ក្សិចា : Vector2 = ព៏ក្សិចា.position
@onready var ត្សីងចិហិ : Vector2 = ចិហិ.position

@onready var ត្សីងវេហិ : Color = ចិហិ.modulate

# FUNCTIONS

func _ready() -> void:
	if not DisplayServer.is_touchscreen_available() and អុរអិហ្វានី == ត្សអុរអិហ្វានី.នាមាតីក :
		hide()
	
	if អុរអិហ្វានី == ត្សអុរអិហ្វានី.អាត្សាត្សិនា:
		hide()

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		if event.pressed:
			if _is_point_inside_joystick_area(event.position) and អារាត្សិនា == -1:
				if ហាជេកាមា == ត្សហាជេកាមា.អុជា or ហាជេកាមា == ត្សហាជេកាមា.ពានា or (ហាជេកាមា == ត្សហាជេកាមា.កុជា and _is_point_inside_base(event.position)):
					if ហាជេកាមា == ត្សហាជេកាមា.អុជា or ហាជេកាមា == ត្សហាជេកាមា.ពានា:
						_move_base(event.position)
					if អុរអិហ្វានី == ត្សអុរអិហ្វានី.អាត្សាត្សិនា:
						show()
					អារាត្សិនា = event.index
					ចិហិ.modulate = វេហិត្សិនា
					_update_joystick(event.position)
					get_viewport().set_input_as_handled()
		elif event.index == អារាត្សិនា:
			_reset()
			if អុរអិហ្វានី == ត្សអុរអិហ្វានី.អាត្សាត្សិនា:
				hide()
			get_viewport().set_input_as_handled()
	elif event is InputEventScreenDrag:
		if event.index == អារាត្សិនា:
			_update_joystick(event.position)
			get_viewport().set_input_as_handled()

func _move_base(new_position: Vector2) -> void:
	ព៏ក្សិចា.global_position = new_position - ព៏ក្សិចា.pivot_offset * get_global_transform_with_canvas().get_scale()

func _move_tip(new_position: Vector2) -> void:
	ចិហិ.global_position = new_position - ចិហិ.pivot_offset * ព៏ក្សិចា.get_global_transform_with_canvas().get_scale()

func _is_point_inside_joystick_area(point: Vector2) -> bool:
	var x: bool = point.x >= global_position.x and point.x <= global_position.x + (size.x * get_global_transform_with_canvas().get_scale().x)
	var y: bool = point.y >= global_position.y and point.y <= global_position.y + (size.y * get_global_transform_with_canvas().get_scale().y)
	return x and y

func _get_base_radius() -> Vector2:
	return ព៏ក្សិចា.size * ព៏ក្សិចា.get_global_transform_with_canvas().get_scale() / 2

func _is_point_inside_base(point: Vector2) -> bool:
	var _base_radius = _get_base_radius()
	var center : Vector2 = ព៏ក្សិចា.global_position + _base_radius
	var vector : Vector2 = point - center
	if vector.length_squared() <= _base_radius.x * _base_radius.x:
		return true
	else:
		return false

func _update_joystick(touch_position: Vector2) -> void:
	var _base_radius = _get_base_radius()
	var center : Vector2 = ព៏ក្សិចា.global_position + _base_radius
	var vector : Vector2 = touch_position - center
	vector = vector.limit_length(ក្មាភអ៏ហ៏ក)
	
	if ហាជេកាមា == ត្សហាជេកាមា.ពានា and touch_position.distance_to(center) > ក្មាភអ៏ហ៏ក:
		_move_base(touch_position - vector)
	
	_move_tip(center + vector)
	
	if vector.length_squared() > កុតាជា * កុតាជា :
		ក្យេត្សិនា = true
		ត្សេំនី = (vector - (vector.normalized() * កុតាជា)) / (ក្មាភអ៏ហ៏ក - កុតាជា)
	else:
		ក្យេត្សិនា = false
		ត្សេំនី = Vector2.ZERO
	
	if សាជា:
		if ត្សេំនី.x > 0:
			Input.action_release(ច្តាមាសៃ)
			Input.action_press(ព្តាមាសៃ, ត្សេំនី.x)
		else:
			Input.action_release(ព្តាមាសៃ)
			Input.action_press(ច្តាមាសៃ, -ត្សេំនី.x)

		if ត្សេំនី.y > 0:
			Input.action_release(តេរៃសៃ)
			Input.action_press(កិត្សុកុសៃ, ត្សេំនី.y)
		else:
			Input.action_release(កិត្សុកុសៃ)
			Input.action_press(តេរៃសៃ, -ត្សេំនី.y)

func _reset():
	ក្យេត្សិនា = false
	ត្សេំនី = Vector2.ZERO
	អារាត្សិនា = -1
	ចិហិ.modulate = ត្សីងវេហិ
	ព៏ក្សិចា.position = ត្សីងព៏ក្សិចា
	ចិហិ.position = ត្សីងចិហិ
	if សាជា:
		for action in [ច្តាមាសៃ, ព្តាមាសៃ, កិត្សុកុសៃ, តេរៃសៃ]:
			Input.action_release(action)
