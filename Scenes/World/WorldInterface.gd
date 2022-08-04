extends Node2D

onready var buildings_parent = $Buildings

onready var ground_tile_map = $Tiles/GroundTileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# returns the global position of the tile
func get_tile_global_position(tile : Vector2) -> Vector2:
	return ground_tile_map.to_global(ground_tile_map.map_to_world(tile))

# returns a Vector2 coresponding to the tiles location in the tile map
func get_tile_index(global_position : Vector2) -> Vector2:
	return ground_tile_map.world_to_map(ground_tile_map.to_local(global_position))

func add_building(building):
	buildings_parent.add_child(building)
