using Godot;
using System;

public class Player : KinematicBody2D
{
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";
	int movespeed = 500;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		
	}

//  // Called every frame. 'delta' is the elapsed time since the previous frame.
//  public override void _Process(float delta)
//  {
//      
//  }

	public override void _PhysicsProcess(float delta)
	{
		//We define the vector that will be used to define the direction of our objects
		var motion = new Vector2();

		//We define de direction our object moves
		if (Input.IsActionPressed("up"))
			motion.y -= 1;
		if (Input.IsActionPressed("down"))
			motion.y += 1;
		if (Input.IsActionPressed("left"))
			motion.x -= 1;
		if (Input.IsActionPressed("right"))
			motion.x += 1;

		//Redefine the motion of our object
		motion = motion.Normalized();
		//Moves the object in the direction of the key we pressed and its movespeed value
		motion = MoveAndSlide(motion * movespeed);
		
		//This sets up our motion process and defines it as a movement depending on the direction and movespeed we set
		LookAt(GetGlobalMousePosition());

	}

}
