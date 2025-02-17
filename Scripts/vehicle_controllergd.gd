extends Node3D

@export var vehicle_node : Vehicle

func _physics_process(delta):
	vehicle_node.brake_input = Input.get_action_strength("brake")
	vehicle_node.steering_input = Input.get_action_strength("steering_left") - Input.get_action_strength("steering_right")
	vehicle_node.throttle_input = pow(Input.get_action_strength("gas"), 2.0)
	vehicle_node.handbrake_input = Input.get_action_strength("Handbrake")
	vehicle_node.clutch_input = clampf(Input.get_action_strength("clutch") + Input.get_action_strength("Handbrake"), 0.0, 1.0)
	
	if Input.is_action_just_pressed("toggle_transmission"):
		vehicle_node.automatic_transmission = !vehicle_node.automatic_transmission
	
	if Input.is_action_just_pressed("shift_up"):
		vehicle_node.manual_shift(1)
	
	if Input.is_action_just_pressed("shift_down"):
		vehicle_node.manual_shift(-1)
	
	if vehicle_node.current_gear == -1:
		vehicle_node.brake_input = Input.get_action_strength("brake")
		vehicle_node.throttle_input = Input.get_action_strength("gas")
