package view.components.splitview.states
{
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.vo.auto.Employee;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	
	import view.components.login.LoginSuccess;
	
	
	public class PatientSelectedMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientSelectedMediator";
		
		private var patientSelected:PatientSelected;
		private var empprox:EmployeeRemoteProxy;
		
		public function PatientSelectedMediator(myview:View)
		{
			this.patientSelected = myview as PatientSelected;
			super(NAME, myview );
			empprox = facade.retrieveProxy( EmployeeRemoteProxy.NAME ) as EmployeeRemoteProxy;
			
			trace("SEND NOTIFACTION");
			sendNotification( AppFacade.REGISTER_ATL_LIST, myview );
		}
		
		override public function onRegister():void {
			trace("onRegister");
			patientSelected.addEventListener(PatientSelected.CLICKED, goBack);
			patientSelected.addEventListener(PatientSelected.CLICKEDFORWARD, goToSplitScreen);
		}
		
		protected function goBack(event:Event):void
		{
			patientSelected.goBack();	
		}
		
		protected function goToSplitScreen(event:Event):void
		{
			trace("goToSplitScreen");
			patientSelected.goToPatientDatail();
		}
	}
}