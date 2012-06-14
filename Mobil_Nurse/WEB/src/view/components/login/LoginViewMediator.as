package view.components.login
{
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import org.puremvc.as3.patterns.mediator.Mediator;
	import org.puremvc.as3.interfaces.IMediator;
	import spark.components.View;
	import model.vo.LoginVO;
	import org.puremvc.as3.interfaces.INotification;
	import model.vo.auto.Employee;

	
	public class LoginViewMediator extends Mediator implements IMediator
	{
		
		public static const NAME:String = "LoginViewMediator";
		
		private var loginView:LoginView;
		private var employeeRemoteProxy:EmployeeRemoteProxy;
		
		public function LoginViewMediator(view:View)
		{
			trace("DER LOGIN-VIEW-MEDIATOR WIRD GESTARTET");
			super(NAME);
			this.loginView = view as LoginView;
			employeeRemoteProxy = new EmployeeRemoteProxy(facade.retrieveProxy(EmployeeRemoteProxy.NAME));
		}
		
		override public function onRegister():void {
			loginView.addEventListener(LoginView.CLICKED, getLoggedIn );
		}
		
		private function getLoggedIn(evt:Event):void {
			loginView.errorText.setStyle('color', '#FFFFFF');
			loginView.setErrorMessage("Please wait for being logged in");
			loginView.busyIndicatorLogin.visible = true;
			employeeRemoteProxy.validateUserData(new LoginVO(loginView.nurseName.text, loginView.nursePass.text ));
		}
		
		// lauscht auf Notifications
		override public function listNotificationInterests():Array {
			return [ AppFacade.LOGIN_SUCCEED , AppFacade.LOGIN_FAILED ];
		}
		
		override public function handleNotification(notification:INotification):void {
			
			switch ( notification.getName() ) {
				case AppFacade.LOGIN_SUCCEED:
					var emp:Employee = notification.getBody() as Employee;
					loginView.navigator.pushView(view.components.login.LoginSuccess , emp);
					break;
				case AppFacade.LOGIN_FAILED:
					loginView.busyIndicatorLogin.visible = false;
					loginView.setErrorMessage("Wrong Username or Password");
					loginView.errorText.setStyle('color', '#FF0000');
					break;
			}
		}
	}
}