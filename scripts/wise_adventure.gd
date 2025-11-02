extends CharacterBody2D


	

	
		


func _on_area_2d_body_entered(body: Node2D) -> void:
	#calls the dialouge for the character
	var resource = load("res://Kevinj-k-project-2-game/dialouge/wiseadventurer.dialogue")
	await DialogueManager.show_dialogue_balloon(resource, "start")
