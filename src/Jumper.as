package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	
	public class Jumper extends Entity
	{
		[Embed(source = 'assets/jumper.png')] private const JUMPER:Class;
		
		public var jumperScore:int = 0;
		public var landed:Boolean = false;	
		public var jScore:GUIText;
		public var image:Image;
		
		public function Jumper(xPos:int, yPos:int) 
		{
			image = new Image(JUMPER);
			graphic = image;

			x = xPos;
			y = yPos;
			
			Input.define("Right", Key.RIGHT, Key.D);
			Input.define("Left", Key.LEFT, Key.A);
			
			setHitbox(16, 16, -2, -2);
			type = "jumper";
			
			jScore = new GUIText(new Text("Score: " + jumperScore), 310, 15);
			FP.world.add(jScore);
		}
		
		override public function update():void 
		{
			jScore.Update("Score: " + jumperScore);
			
			if (collide("cloud", x, y))
			{
				jumperScore -= 5;
				image.color = 0xff0000;
			}
			
			else 
			{
				image.color = 0xffffff;
			}
			
			if (collide("ground", x, y))
			{
				landed = true;
				jumperScore += 100;
			}
			
			if (!landed)
			{
				y += 50 * FP.elapsed;
				jumperScore += 1;
				
				if (Input.check("Right") && x < 400 - width)
				{
					x += 35 * FP.elapsed;
				}
				
				if (Input.check("Left") && x > 0)
				{
					x -= 35 * FP.elapsed;
				}
			}
			
		}
		
	}

}