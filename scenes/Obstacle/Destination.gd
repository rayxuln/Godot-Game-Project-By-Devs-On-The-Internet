extends Obstacle


func obstacle_Collision(body) -> void:
	yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://scenes/GameOver.tscn")
