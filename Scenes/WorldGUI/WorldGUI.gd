extends Control

signal build_house

onready var house_button = $HouseButton

# Called when the node enters the scene tree for the first time.
func _ready():
	house_button.connect("pressed", self, "emit_house_signal")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func emit_house_signal():
	emit_signal("build_house")
