extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

@export var ព្តាមា : VirtualJoystick

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
@onready var លារ = $"j͐ʃᴜƴ"
@onready var ងេនា = $"j͐ʃᴜƴ/Camera3D"

func _unhandled_input(event):
	if event is InputEventMouseButton:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	elif event.is_action_released("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		if event is InputEventMouseMotion:
			លារ.rotate_y(-event.relative.x * 0.01)
			ងេនា.rotate_x(-event.relative.y * 0.01)
			ងេនា.rotation.x = clamp(ងេនា.rotation.x, -30, 60)

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ſןw") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ſɟƨᴜ ŋᷠᴜ j͑ʃᴜꞇ", "ſןƨᴜ ŋᷠᴜ j͑ʃᴜꞇ", "ɭʃɔƴ ꞁȷ̀ᴜꞇ", "ſɭɹ ſᶘɜ ſɭɜ j͑ʃᴜꞇ")
	var direction = (លារ.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	សាហ្វុ()

# j͑ʃᴜ ʃɜ
func សាហ្វុ():
	លារ.rotate_y(-ព្តាមា.output.x * 0.01)
	ងេនា.rotate_x(-ព្តាមា.output.y * 0.01)
	ងេនា.rotation.x = clamp(ងេនា.rotation.x, -30, 60)
