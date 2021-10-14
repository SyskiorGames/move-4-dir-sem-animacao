extends KinematicBody2D

var moveSpeed = 200

func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("moveR"):
		motion.x += moveSpeed
	elif Input.is_action_pressed("moveL"):
		motion.x -= moveSpeed
	elif Input.is_action_pressed("moveD"):
		motion.y += moveSpeed
	elif Input.is_action_pressed("MoveU"):
		motion.y -= moveSpeed
	
	motion = motion.normalized()
	
	move_and_slide(motion * moveSpeed)
	
	