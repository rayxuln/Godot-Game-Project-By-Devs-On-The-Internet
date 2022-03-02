extends Node

func get_skill(name:String):
	for type in get_children():
		for skill in get_children():
			if skill.name == name:
				return skill
