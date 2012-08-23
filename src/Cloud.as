package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	public class Cloud extends Entity
	{
		[Embed(source = 'assets/cloud.png')] private const CLOUD:Class;
		protected var delay:Number = 0.05;
		protected var counter:Number = 0;
		protected var offset:Number = 0;
		protected var rad:Number = 0;
		protected var xHome:int = 0;
		protected var yHome:int = 0;
		
		public function Cloud(xPos:int, yPos:int, radius:Number) 
		{
			graphic = new Image(CLOUD);
			
			x = xPos;
			y = yPos;
			
			xHome = x;
			yHome = y;
			
			setHitbox(33, 16, -2, -2);
			type = "cloud";
			
			offset = FP.random * 0.1;
			rad = radius;
		}
		
		override public function update():void 
		{
			counter += FP.elapsed;
			if (counter > delay)
			{
				shake();
				counter = 0;
			}
		}
		
		public function shake():void
		{
					
			var dir:int = Math.round(FP.random * 7);
			
			var xPre:int = x;
			var yPre:int = y;
				
			if (dir == 0)
			{
				x += 1;
			}
			
			else if (dir == 1)
			{
				x -= 1;
			}
			
			else if (dir == 2)
			{
				y += 1;
			}
			
			else if (dir == 3)
			{
				y -= 1;
			}
			
			else if (dir == 4)
			{
				x -= 1;
				y += 1;
			}
			
			else if (dir == 5)
			{
				x -= 1;
				y -= 1;
			}
			
			else if (dir == 6)
			{
				x += 1;
				y += 1;
			}
			
			else if (dir == 7)
			{
				x += 1;
				y -= 1;
			}
						
			if (Math.abs(x - xHome) > rad || Math.abs(y - yHome) > rad )
			{
				x = xPre;
				y = yPre;
			}
		}
	}

}