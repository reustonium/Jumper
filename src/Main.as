package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;	
	
	public class Main extends Engine 
	{
		public function Main():void 
		{
			super(400, 800, 60, false);
			FP.world = new JumperLevel(5);
			
			FP.console.enable();
		}
		
	}
	
}