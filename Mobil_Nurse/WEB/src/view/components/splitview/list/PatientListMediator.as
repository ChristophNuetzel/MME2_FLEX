package view.components.splitview.list
{
	
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.PatientRemoteProxy;
	import model.vo.auto.Patient;
	
	import mx.collections.ArrayCollection;
	
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	
	import view.components.splitview.details.PatientDetails;
	
	public class PatientListMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientsAtlListMediator";
		private var patientsAtlList:PatientList;
		private var patientRemProx:PatientRemoteProxy;
		private var patientDetail:PatientDetails = new PatientDetails;
		
		
		public function PatientListMediator(myView:View)
		{
			super(NAME);
			this.patientsAtlList = myView as PatientList;
			patientRemProx = new PatientRemoteProxy(facade.retrieveProxy(PatientRemoteProxy.NAME));
		}
		
		override public function onRegister():void {
			patientsAtlList.addEventListener(PatientList.CHANGE_STATE, getSelectedState);
			patientsAtlList.addEventListener(PatientList.UPDATE, updatePatient);
		}
		
		
		protected function updatePatient(event:Event):void
		{
			patientRemProx.updatePatientDatabase();
		}
		
		protected function getSelectedState(event:Event):void
		{
			var state:String = event.currentTarget.list.selectedItem.label;
			if(state == "Communication"){
				patientsAtlList.saveButtonGroup.visible = true;
			}
			sendNotification(AppFacade.CHANGE_STATE, state);
		}
	}
}