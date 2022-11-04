extends KinematicBody2D

export var max_run_speed := 90
export var run_acc := 9
export var max_fall_speed := 7
export var gravity := 150

onready var animated_sprite = $Sprite
var _velocity = Vector2.ZERO

var previous_motion = Vector2()
var hit_the_ground = false


func _physics_process(delta: float) -> void:
	var direction = (Input.get_action_strength("move_right") - Input.get_action_strength("move_left"))

	flip_sprite_if_necessary(direction)
	make_sprite_move(direction, delta)

	_velocity.x = move_toward(_velocity.x, max_run_speed * sign(direction), run_acc)
	_velocity.y += min(gravity * delta, max_fall_speed)
	_velocity = move_and_slide(_velocity, Vector2.UP)
	
	previous_motion = _velocity

	# Check for jumping. is_on_floor() must be called after movement code.
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		_velocity.y = -gravity
	
	squash_and_strech(delta)


func squash_and_strech(delta: float) -> void:
	if not is_on_floor():
		hit_the_ground = false
		animated_sprite.scale.x = range_lerp(abs(_velocity.y), 0, abs(gravity), 1.125, 0.875)
		animated_sprite.scale.y = range_lerp(abs(_velocity.y), 0, abs(gravity), 0.875, 1.25)
	
	if not hit_the_ground and is_on_floor():
		hit_the_ground = true
		animated_sprite.scale.x = range_lerp(abs(previous_motion.y), 0, abs(1700), 1.2, 1.75)
		animated_sprite.scale.y = range_lerp(abs(previous_motion.y), 0, abs(1700), 0.9, 0.5)
	
	animated_sprite.scale.x = lerp(animated_sprite.scale.x, 1, 1 - pow(0.01, delta))
	animated_sprite.scale.y = lerp(animated_sprite.scale.y, 1, 1 - pow(0.01, delta))


func make_sprite_move(direction: float, delta: float) -> void:
	_velocity.x = move_toward(_velocity.x, max_run_speed * sign(direction), run_acc)
	_velocity.y += max(gravity * delta, max_fall_speed)
	
	_velocity = move_and_slide(_velocity, Vector2.UP)


func flip_sprite_if_necessary(direction: float) -> void:
	if sign(direction) > 0:
		animated_sprite.flip_h = false
	elif sign(direction) < 0:
		animated_sprite.flip_h = true
