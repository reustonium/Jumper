package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;	
	import levels.Menu;
	
	public class Main extends Engine 
	{
		public function Main():void 
		{
			super(400, 800, 60, false);

			FP.world = new Menu();
			//FP.world = new JumperLevel(5);
			
			FP.console.enable();
		}
		
	}
	
}