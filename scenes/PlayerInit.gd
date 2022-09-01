extends Node

const player_scene = preload("res://scenes/player.tscn")
const PlayerClass = preload("res://src/Player.gd")
# Called when the node enters the scene tree for the first time.
func _ready():
		
	var player:Player = player_scene.instantiate()
	
	add_child(player)
	
	var pos = Vector2(10,10)
	var player_obj = Unit.new(10)
	
	
func spawn_player(obj, pos):
	pass
	

func spawn_unit(specie, position):
	var unit = specie.instantiate(10)
	#unit.init(100)
	#unit.set_pos(position)
	add_child(unit)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
