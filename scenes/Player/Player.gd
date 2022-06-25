class_name Player
extends KinematicBody2D

# 行走速度与面朝方向
var speed := 320
var dic := 0
# 跳跃
var jumpHeight := 780
var isJumping := false
# 重力
var gravity := 1360
var velocity := Vector2.ZERO


func _input(event):
	if event.is_action_pressed("jump"):
		if not isJumping:
			velocity.y = - jumpHeight
			isJumping = true


func _physics_process(delta):
	dic = Input.get_axis("move_left", "move_right")
	velocity.x = dic * speed
	velocity.y += gravity * delta
	
	velocity = move_and_slide(velocity, Vector2.UP)
	if is_on_floor():
		isJumping = false
	else:
		isJumping = true
