package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	public class Plane extends Entity
	{
		[Embed(source = 'assets/plane.png')] private const PLANE:Class;
		public var hasJumper:Boolean = true;
		
		public function Plane() 
		{
				graphic = new Image(PLANE);
				this.x = 450;
				this.y = 15;
		}
		
		public override function update():void
		{
			if (x < -10) 
			{
				if (hasJumper)
				{
					x = 500;
				}
				
				else 
				{
					FP.world.remove(this);
				}
			}
			
			x -= 50 * FP.elapsed;
			
			if (Input.pressed(Key.SPACE))
			{
				if (hasJumper && x < 400)
				{
					FP.world.add(new Jumper(x, y));
					hasJumper = false;
				}
				
			}
		}
		
	}

}