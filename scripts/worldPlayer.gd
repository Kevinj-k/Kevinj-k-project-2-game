extends CharacterBody2D


const SPEED = 450.0



func _physics_process(delta: float) -> void:
	
	var dir = Input.get_vector("left","right","up","down")
	
	self.velocity = dir * SPEED

	move_and_slide()
