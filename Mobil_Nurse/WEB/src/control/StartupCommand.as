package control
{
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.interfaces.INotification;
	import spark.components.ViewNavigator;
	import view.ViewNavigatorMediator;
	
	public class StartupCommand extends SimpleCommand implements ICommand
	{
		public static const NAME:String = "StartupCommand" ;
		
		override public function execute(notification:INotification):void {
			facade.registerMediator(new ViewNavigatorMediator(notification.getBody() as ViewNavigator));
		}
	}
}