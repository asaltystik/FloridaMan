extends "res://sauce/Actors/Actor.gd"


func _ready():
	set_physics_process(false)

func _physics_process(delta):
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1.0
	_velocity = move_and_slide(_velocity, _velocity)
