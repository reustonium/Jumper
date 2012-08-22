package  
{
	import net.flashpunk.Entity
	import net.flashpunk.graphics.Image;
	
	public class Sky extends Entity
	{
		[Embed(source = 'assets/sky.png')] private const SKY:Class;
		
		public function Sky() 
		{
			graphic = new Image(SKY);
			
			setHitbox(400, 40, 0, -760);
			type = "ground";
		}
		
	}

}