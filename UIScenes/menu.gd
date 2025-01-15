extends Control

@onready var StartGameButton = $MarginContainer/VBoxContainer/StartGame
func _ready() -> void:
	grab_focus()
	if Global.passedPermitTest:
		StartGameButton.show()

func _on_start_permit_test_pressed() -> void:
	get_tree().change_scene_to_file("res://PermitTest/scenes/PermitTest.tscn")
	pass # Replace with function body.


func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/demo_simcade.tscn")
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
