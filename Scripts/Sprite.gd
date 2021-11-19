extends Sprite

var text1 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Hide-the-Pain-Harold&bottom=is%20a%20lie&top=super%20idol&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
var text2 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Team-Rocket&bottom=amogus&top=jesus christ&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
var text3 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Vengeance-Dad&bottom=is a lie&top=super idol&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
var text4 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Comic-Book-Guy&bottom=it's jason bourne&top=the cake&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
var text5 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Brian-Williams-Was-There-3&bottom=no&top=the cake&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"

func download_texture(url : String, file_name : String):
	var http = HTTPRequest.new()
	add_child(http)
	http.set_download_file(file_name)
	http.request(url)

# Called when the node enters the scene tree for the first time.
func _ready():
	download_texture("https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Hide-the-Pain-Harold&bottom=is%20a%20lie&top=super%20idol&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050", 
	"Textures/enemyTexture1.jpg")
	# download_texture(text2, 
	# "Textures/enemyTexture2.jpg")
	# download_texture(text3, 
	# "Textures/enemyTexture3.jpg")
	# download_texture(text4, 
	# "Textures/enemyTexture4.jpg")
	# download_texture(text5, 
	# "Textures/enemyTexture5.jpg")
	LoadTexture()
	

func LoadTexture():
	var rando = randi()%5+1
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
