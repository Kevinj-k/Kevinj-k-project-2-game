extends Node2D


func _on_door_body_entered(body: Node2D) -> void:
	body.queue_free()
	get_tree().change_scene_to_file("res://Kevinj-k-project-2-game/scenes/dungeon1-3.tscn")


func _on_spikes_body_entered(body: Node2D) -> void:
	body.queue_free()
	get_tree().reload_current_scene()
