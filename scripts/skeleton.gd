extends CharacterBody2D

const SPEED = 75.0
var direction = 1
@onready var bones: AudioStreamPlayer2D = $bones



func add_gravity(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta
		
func move_enemy():
	velocity.x = SPEED * direction
	

func reverse_direction():
	if is_on_wall():
		direction = -direction
#set skeleton to move 
func _physics_process(delta: float) -> void:
	add_gravity(delta)
	move_enemy()
	move_and_slide()
	reverse_direction()
	
	#animations
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	
	$animatorskeleton.speed = self.velocity.length()
	
	


func _on_head_body_entered(body: Node2D) -> void:
	$bones.play()
	await get_tree().create_timer(0.5).timeout
	self.queue_free()
	



#kills players
func _on_damage_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		pass
	else:
		body.queue_free()
		get_tree().reload_current_scene()
