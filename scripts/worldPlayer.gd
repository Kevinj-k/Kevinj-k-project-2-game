extends CharacterBody2D


const SPEED = 450.0



func _physics_process(delta: float) -> void:
	#calls a different player
	var dir = Input.get_vector("left","right","up","down")
	
	
	#calls animations for player
	self.velocity = dir * SPEED
	$overworldanimator.speed = self.velocity.length()
	
	if velocity.x > 0:
		$Sprite2D.flip_h = false
	elif velocity.x < 0:
		$Sprite2D.flip_h = true
	
	
	move_and_slide()
