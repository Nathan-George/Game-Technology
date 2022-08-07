extends Node2D


# Declare member variables here. Examples:
export(PackedScene) var villager : PackedScene
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var villager_instance = villager.instance()
	add_child(villager_instance)
	villager_instance.position = Vector2(10,700) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
