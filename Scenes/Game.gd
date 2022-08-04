# manages all function for the game

extends Node2D

onready var world = $World

onready var gui = $CanvasLayer/GUI

var building_constructor : PackedScene = preload("res://Scenes/Buildings/BuildingConstructor.tscn")
export(PackedScene) var building;

# Called when the node enters the scene tree for the first time.
func _ready():
	gui.connect("build_house", self, "build_template_building")


func build_template_building():
	world.add_building(building_constructor.instance().init(building))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
