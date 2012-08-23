package scene
{
	import net.flashpunk.Entity
	import net.flashpunk.graphics.Image;
	
	public class Sky extends Entity
	{
		[Embed(source = '../assets/sky.png')] private const SKY:Class;
		
		public function Sky() 
		{
			this.graphic = new Image(SKY);
			this.setHitbox(400, 40, 0, -760);
			this.type = "ground";
		}
		
	}

}