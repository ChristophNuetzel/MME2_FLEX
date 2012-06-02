package
{
	import control.MediateViewCommand;
	import control.StartupCommand;
	
	import model.EmployeeRemoteProxy;
	
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	
	import spark.components.ViewNavigator;

	public class AppFacade extends Facade implements IFacade {
		
		public static const NAME:String = "AppFacade";
		
		/** NOTIFICATIONS **/
		
		public static const STARTUP:String = NAME + "Startup" ;
		public static const MEDIATE_VIEW:String = NAME + "MediateView";
		public static const LOGIN_SUCCEED:String = NAME + "LoginSucceed";
		public static const LOGIN_FAILED:String = NAME + "LoginFailed";
		public static const LOGOUT_SUCCEED:String = NAME + "LogoutSucceed";
		public static const SEND_EMPLOYEE:String = NAME + "SendEmployee";
		public static const SEND_EMPLOYEE_PICTURE:String = NAME + "SendEmployeePicture";
		public static const GO_FORWARD:String = NAME + "GoForward";
		public static const ALL_PATIENTS:String = NAME + "AllPatients";
		public static const ALL_PATIENTS_FAILED:String = NAME + "AllPatientsFailed";
		
		public static function getInstance():AppFacade {
			if(instance == null) instance = new AppFacade();
			return instance as AppFacade;
		}
		
		/**
		 * Controller registrieren
		 **/
		override protected function initializeController():void {
			super.initializeController();
			trace("init controller");
			registerCommand( STARTUP , StartupCommand ) ;
			registerCommand( MEDIATE_VIEW, MediateViewCommand );
			//registerCommand( LOGIN_SUCCEED , LoginSucceedCommand );
		}
		
		override protected function initializeModel():void {
			super.initializeModel();
			registerProxy( new EmployeeRemoteProxy() );
		}
		
		public function startup( viewNavigator:ViewNavigator ):void {
			sendNotification( STARTUP, viewNavigator );
		}
		  
	}
}