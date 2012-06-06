package
{
	import control.MediateLeftSplitViewCommand;
	import control.MediateRightSplitViewCommand;
	import control.MediateViewCommand;
	import control.StartupCommand;
	
	import model.EmployeeRemoteProxy;
	
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	
	import spark.components.ViewNavigator;
	
	import view.components.atl.splitviews.mediators.PatientsAtlListMediator;

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
		
		//PATIENT
		public static const ALL_PATIENTS:String = NAME + "AllPatients";
		public static const ALL_PATIENTS_FAILED:String = NAME + "AllPatientsFailed";
		public static const GET_FULL_PATIENT_SUCCESS:String = NAME + "GetFullPatientSuccess";
		public static const GET_FULL_PATIENT_FAILED:String = NAME + "GetFullPatientFailed";
		public static const SEND_PATIENT_PICTURE:String = NAME + "SendPatientPicture";
		
		public static const CHANGE_STATE:String = NAME + "ChangeState";
		
		//SplitView
		public static const MEDIATE_LEFT_SPLITVIEW:String = NAME + "MediateLeftSplitView";
		public static const MEDIATE_RIGHT_SPLITVIEW:String = NAME + "MediateRightSplitView";
		
		public static const REGISTER_ATL_LIST:String = NAME + "RegisterAtlList";
		
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
			registerCommand( MEDIATE_LEFT_SPLITVIEW , MediateLeftSplitViewCommand );
			registerCommand( MEDIATE_RIGHT_SPLITVIEW , MediateRightSplitViewCommand );
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