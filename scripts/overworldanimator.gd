extends Node2D
var speed = 0
@export var animated_sprite : AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if speed > .2:
		animated_sprite.play("run")
	else:
		animated_sprite.play("idle")
	
