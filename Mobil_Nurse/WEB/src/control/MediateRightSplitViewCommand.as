package control	
{
	import model.vo.auto.Patient;
	
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.MacroCommand;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	import spark.components.View;
	
	import view.components.atl.splitviews.mediators.PatientAtlDetailsMediator;
	
	public class MediateRightSplitViewCommand extends SimpleCommand implements ICommand
	{
		override public function execute(notification:INotification):void {
			
			var data:Patient;
			var myview:View = notification.getBody().view as View;
			if(notification.getBody().data != null){
				data = notification.getBody().data;
			}
			
			switch(myview.id + "Mediator") {
				case PatientAtlDetailsMediator.NAME:
					trace("PatientsAtlListMediator registered");
					facade.removeMediator( PatientAtlDetailsMediator.NAME);
					facade.registerMediator(new PatientAtlDetailsMediator(myview , data));
					break;
				default: trace("default");
			}
		}
	}
}