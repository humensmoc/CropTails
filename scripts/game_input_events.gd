class_name GameInputEvents
 
static var dir:Vector2

static func movement_input() -> Vector2:
	if Input.is_action_pressed("walk_down"):
		dir=Vector2.DOWN
	elif Input.is_action_pressed("walk_up"):
		dir=Vector2.UP
	elif Input.is_action_pressed("walk_left"):
		dir=Vector2.LEFT
	elif Input.is_action_pressed("walk_right"):
		dir=Vector2.RIGHT
	else:
		dir=Vector2.ZERO
	return dir

static func is_movement_input() ->bool:
	if dir==Vector2.ZERO:
		return false
	else:
		return true
