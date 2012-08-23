package levels	
{
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import scene.Sky;
	
	public class Menu extends World
	{
		public var welcomeTxt:Text;
		
		public function Menu() 
		{
			this.welcomeTxt = new Text("hello bitches", FP.screen.width / 2, FP.screen.height / 2);
			
			add(new Sky());			
		}
		
	}

}