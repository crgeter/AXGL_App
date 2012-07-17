package {

	import org.axgl.Ax;
	import org.axgl.render.AxColor;

	[SWF(width = "480", height = "360", backgroundColor = "#000000")]

	public class Startup extends Ax {
		public function Startup() {
			
			//TitleState is the first state that the game starts on.
			//Startup.as just sets a few constants and then starts the game.
			//super(GameState);
			super(SplashState);
		}
		
		override public function create():void {
			
			Ax.background = AxColor.fromHex(0x000000);
			
			// Enable the debugger even in release mode
			Ax.debuggerEnabled = true;
			
		}
	}
}
