package control
{
	import model.EmployeeRemoteProxy;
	import model.vo.auto.Employee;
	
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	import spark.components.View;
	
	import view.LoginSuccessMediator;
	import view.LoginViewMediator;
	import view.components.LoginSuccess;
	
	public class MediateViewCommand extends SimpleCommand implements ICommand
	{
		override public function execute(notification:INotification):void {
			trace("**--  MediateViewCommand  --**");
			trace("execute: ");
			var myview:View = notification.getBody() as View;
			trace("id: " + myview.id ); 
			switch(myview.id + "Mediator") {
				case LoginViewMediator.NAME:
					trace("LoginViewMediator registered");
					facade.removeMediator(LoginViewMediator.NAME);					
					facade.registerMediator(new LoginViewMediator(myview));
					break;
				case LoginSuccessMediator.NAME:
					trace("LoginSuccessMediator registered");
					facade.removeMediator( LoginSuccessMediator.NAME);
					facade.registerMediator(new LoginSuccessMediator(myview));
					break;
			}
		}
	}
}