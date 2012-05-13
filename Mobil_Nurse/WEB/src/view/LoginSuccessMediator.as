package view
{
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.vo.auto.Employee;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	
	import view.components.LoginSuccess;
	
	public class LoginSuccessMediator extends Mediator implements IMediator
	{
		
		public static const NAME:String = "LoginSuccessMediator";
		
		private var loginSuccess:LoginSuccess;
		private var empprox:EmployeeRemoteProxy;
		public function LoginSuccessMediator(myview:View)
		{
			this.loginSuccess = myview as LoginSuccess;
			super(NAME, myview );
			empprox = facade.retrieveProxy( EmployeeRemoteProxy.NAME ) as EmployeeRemoteProxy;
			getProxyData();
		}
		
		override public function listNotificationInterests():Array {
			return [ AppFacade.LOGIN_SUCCEED ];
		}
		
		override public function handleNotification(notification:INotification):void {
			//switch( notification.getName() ) {
				//case AppFacade.LOGIN_SUCCEED:
					//trace("loginSuccessMediator loginSucceed");
					//var e:Employee = notification.getBody() as Employee;
					//loginSuccess.setLabelText(e.firstname);
			//}
		}
		
		public function getProxyData():void {
			//trace(empprox.sentEmp.firstname);
		}
		
		override public function onRegister():void {
			loginSuccess.addEventListener(LoginSuccess.CLICKED, getLoggedOut );
		}
		
		protected function getLoggedOut(event:Event):void
		{
			loginSuccess.logoutView();
			sendNotification(AppFacade.LOGOUT_SUCCEED);
		}
	}
}