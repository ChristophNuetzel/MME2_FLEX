package view
{
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.vo.LoginVO;
	
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
			super(NAME);
			this.loginView = view as LoginView;
			employeeRemoteProxy = new EmployeeRemoteProxy( facade.retrieveProxy(EmployeeRemoteProxy.NAME));
		}
		
		override public function onRegister():void {
			loginView.addEventListener(LoginView.CLICKED, getLoggedIn );
		}
		
		private function getLoggedIn(evt:Event):void {
			employeeRemoteProxy.validateUserData(new LoginVO(loginView.nurseName.text , loginView.nursePass.text ));
		}
		
		override public function listNotificationInterests():Array {
			return [ AppFacade.LOGIN_SUCCEED , AppFacade.LOGIN_FAILED ];
		}
		
		override public function handleNotification(notification:INotification):void {
			
			switch ( notification.getName() ) {
				case AppFacade.LOGIN_SUCCEED:
					loginView.navigator.pushView(view.components.LoginSuccess);
					break;
				case AppFacade.LOGIN_FAILED:
					loginView.setErrorMessage();
					break;
			}
		}
	}
}