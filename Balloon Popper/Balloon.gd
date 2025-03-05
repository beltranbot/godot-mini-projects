extends Area3D

var _clicks_to_pop: int = 3
var _size_increase: float = 0.2
var _score_to_give: int = 1

var _event: InputEvent


func _on_input_event(_camera: Node, event: InputEvent, _event_position: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	_event = event
	if _was_left_mouse_button_pressed():
		scale += Vector3.ONE * _size_increase
		_clicks_to_pop -= 1
		if _clicks_to_pop == 0:
			# access the BalloonManager node and increase the score
			get_node("/root/Main").increase_score(_score_to_give)
			queue_free()

### private ###

# detects when the left mouse button is pressed
func _was_left_mouse_button_pressed():
	return _event is InputEventMouseButton and \
		_event.button_index == MOUSE_BUTTON_LEFT and \
		_event.pressed
