package youonlygetone.worlds.worldOne.entities 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import youonlygetone.Skills;

	/**
	 * ...
	 * @author SmirnovAM
	 */
	public class NoticeText extends Entity
	{
		private var timeElapsed:Number = 0;
		private var text:Text;
		
		public function NoticeText(x:int, y:int, txt:String) 
		{
			this.x = x;
			this.y = y;
			text = new Text(txt, 0, 0, { "color":0x1E9DFF, "size":8 } );
			text.x = - text.textWidth / 2;
			graphic = text;
		}
		
		override public function update():void {
			x += 2 * FP.elapsed;
			y -= 5 * FP.elapsed;
			(graphic as Image).alpha -= 0.22 * FP.elapsed;
			timeElapsed += FP.elapsed;
			if (timeElapsed > 3.0) { 
				FP.world.remove(this);
			}
		}
		
	}

}