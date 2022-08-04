extends Camera2D


# Declare member variables here. Examples:
export(float,0,1) var zoom_rate = 0.9
var current_zoom = 1;


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0, 700)
	zoom = Vector2(0.3874, 0.3874)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event : InputEvent):
	if event.is_class("InputEventMouseMotion"):
		if Input.is_mouse_button_pressed(BUTTON_LEFT) or Input.is_mouse_button_pressed(BUTTON_MIDDLE):
			position-=event.relative*current_zoom
			
	if event.is_class("InputEventMouseButton"):
		
		var relative_mouse_position = get_local_mouse_position()
		
		if Input.is_mouse_button_pressed(BUTTON_WHEEL_UP):
			position = get_global_mouse_position()
			zoom *= zoom_rate
			current_zoom *= zoom_rate
			position -= relative_mouse_position*zoom_rate
		
		if Input.is_mouse_button_pressed(BUTTON_WHEEL_DOWN):
			position = get_global_mouse_position()
			zoom /= zoom_rate
			current_zoom /= zoom_rate
			position -= relative_mouse_position/zoom_rate
	
