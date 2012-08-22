package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	
	public class GUIText extends Entity 
	{
		
		public function GUIText(txt:Text, xPos:int, yPos:int) 
		{
			super(xPos, yPos, txt);
		}
	
		public function Update(newText:String):void
		{
			this.graphic = new Text(newText);
		}
	}

}