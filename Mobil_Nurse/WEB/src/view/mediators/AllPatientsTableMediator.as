package view.mediators
{
	
	import control.events.GetPatientEvent;
	
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.PatientRemoteProxy;
	import model.vo.auto.Patient;
	
	import mx.collections.ArrayCollection;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.mediator.Mediator;
	import view.components.atl.splitviews.PatientGroup;
	import spark.components.View;
	
	import view.components.AllPatientsTable;
	import view.components.PatientSelected;
	
	
	public class AllPatientsTableMediator extends Mediator implements IMediator
		
	{
		public static const NAME:String = "AllPatientsTableMediator";
		
		private var allPatients:AllPatientsTable;
		private var patientsRemoteProxy:PatientRemoteProxy;
		
		
		public function AllPatientsTableMediator(myView:View)
		{
			super(NAME);
			this.allPatients = myView as AllPatientsTable;
			patientsRemoteProxy = new PatientRemoteProxy(facade.retrieveProxy( PatientRemoteProxy.NAME ));
		}
		
		override public function onRegister():void {
			allPatients.addEventListener(AllPatientsTable.VIEW_EMPLOYEE_DATA, getLoggedOut );
			allPatients.addEventListener(AllPatientsTable.VIEW_EMPLOYEE_DETAILS, gotoDetailsView );
			allPatients.addEventListener(AllPatientsTable.GET_FULL_PATIENT, getfullPatient );
			getAllPatients();
		}
		
		protected function getfullPatient(event:GetPatientEvent):void
		{
			patientsRemoteProxy.askForPatient(event.patientID);
		}
		
		protected function gotoDetailsView(event:Event):void
		{
			allPatients.detailView(event);
		}
		
		private function getAllPatients():void
		{
			this.patientsRemoteProxy.getAllPatients();	
		}
		
		// lauscht auf Notifications
		override public function listNotificationInterests():Array {
			return [ AppFacade.ALL_PATIENTS , AppFacade.ALL_PATIENTS_FAILED, AppFacade.GET_FULL_PATIENT_SUCCESS , AppFacade.GET_FULL_PATIENT_FAILED ];
		}
		
		protected function getLoggedOut(event:Event):void
		{
			allPatients.logoutView();
		}
		
		override public function handleNotification(notification:INotification):void {
			
			switch ( notification.getName() ) {
				case AppFacade.ALL_PATIENTS:
					var ac:ArrayCollection = notification.getBody() as ArrayCollection;
					allPatients.setDataGrid(ac);
					allPatients.busyIndicatorAllPatients.visible = false;
					trace("AllPatiensNotificationOK");
					break;
				case AppFacade.ALL_PATIENTS_FAILED:
					allPatients.title = "Sorry - no Patient-Data in Database"
					trace("AllPatiensNotificationFailed");
					break;
				case AppFacade.GET_FULL_PATIENT_SUCCESS:
					allPatients.navigator.pushView(view.components.atl.splitviews.PatientGroup, notification.getBody() as Patient);
					trace("get the full patient for selected view");
					break;
				case AppFacade.GET_FULL_PATIENT_FAILED:
					trace("get full patient for selected view FAILED");
					break;
			}
		}
	}
}