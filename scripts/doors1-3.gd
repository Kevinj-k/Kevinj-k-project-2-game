extends Area2D

@export var scene_to_load : String
@export var keys_needed = 5

#sets up if have the right amount of keys
func _on_body_entered(body: Node2D) -> void:
	if Globalcontroller.keys >= keys_needed:
		get_tree().change_scene_to_file("res://Kevinj-k-project-2-game/scenes/dungeon final.tscn")
	else:
		pass
