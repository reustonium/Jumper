package  
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	
	public class JumperLevel extends World
	{
		public var jLevel:GUIText;
		public var level:int;
		
		public function JumperLevel(level:int) 
		{
			jLevel = new GUIText(new Text("Level: " + level), 300, 0);
						
			add(new Sky);
			add(new Plane);
			add(jLevel);
			
			var i:int;
			for (i = 0; i < level*4; i++)
			{
				var width:int = FP.random * FP.screen.width;
				var height:int = FP.random * FP.screen.height;
				
				if (height > 700)
				{
					height -= 100;
				}
				
				if (height < 50)
				{
					height += 50;
				}
				
				add(new Cloud(width, height));
			}
		}
		
	}

}