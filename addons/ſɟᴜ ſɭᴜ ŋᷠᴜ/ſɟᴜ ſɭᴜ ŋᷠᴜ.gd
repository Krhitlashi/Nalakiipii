class_name ចាកាមា

extends Control

# }ʃɔ ſ͕ɭɹȝ

## ſᶘɹ }ʃᴜ j͑ʃƨꞇʞ ᶅſɔ j͐ʃᴜ
@export var វេហិត្សិនា := Color.GRAY
## ꞁȷ̀ᴜ ɽ͑ʃᴜȝ j͑ʃп́ɔ ſɭɜ ɭʃᴜ ı],ᴜ
@export_range(0, 200, 1) var កុតាជា : float = 10
## ſɭc̭ᴜʞ ꞁȷ̀ɜ ı],ᴜ
@export_range(0, 500, 1) var ក្មាភអ៏ហ៏ក : float = 75

enum ត្សហាជេកាមា {
	កុជា,
	អុជា,
	ពានា
}

@export var ហាជេកាមា := ត្សហាជេកាមា.កុជា

enum ត្សអុរអិផានី {
	ការា,
	នាមាតីក,
	អាត្សាត្សិនា
}

## ꞁȷ̀ᴜ ſᶘᴜ }ʃᴜ ŋᷠᴜ ɭʃꞇƽ
@export var អុរអិផានី := ត្សអុរអិផានី.ការា

@export var សាជា := true
@export var ច្តាមាសៃ := "ſɟƨᴜ ŋᷠᴜ j͑ʃᴜꞇ"
@export var ព្តាមាសៃ := "ſןƨᴜ ŋᷠᴜ j͑ʃᴜꞇ"
@export var តេរៃសៃ := "ɭʃɔƴ ꞁȷ̀ᴜꞇ"
@export var កិត្សុកុសៃ := "ſɭɹ ſᶘɜ ſɭɜ j͑ʃᴜꞇ"

# ſɭп́ꞇ ſɭꞇ

var ក្យេត្សិនា := false
var ត្សេំនី := Vector2.ZERO

# ֭ſɭwƴ

var អារាត្សិនា : int = -1

@onready var ព៏ក្សិចា := $"ſןэ ſɭɔ˞ɹ ſɟᴜ"
@onready var ចិហិ := $"ſןэ ſɭɔ˞ɹ ſɟᴜ/ſɭᴜ ŋᷠᴜ ſɟɹ ֭ſɭɹ"

@onready var ត្សីងព៏ក្សិចា : Vector2 = ព៏ក្សិចា.position
@onready var ត្សីងចិហិ : Vector2 = ចិហិ.position

@onready var ត្សីងវេហិ : Color = ចិហិ.modulate

# ſɭᴜc̭ ɭʃᴜ ſɭɔ j͑ʃ'ɔ j͑ʃᴜꞇ

func _ready() -> void:
	if not DisplayServer.is_touchscreen_available() and អុរអិផានី == ត្សអុរអិផានី.នាមាតីក :
		hide()
	
	if អុរអិផានី == ត្សអុរអិផានី.អាត្សាត្សិនា:
		hide()

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		if event.pressed:
			if អាត្សាចិហិ(event.position) and អារាត្សិនា == -1:
				if ហាជេកាមា == ត្សហាជេកាមា.អុជា or ហាជេកាមា == ត្សហាជេកាមា.ពានា or (ហាជេកាមា == ត្សហាជេកាមា.កុជា and អាត្សាចិហិសុស្តិ(event.position)):
					if ហាជេកាមា == ត្សហាជេកាមា.អុជា or ហាជេកាមា == ត្សហាជេកាមា.ពានា:
						ថាជាព៏ក្សិចា(event.position)
					if អុរអិផានី == ត្សអុរអិផានី.អាត្សាត្សិនា:
						show()
					អារាត្សិនា = event.index
					ចិហិ.modulate = វេហិត្សិនា
					ត្លាកៃអារាង(event.position)
					get_viewport().set_input_as_handled()
		elif event.index == អារាត្សិនា:
			_reset()
			if អុរអិផានី == ត្សអុរអិផានី.អាត្សាត្សិនា:
				hide()
			get_viewport().set_input_as_handled()
	elif event is InputEventScreenDrag:
		if event.index == អារាត្សិនា:
			ត្លាកៃអារាង(event.position)
			get_viewport().set_input_as_handled()

func ថាជាព៏ក្សិចា(new_position: Vector2) -> void:
	ព៏ក្សិចា.global_position = new_position - ព៏ក្សិចា.pivot_offset * get_global_transform_with_canvas().get_scale()

func ថាជាសុស្តិ(new_position: Vector2) -> void:
	ចិហិ.global_position = new_position - ចិហិ.pivot_offset * ព៏ក្សិចា.get_global_transform_with_canvas().get_scale()

func អាត្សាចិហិ(point: Vector2) -> bool:
	var x: bool = point.x >= global_position.x and point.x <= global_position.x + (size.x * get_global_transform_with_canvas().get_scale().x)
	var y: bool = point.y >= global_position.y and point.y <= global_position.y + (size.y * get_global_transform_with_canvas().get_scale().y)
	return x and y

func កាក្រីក() -> Vector2:
	return ព៏ក្សិចា.size * ព៏ក្សិចា.get_global_transform_with_canvas().get_scale() / 2

func អាត្សាចិហិសុស្តិ(point: Vector2) -> bool:
	var សុស្តិ : Vector2 = ព៏ក្សិចា.global_position + កាក្រីក()
	var តាហាង : Vector2 = point - សុស្តិ
	if តាហាង.length_squared() <= កាក្រីក().x * កាក្រីក().x:
		return true
	else:
		return false

func ត្លាកៃអារាង(touch_position: Vector2) -> void:
	var សុស្តិ : Vector2 = ព៏ក្សិចា.global_position + កាក្រីក()
	var តាហាង : Vector2 = touch_position - សុស្តិ
	តាហាង = តាហាង.limit_length(ក្មាភអ៏ហ៏ក)
	
	if ហាជេកាមា == ត្សហាជេកាមា.ពានា and touch_position.distance_to(សុស្តិ) > ក្មាភអ៏ហ៏ក:
		ថាជាព៏ក្សិចា(touch_position - តាហាង)
	
	ថាជាសុស្តិ(សុស្តិ + តាហាង)
	
	if តាហាង.length_squared() > កុតាជា * កុតាជា :
		ក្យេត្សិនា = true
		ត្សេំនី = (តាហាង - (តាហាង.normalized() * កុតាជា)) / (ក្មាភអ៏ហ៏ក - កុតាជា)
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
