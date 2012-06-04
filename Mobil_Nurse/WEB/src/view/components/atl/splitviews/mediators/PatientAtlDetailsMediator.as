package view.components.atl.splitviews.mediators
{
	import flash.events.Event;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	import spark.events.ElementExistenceEvent;
	
	import view.components.atl.splitviews.PatientAtlDetails;


	public class PatientAtlDetailsMediator extends Mediator implements IMediator
	{
		
		public static const NAME:String = "PatientAtlDetailsMediator";
		private var patientAtlDetails:PatientAtlDetails;
		
		public function PatientAtlDetailsMediator(myView:View)
		{
			this.patientAtlDetails = myView as PatientAtlDetails;
			super( NAME );
		}
		
		override public function onRegister():void {
		}
		
		override public function listNotificationInterests():Array {
			return [ AppFacade.CHANGE_STATE ];
		}
		
		private function setState(stateName:String):void{
			patientAtlDetails.currentState = stateName;
		}
		
		override public function handleNotification(notification:INotification):void {
			setState(notification.getBody() as String);
		}
	}
}