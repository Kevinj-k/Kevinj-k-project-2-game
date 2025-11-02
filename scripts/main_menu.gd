extends Node2D
@onready var start_noise: AudioStreamPlayer2D = $start_noise



func _on_start_pressed() -> void:
	$start_noise.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://Kevinj-k-project-2-game/scenes/overworld.tscn")
