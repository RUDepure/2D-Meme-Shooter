extends KinematicBody2D

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	#Gets the node of the player as a variable
	var Player = get_parent().get_node("Player")

	position += (Player.position - position)/50
	look_at(Player.position)

	move_and_collide(motion)