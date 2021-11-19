extends KinematicBody2D

var motion = Vector2()
export (NodePath) var visibility_notifier_path
onready var visibility_notifier = get_node(visibility_notifier_path)

var max_hp = 400
var current_hp

# Called when the node enters the scene tree for the first time.
func _ready():
	current_hp = max_hp

func _physics_process(delta):
	#Gets the node of the player as a variable
	var Player = get_parent().get_node("Player")
	
	#Sets the position to change relative to the player's position.
	if visibility_notifier.is_on_screen():
		position += (Player.position - position)/50

		#Allows the enemy object to be able to move and collide with game environments
		move_and_collide(motion)

func OnHit(damage):
	current_hp -= damage
	if current_hp <= 0:
		OnDeath()

func OnDeath():
	queue_free()
