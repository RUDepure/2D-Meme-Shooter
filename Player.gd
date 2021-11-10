extends KinematicBody2D


var movespeed = 500
var bullet_speed = 2000
var bullet = preload("res://Bullet.tscn")

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

	if Input.is_action_just_pressed("LMB"):
		fire()

func fire():
	#Defines bullet_instance.
	var bullet_instance = bullet.instance()
	#Gets the same position of the player to instantiate
	bullet_instance.position = get_global_position()
	#Gets the same rotation angle as the player to instantiate
	bullet_instance.rotation_degrees = rotation_degrees
	#Applies force equivalent to the bullet speed towards the direction the player is facing
	bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed, 0).rotated(rotation))
	#Now this bullet is instantiated as a child of our root seed
	get_tree().get_root().call_deferred("add_child", bullet_instance)