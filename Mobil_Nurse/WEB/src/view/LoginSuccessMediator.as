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
		}
		
		override public function onRegister():void {
			loginSuccess.addEventListener(LoginSuccess.CLICKED, getLoggedOut );
			loginSuccess.addEventListener(LoginSuccess.CLICKEDFORWARD, goForward );
		}
		
		protected function getLoggedOut(event:Event):void
		{
			loginSuccess.logoutView();
		}
		
		protected function goForward(event:Event):void
		{
			loginSuccess.goForward();
		}
	}
}