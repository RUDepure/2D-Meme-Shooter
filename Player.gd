extends KinematicBody2D


var movespeed = 500

func _ready():
	pass # Replace with function body.

#Vector 2(X,Y) indicates direction using a Planar Coordinate System
func _physics_process(delta):
	var motion = Vector2()

	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("left"):
		motion.x -= 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	
	#This sets up our motion process and defines it as a movement depending on the direction and movespeed we set
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)

	look_at(get_global_mouse_position())
