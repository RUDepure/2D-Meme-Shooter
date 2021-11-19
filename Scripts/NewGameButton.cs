using Godot;
using System;

public class NewGameButton : Button
{
    

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        this.Connect("pressed", this, "OnPressed");
        
    }

    void OnPressed()
    {
        GetTree().ChangeScene("res://World.tscn");
    }

//  // Called every frame. 'delta' is the elapsed time since the previous frame.
//  public override void _Process(float delta)
//  {
//      
//  }
}
