extends CharacterBody2D





const SPEED = 75.0

var direction = 1





func add_gravity(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta
		
		
func move_enemy():
	velocity.x = SPEED * direction
	

func reverse_direction():
	if is_on_wall():
		direction = -direction

func _physics_process(delta: float) -> void:
	add_gravity(delta)
	move_enemy()
	move_and_slide()
	reverse_direction()
	
	
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	
	$animatorskeleton.speed = self.velocity.length()
	
	


func _on_head_body_entered(body: Node2D) -> void:
	self.queue_free()





func _on_damage_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		pass
	else:
		body.queue_free()
		get_tree().reload_current_scene()
