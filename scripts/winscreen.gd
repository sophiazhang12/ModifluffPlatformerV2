extends CanvasLayer


func _on_replay_button_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
