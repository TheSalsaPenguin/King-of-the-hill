extends CharacterBody2D

@export var speed = 400


func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	var direction = Input.get_vector("Move_Left", "Move_Right", "Move_Up", "Move_Down")
	
	velocity = speed * direction

	move_and_slide()
		
