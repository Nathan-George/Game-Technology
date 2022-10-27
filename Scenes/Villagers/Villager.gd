extends Node2D


onready var sprite = $VillagerSprite
var selected = false
var speed
var waypoint
var slope


# Called when the node enters the scene tree for the first time.
func _ready():
	waypoint = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event : InputEvent):
	if event.is_class("InputEventMouseButton"):
		if Input.is_mouse_button_pressed(BUTTON_LEFT):
				
			if sprite.is_pixel_opaque(sprite.get_local_mouse_position()):
				selected = true
				
			elif selected == true:
				position = get_global_mouse_position()
				
		
		if Input.is_mouse_button_pressed(BUTTON_RIGHT):
			selected = false
