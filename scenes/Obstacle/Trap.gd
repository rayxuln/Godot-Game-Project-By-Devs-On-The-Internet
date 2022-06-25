extends Obstacle


func _ready():
	# 设置碰撞体自动延展
	var pos = $TextureRect.rect_position + $TextureRect.rect_size / 2
	Collision.position = pos
	Collision.shape.extents = $TextureRect.rect_size / 2


func obstacle_Collision(body):
	body.queue_free()
	
	yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://scenes/GameOver.tscn")
	
	pass # Replace with function body.
