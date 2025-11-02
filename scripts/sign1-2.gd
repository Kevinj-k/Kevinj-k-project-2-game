extends Node2D




func _on_area_2d_body_entered(body: Node2D) -> void:
	#calls the dialouge for signs
	var resource = load("res://Kevinj-k-project-2-game/dialouge/sign1-2.dialogue")
	await DialogueManager.show_dialogue_balloon(resource, "start")
