extends TileMap

export(int) var map_size = 100

var noise_generator : OpenSimplexNoise

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
	noise_generator = OpenSimplexNoise.new()
	noise_generator.seed = randi()
	noise_generator.period = 10
	
	var water_levels = [-0.3, 0.3, 1]
	
	# generate map
	for x in range(map_size):
		for y in range(map_size):
			var value = noise_generator.get_noise_2d(x, y)
			for i in range(water_levels.size()):
				if value < water_levels[i]:
					set_cell(x, y, i + 1)
					break


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
