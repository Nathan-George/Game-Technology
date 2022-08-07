extends Node

const CELL_SIZE = Vector2(32, 16) # the size of a grid cell
const WORLD_SIZE = 150

var world_transform : Transform2D

# Called when the node enters the scene tree for the first time.
func _ready():
	world_transform = Transform2D(CELL_SIZE / 2, CELL_SIZE.reflect(Vector2.UP) / 2, Vector2.ZERO)
	

func sprite_get_tile_position(tile_index : Vector2, sprite_size : Vector2, centered := true) -> Vector2:
	var global_tile_position = world_transform.basis_xform(tile_index)
	global_tile_position.y += CELL_SIZE.y
	
	#if is centered
	global_tile_position.y -= sprite_size.y / 2
	
	return global_tile_position
