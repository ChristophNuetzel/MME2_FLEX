package control
{
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.interfaces.INotification;
	import spark.components.ViewNavigator;
	import view.ViewNavigatorMediator;
	import model.EmployeeRemoteProxy;
	
	public class StartupCommand extends SimpleCommand implements ICommand
	{
		public static const NAME:String = "StartupCommand" ;
		
		override public function execute(notification:INotification):void {
			trace("**-- StartupCommand --**");
			trace("**-- execute: register ViewNavigatorMediator --*"); 
			facade.registerMediator(new ViewNavigatorMediator(notification.getBody() as ViewNavigator));
			//facade.registerProxy(new EmployeeRemoteProxy());
		}
	}
}