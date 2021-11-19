extends RigidBody2D

var life_time = 3
var damage = 90

# Called when the node enters the scene tree for the first time.
func _ready():
	SelfDestruct()

func SelfDestruct():
	yield(get_tree().create_timer(life_time), "timeout")
	queue_free()
	

func _on_Bullet_body_entered(body:Node):
	get_node("CollisionShape2D").set_deferred("disabled", true)
	if body.is_in_group("Enemies"):
		body.OnHit(damage)
	self.hide()
