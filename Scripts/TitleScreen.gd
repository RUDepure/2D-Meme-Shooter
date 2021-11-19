extends Control

# var text1 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Advice-Peeta&bottom=it's%20jason%20bourne&top=jon%20is%20kill&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
# var text2 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Team-Rocket&bottom=amogus&top=jesus%20christ&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
# var text3 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Vengeance-Dad&bottom=is%20a%20lie&top=super%20idol&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
# var text4 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Comic-Book-Guy&bottom=it's%20jason%20bourne&top=the%20cake&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"
# var text5 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Brian-Williams-Was-There-3&bottom=no&top=the%20cake&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"

# func download_texture(url : String, file_name : String):
# 	var http = HTTPRequest.new()
# 	add_child(http)
# 	http.set_download_file(file_name)
# 	http.request(url)

# Called when the node enters the scene tree for the first time.
func _ready():
	# download_texture(text1, 
	# "res://Textures/enemyTexture1.jpg")
	# download_texture(text2, 
	# "res://Textures/enemyTexture2.jpg")
	# download_texture(text3, 
	# "res://Textures/enemyTexture3.jpg")
	# download_texture(text4, 
	# "res://Textures/enemyTexture4.jpg")
	# download_texture(text5, 
	# "res://Textures/enemyTexture5.jpg")

	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])


func _on_Button_pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)
