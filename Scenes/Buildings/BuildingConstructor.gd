extends Node2D

var world_ref : Node2D

var building : Node2D
onready var sprite = $BuildingSprite

func init(packed_building : PackedScene):
	building = packed_building.instance()
	return self

# Called when the node enters the scene tree for the first time.
func _ready():
	# get reference to the world node
	world_ref = get_parent().get_parent()
	if building: sprite.texture = building.get_texture()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# determine the tile the mouse is on
	var tile_index = world_ref.get_tile_index(get_global_mouse_position())
	
	# determine the position of that tile
	var tile_position = Grid.sprite_get_tile_position(tile_index, sprite.get_texture().get_size())
	
	# move to that location
	position = tile_position

func _input(event : InputEvent):
	event = event as InputEventMouseButton
	if event and event.button_index == BUTTON_LEFT:
		place_building()
		
		get_tree().set_input_as_handled()

func place_building():
	building.position = position
	get_parent().add_child(building)
	queue_free()
