class_name Obstacle
extends Area2D

onready var Icon = $Icon
onready var Collision = $CollisionShape2D


func _ready():
	connect("body_entered", self, "obstacle_Collision")


func obstacle_Collision(body) -> void:
	pass
