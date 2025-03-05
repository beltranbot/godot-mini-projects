extends RigidBody2D

var _hit_force: float = 50.0


func _process(_delta):
	if _is_mouse_left_button_pressed():
		var dir = global_position.direction_to(get_global_mouse_position())
		apply_impulse(dir * _hit_force)


func _is_mouse_left_button_pressed():
	return Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)
