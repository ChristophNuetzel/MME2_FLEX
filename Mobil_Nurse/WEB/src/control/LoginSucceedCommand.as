package control
{
	import org.puremvc.as3.core.View;
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	import view.LoginSuccessMediator;
	
	public class LoginSucceedCommand extends SimpleCommand implements ICommand
	{
		override public function execute(notification:INotification):void {
			trace("**--  LoginSucceedCommand  --**");
			trace("execute: ");
			//facade.registerMediator( new LoginSuccessMediator(notification.getBody() as View));
		}
	}
}