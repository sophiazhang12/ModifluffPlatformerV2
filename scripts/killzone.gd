extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")
	Engine.time_scale = 0.5 #Slows down game at death
	body.get_node("CollisionShape2D").queue_free() #fall of map at any death, eg to an enemy
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0 #Speed back to normal
	get_tree().reload_current_scene()
