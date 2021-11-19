using Godot;
using System;
using System.Net;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
// using Newtonsoft.Json;
// using System.Threading.Tasks;
// using Newtonsoft.Json.Linq;


public class TitleScreen : Control
{
// public string url1 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Advice-Peeta&bottom=it's%20jason%20bourne&top=jon%20is%20kill&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050";
// public string urlt2 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Team-Rocket&bottom=amogus&top=jesus%20christ&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050";
// public string url3 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Vengeance-Dad&bottom=is%20a%20lie&top=super%20idol&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050";
// public string url4 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Comic-Book-Guy&bottom=it's%20jason%20bourne&top=the%20cake&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050";
// public string url5 = "https://ronreiter-meme-generator.p.rapidapi.com/meme?meme=Brian-Williams-Was-There-3&bottom=no&top=the%20cake&font=Impact&font_size=50&rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050";

// public void SaveImage(string imageUrl, string filename, ImageFormat format)
// {    
//     WebClient client = new WebClient();
//     Stream stream = client.OpenRead(imageUrl);
//     Bitmap bitmap;  bitmap = new Bitmap(stream);

//     if (bitmap != null)
//     {
//         bitmap.Save(filename, format);
//     }
        
//     stream.Flush();
//     stream.Close();
//     client.Dispose();
// }

    public override void _Ready()
    {
        // try
        // {
        //     SaveImage(url1, "enemyTexture1.jpg", ImageFormat.Png);
        // }
        // catch(ArgumentNullException)
        // {   
        // // Something wrong with Stream
        // }
    }
    // HTTPClient client = new HttpClient();
    // string baseURL = "https://ronreiter-meme-generator.p.rapidapi.com/images?rapidapi-key=ac024eea7bmsh2c4210b67971157p163a98jsn41384cf35050"; // Calls the GetProduct() method and passes in the id: 8
    // string body = client.GetStringAsync(baseURL).Result;
   
 
}
