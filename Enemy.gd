extends KinematicBody2D

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	#Gets the node of the player as a variable
	var Player = get_parent().get_node("Player")

	#Sets the position to change relative to the player's position.
	position += (Player.position - position)/50
	#Looks at the player when moving.
	look_at(Player.position)

	#Allows the enemy object to be able to move and collide with game environments
	move_and_collide(motion)

func _on_Area2D_body_entered(body):
	if "Bullet" in body.name:
		queue_free()