package view.components.atl.splitviews
{
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.PatientRemoteProxy;
	import model.vo.auto.Patient;
	
	import mx.collections.ArrayCollection;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	
	public class PatientGroupMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientGroupMediator";
		private var patientGroup:PatientGroup;
		private var patientLIst:PatientsAtlList;
		
		public function PatientGroupMediator(myView:View)
		{
			super(NAME);
			this.patientGroup = myView as PatientGroup;
			this.patientLIst = myView as PatientsAtlList; 
			
			
		}
		
		override public function listNotificationInterests():Array {
			return [AppFacade.REGISTER_ATL_LIST];
		}
		
		override public function handleNotification(notification:INotification):void {
			trace("HANDLENOTIFFFFFF");
			switch ( notification.getName() ) {
				case AppFacade.REGISTER_ATL_LIST:
					trace("PatientsAtlListMediator");
					AppFacade.getInstance().registerMediator(new PatientsAtlListMediator(notification.getBody() as View));
					break;
			}
		}
		override public function onRegister():void {
			patientGroup.addEventListener(PatientGroup.CLICKED, goBack );	
			
			patientLIst.getSelectedState();
		}
		
		protected function goBack(event:Event):void
		{
			patientGroup.goBack();	
		}
	}
}