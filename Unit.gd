class_name Unit extends CharacterBody2D

@export var move_speed : float  = 200.0


var facingDir = Vector2()

# из-за этого не работает что за  (https://discord.com/channels/212250894228652034/342056330523049988/992538428656848896)??
func _init(move_speed):
	self.move_speed = move_speed
	


