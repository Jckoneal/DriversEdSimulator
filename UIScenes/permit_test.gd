extends Control

func _on_back_pressed() -> void:
	pass # Replace with function body.


func _on_next_pressed() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	if Input.is_action_pressed("esc"):
		get_tree().change_scene_to_file("res://UIScenes/menu.tscn")
		
