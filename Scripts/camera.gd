extends Camera3D

@export var follow_distance = 0
@export var follow_height = 0
@export var speed:=1000000.0
@export var follow_this : Node3D

var start_rotation : Vector3
var start_position : Vector3

func _ready():
	start_rotation = rotation
	start_position = position

func _process(delta):
		global_position = follow_this.global_transform.origin 
		global_rotation = follow_this.global_rotation 
