package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Cloud extends Entity
	{
		[Embed(source = 'assets/cloud.png')] private const CLOUD:Class;
		
		public function Cloud(xPos:int, yPos:int) 
		{
			graphic = new Image(CLOUD);
			
			x = xPos;
			y = yPos;
			setHitbox(33, 16, -2, -2);
			type = "cloud";
		}
		
	}

}