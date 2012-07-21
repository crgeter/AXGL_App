package {
	import org.axgl.Ax;
	import org.axgl.AxRect;
	import org.axgl.AxSprite;
	import org.axgl.AxState;
	import org.axgl.text.AxText;

	public class SplashState extends AxState {

		private var player:Player;
		private var TimeText:AxText;
		
		
		private var fade1:Number = 1;
		private var duration1:Number = 2;
		private var fade2:Number = 1;
		private var duration2:Number = 2;
		private var fade3:Number = 1;
		private var duration3:Number = 2;
		
		
		private var Splash1:AxSprite;
		private var Splash2:AxSprite;
		private var Splash3:AxSprite;
		
		private var ElapsedTime:Number = 0;
		
		private var check1a:Number = 0;
		private var check1b:Number = check1a + fade1;
		
		private var check2a:Number = fade1 + duration1;
		private var check2b:Number = check2a + fade2;
		
		private var check3a:Number = check2b + duration2;
		private var check3b:Number = check3a + fade3;
		
		private var check4a:Number = check3b + duration3;
		
		
		override public function create():void {
			super.create();
		
			
			Splash1 = new AxSprite(0, 0, Resource.SPLASH1);
			Splash1.scroll.x = Splash1.scroll.y = 0;
			Splash1.alpha = 0;
			add(Splash1);
			
			Splash2 = new AxSprite(0, 0, Resource.SPLASH2);
			Splash2.scroll.x = Splash2.scroll.y = 0;
			Splash2.alpha = 0;
			add(Splash2);
			
			Splash3 = new AxSprite(0, 0, Resource.SOLIDBLACK);
			Splash3.scroll.x = Splash3.scroll.y = 0;
			Splash3.alpha = 0;
			add(Splash3);
			
			
				
			TimeText = new AxText(10, 40, null, "Elapsed Time: 0");
			TimeText.scroll.x = TimeText.scroll.y = 0;
			TimeText.scale.x = TimeText.scale.y = 4;
			add(TimeText);
			
			
			
		}	
		
		
		override public function update():void {
			
			TimeText.text = "@[0,0,0]Elapsed Time: @[200,70,70]" + (Math.floor(ElapsedTime)); 
			
			ElapsedTime += 1 * Ax.dt;
			
			
			if (ElapsedTime > check1a && ElapsedTime < check1b)
			{Splash1.alpha = (ElapsedTime - check1a) / fade1 }
		
			if (ElapsedTime > check2a && ElapsedTime < check2b)
			{Splash2.alpha = (ElapsedTime - check2a) / fade2 }
		
			if (ElapsedTime > check3a && ElapsedTime < check3b)
			{Splash3.alpha = (ElapsedTime - check3a) / fade3 }
		
			if (ElapsedTime > fade1 + duration1 + fade2 + duration2 + fade3 + duration3)
			{Ax.switchState(new GameState); }
			
			
			/*
			if (ElapsedTime > 0 && ElapsedTime < fade1)
			{Splash1.alpha = ElapsedTime / fade1 }
			if (ElapsedTime > fade1 + duration1 && ElapsedTime < fade1 + duration1 + fade2)
			{Splash2.alpha = (ElapsedTime - (fade1 + duration1)) / fade2 }
			if (ElapsedTime > fade1 + duration1 + fade2 + duration2 && ElapsedTime < fade1 + duration1 + fade2 + duration2 + fade3)
			{Splash3.alpha = (ElapsedTime - (fade1 + duration1 + fade2 + duration2)) / fade3 }
			if (ElapsedTime > fade1 + duration1 + fade2 + duration2 + fade3 + duration3)
			{Ax.switchState(new GameState); }
			*/
			
			
			super.update();
			
			//Ax.switchState(NewState);
			
		}
	}
}
