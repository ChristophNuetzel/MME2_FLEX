package
{
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	
	import spark.components.ViewNavigator;
	import control.StartupCommand;
	import control.MediateViewCommand;

	public class AppFacade extends Facade implements IFacade {
		
		public static const NAME:String = "AppFacade";
		public static const STARTUP:String = NAME + "Startup" ;
		public static const MEDIATE_VIEW:String = NAME + "MediateView";
		
		public static function getInstance():AppFacade {
			if(instance == null) instance = new AppFacade();
			return instance as AppFacade;
		}
		
		/**
		 * Controller registrieren
		 **/
		override protected function initializeController():void {
			super.initializeController();
			registerCommand( STARTUP , StartupCommand ) ;
			registerCommand( MEDIATE_VIEW, MediateViewCommand );
		}
		
		public function startup( viewNavigator:ViewNavigator ):void {
			sendNotification( STARTUP, viewNavigator );
		}
		  
	}
}