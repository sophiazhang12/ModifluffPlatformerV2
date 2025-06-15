extends Node

var score = 0
@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "Here is where you can check the score. Current score: " + str(score)
	if score == 21:
		await get_tree().create_timer(2.0).timeout
		get_tree().change_scene_to_file("res://winscreen.tscn")
