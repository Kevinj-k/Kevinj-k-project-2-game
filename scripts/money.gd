extends Node2D
@onready var collect: AudioStreamPlayer2D = $collect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_body_entered(body: Node2D) -> void:
	#sets up keys for door
	Globalcontroller.collect_key()
	$collect.play()
	await get_tree().create_timer(0.2).timeout
	
	self.queue_free()
