extends Node2D

var speed = 0
var on_ground = true
@export var animated_sprite : AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if speed > .2 and on_ground:
		animated_sprite.play("walk")
	else:
		animated_sprite.play("idle")
	
	
	if not on_ground:
		animated_sprite.play("jump")
	pass
