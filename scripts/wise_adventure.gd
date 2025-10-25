extends CharacterBody2D

	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("talk"):
		var resource = load("res://Kevinj-k-project-2-game/elements/wiseadventurer.dialogue")
		await DialogueManager.show_dialogue_balloon(resource, "start")
