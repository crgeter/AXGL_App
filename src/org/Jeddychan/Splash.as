package org.Jeddychan 
{
	/**
	 * ...
	 * @author Jeddychan
	 */
	
	 
	import org.axgl.AxSprite;

	
	 
	public class Splash extends AxSprite
	{
		
		var timeout:Number;
		var duration:Number = 150;
		
        
		override public function create():void 
		{
			timeout = 0
			
        }
        
        override public function update():void 
		{
			timeout += 1;
			
			if (timeout > duration)
			{
				remove this;
			}
        }
		
		
	}
	
}