package {

	import org.Jeddychan.Splash;
	import org.axgl.Ax;

	[SWF(width = "400", height = "600", backgroundColor = "#000000")]

	public class Startup extends Ax {
		public function Startup() {
			
			//TitleState is the first state that the game starts on.
			//Startup.as just sets a few constants and then starts the game.
			super(Splash);
		}
		
		override public function create():void {
			// Enable the debugger even in release mode
			Ax.debuggerEnabled = true;
		}
	}
}
