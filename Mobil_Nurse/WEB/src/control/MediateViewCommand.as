package control
{
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	import spark.components.View;
	
	import view.components.table.PatientsTableMediator;
	import view.components.login.LoginSuccessMediator;
	import view.components.login.LoginViewMediator;
	import view.components.table.PatientsTable;
	import view.components.login.LoginSuccess;
	import view.components.splitview.PatientGroup;
	import view.components.splitview.PatientGroupMediator;
	import view.components.splitview.list.PatientListMediator;
	
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
				case PatientsTableMediator.NAME:
					trace("AllPatientsMediator registered");
					facade.removeMediator( PatientsTableMediator.NAME);
					facade.registerMediator(new PatientsTableMediator(myview));
					break;
				case PatientGroupMediator.NAME:
					trace("PatientGroupMediator registered");
					facade.removeMediator( PatientGroupMediator.NAME);
					facade.registerMediator(new PatientGroupMediator(myview));
					break;
				default:
					trace("default");
			}
		}
	}
}