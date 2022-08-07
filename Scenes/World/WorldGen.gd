extends TileMap

var map_size = Grid.WORLD_SIZE

var noise_generator : OpenSimplexNoise

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
	noise_generator = OpenSimplexNoise.new()
	noise_generator.seed = randi()
	noise_generator.octaves = 3
	noise_generator.period = 20
	
	var water_levels = [-0.25, -0.1, 0.3, 1]
	
	# generate map
	for x in range(map_size):
		for y in range(map_size):
			var value = noise_generator.get_noise_2d(x, y)
			for i in range(water_levels.size()):
				if value < water_levels[i]:
					set_cell(x, y, 4 - i)
					break
	
	print(map_to_world(Vector2(0, 0)))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
