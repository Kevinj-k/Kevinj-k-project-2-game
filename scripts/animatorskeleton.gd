extends Node2D
var speed = 0
@export var animated_sprite : AnimatedSprite2D


func _process(delta: float) -> void:
	if speed > .2:
		animated_sprite.play("walk")
		
