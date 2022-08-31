class_name Unit extends CharacterBody2D

@export var move_speed : float  = 200.0


var facingDir = Vector2()

func _init(move_speed):
	self.move_speed = move_speed


func _physics_process(delta):
	
	
	var input_direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	input_direction = input_direction.normalized()
	velocity = input_direction * move_speed
	
	
	move_and_slide()
	
	
