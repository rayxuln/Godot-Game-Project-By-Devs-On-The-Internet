extends Node
class_name Skill

var proficiency:int setget set_proficiency# 熟练度

func set_proficiency(p:int):
	proficiency = min(p, 10)
	proficiency = max(p, 1)
