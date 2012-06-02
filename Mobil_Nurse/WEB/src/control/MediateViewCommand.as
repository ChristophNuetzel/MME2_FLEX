package control
{
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	import spark.components.View;
	
	import view.AllPatientsTableMediator;
	import view.LoginSuccessMediator;
	import view.LoginViewMediator;
	import view.PatientSelectedMediator;
	import view.components.AllPatientsTable;
	import view.components.LoginSuccess;
	
	public class MediateViewCommand extends SimpleCommand implements ICommand
	{
		override public function execute(notification:INotification):void {
			trace("**--  MediateViewCommand  --**");
			trace("execute: ");
			
			var myview:View = notification.getBody() as View;
			
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
				case AllPatientsTableMediator.NAME:
					trace("AllPatientsMediator registered");
					facade.removeMediator( AllPatientsTableMediator.NAME);
					facade.registerMediator(new AllPatientsTableMediator(myview));
					break;
				case PatientSelectedMediator.NAME:
					trace("PatientSelectedMediator registered");
					facade.removeMediator( PatientSelectedMediator.NAME);
					facade.registerMediator(new PatientSelectedMediator(myview));
					break;
				default:
					trace("default");
			}
		}
	}
}