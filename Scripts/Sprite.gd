extends Sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	LoadTexture()
	

func LoadTexture():
	var rando = randi()%5+1
	print(rando)
	var this_sprite = get_node(".")
	var image = load("res://Textures/enemyTexture1.jpg")
	if rando == 2:
		image = load("res://Textures/enemyTexture2.jpg")
	if rando == 3:
		image = load("res://Textures/enemyTexture3.jpg")
	if rando == 4:
		image = load("res://Textures/enemyTexture4.jpg")
	if rando == 5:
		image = load("res://Textures/enemyTexture5.jpg")
	
	this_sprite.set_texture(image)
	var pix = get_node(".").get_texture().get_size() #image size
	var th = 30 #target height
	var tw = 30 #target width
	scale = Vector2((pix.x/(pix.x/tw))/50, (pix.y/(pix.y/th))/50)
	this_sprite.set_scale(scale)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
