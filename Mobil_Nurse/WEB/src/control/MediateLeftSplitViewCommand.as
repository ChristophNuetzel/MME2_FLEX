package control
{
	import mx.states.OverrideBase;
	
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.MacroCommand;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import spark.components.View;
	import view.components.splitview.list.PatientListMediator;
	import view.components.splitview.details.PatientDetailsMediator;
	
	public class MediateLeftSplitViewCommand extends SimpleCommand implements ICommand
	{
		override public function execute(notification:INotification):void {
			
			var myview:View = notification.getBody() as View;
			
			switch(myview.id + "Mediator") {
				case PatientListMediator.NAME:
					trace("PatientsAtlListMediator registered");
					facade.removeMediator( PatientListMediator.NAME);
					facade.registerMediator(new PatientListMediator(myview));
					break;
				default: trace("default");
			}
		}
	}
}