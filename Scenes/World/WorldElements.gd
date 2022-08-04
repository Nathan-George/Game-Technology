extends Node2D


# Declare member variables here. Examples:
export(PackedScene) var tree : PackedScene
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var tree_instance = tree.instance()
	add_child(tree_instance)
	tree_instance.position = Vector2(0,700)


#Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
