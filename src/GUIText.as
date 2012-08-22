package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	
	public class GUIText extends Entity 
	{
		public var text:String;
		
		public function GUIText(text:Text, xPos:int, yPos:int) 
		{
			super(xPos, yPos, text);
		}
	
		public function Update(newText:String):void
		{
			this.graphic = new Text(newText);
		}
	}

}