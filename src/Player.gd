extends CharacterBody2D


#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0
@export var moveSpeed : float  = 200.0


var facingDir = Vector2()

func _physics_process(delta):
	
	
	var input_direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	input_direction = input_direction.normalized()
	velocity = input_direction * moveSpeed
	
	
	move_and_slide()
	
	

	
