extends Actor

func _physics_process(delta):
	var direction:= get_direction()
	var speed:= 10.0
	_velocity.x += speed*direction.x
	_velocity = move_and_slide(_velocity, ON_FLOOR)
	


func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		1.0
	)
