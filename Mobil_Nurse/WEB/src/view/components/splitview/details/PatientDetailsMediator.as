package view.components.splitview.details
{
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	import model.PatientRemoteProxy;
	import model.vo.auto.Patient;
	
	import mx.core.ByteArrayAsset;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	import spark.events.ElementExistenceEvent;
	
	import view.components.splitview.states.Communication;


	public class PatientDetailsMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientAtlDetailsMediator";
		private var patientAtlDetails:PatientDetails;
		private var patient:Patient;
		private var patientsRemoteProxy:PatientRemoteProxy;
		
		public function PatientDetailsMediator(myView:View , data:Patient)
		{
			this.patientAtlDetails = myView as PatientDetails;
			this.patient = data;
			super( NAME );
			patientsRemoteProxy = new PatientRemoteProxy(facade.retrieveProxy( PatientRemoteProxy.NAME ));
		}
		
		override public function onRegister():void {
			patientAtlDetails.addEventListener( PatientDetails.SET_SELECTED_PATIENT , setSelectedPatient );
		}
		
		protected function setSelectedPatient(event:Event):void
		{
			patientAtlDetails.patientSelected.setPatient(patient);
			patientsRemoteProxy.setPicture(patient.picture as ByteArray);
		}
		
		override public function listNotificationInterests():Array {
			return [ AppFacade.CHANGE_STATE , AppFacade.SEND_PATIENT_PICTURE ];
		}
		
		private function setState(stateName:String):void{
			patientAtlDetails.currentState = stateName;
		}
		
		override public function handleNotification(notification:INotification):void {
			setState(notification.getBody() as String);
			switch(notification.getName()){
				case AppFacade.SEND_PATIENT_PICTURE:
					patientAtlDetails.patientSelected.setPicture(notification.getBody() as Bitmap);
			}
		}
	}
}