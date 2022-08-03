extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var directory_name = "github_integration"
# Called when the node enters the scene tree for the first time.
func _ready():
	print(ProjectSettings.globalize_path("user://").replace("app_userdata/"+ProjectSettings.get_setting('application/config/name')+"/",directory_name)+"/")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
