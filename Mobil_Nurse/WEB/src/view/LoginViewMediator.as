package view
{
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.vo.LoginVO;
	import model.vo.auto.Employee;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	
	import view.components.LoginSuccess;
	import view.components.LoginView;
	
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
			loginView.busyIndicator.visible = true;
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
					loginView.navigator.pushView(view.components.LoginSuccess , emp);
					break;
				case AppFacade.LOGIN_FAILED:
					loginView.busyIndicator.visible = false;
					loginView.setErrorMessage();
					loginView.errorText.setStyle('color', '#FF0000');
					break;
			}
		}
	}
}