package view
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
	
	import view.components.AllPatientsTable;
	
	
	public class AllPatientsTableMediator extends Mediator implements IMediator
		
	{
		public static const NAME:String = "AllPatientsMediator";
		
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
			getAllPatients();
		}
		
		private function getAllPatients():void
		{
			this.patientsRemoteProxy.getAllPatients();	
		}
		
		// lauscht auf Notifications
		override public function listNotificationInterests():Array {
			return [ AppFacade.ALL_PATIENTS , AppFacade.ALL_PATIENTS_FAILED ];
		}
		
		protected function getLoggedOut(event:Event):void
		{
			allPatients.logoutView();
			sendNotification(AppFacade.LOGOUT_SUCCEED);
		}
		
		override public function handleNotification(notification:INotification):void {
			
			switch ( notification.getName() ) {
				case AppFacade.ALL_PATIENTS:
					var ac:ArrayCollection = notification.getBody() as ArrayCollection;
					allPatients.asyncList.list = ac.list;
					allPatients.busyIndicatorAllPatients.visible = false;
					trace("AllPatiensNotificationOK");
					break;
				case AppFacade.ALL_PATIENTS_FAILED:
					allPatients.title = "Sorry - no Patient-Data in Database"
					trace("AllPatiensNotificationFailed");
					break;
			}
		}
	}
}