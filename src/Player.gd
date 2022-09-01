class_name Player extends Unit

func _physics_process(delta):
	
	
	var input_direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	input_direction = input_direction.normalized()
	velocity = input_direction * move_speed
	
	
	move_and_slide()




	
