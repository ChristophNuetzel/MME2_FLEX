package view
{
	
	import flash.events.Event;
	import model.EmployeeRemoteProxy;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	
	import view.components.AllPatients;
	
	
	public class AllPatientsMediator extends Mediator implements IMediator
		
	{
		public static const NAME:String = "AllPatientsMediator";
		private var empprox:EmployeeRemoteProxy;
		
		private var allPatients:AllPatients;
		
		
		public function AllPatientsMediator(myView:View)
		{
			super(NAME);
			this.allPatients = myView as AllPatients;
			
			empprox = facade.retrieveProxy( EmployeeRemoteProxy.NAME ) as EmployeeRemoteProxy;
		}
		
		override public function onRegister():void {
			allPatients.addEventListener(AllPatients.CLICKEDLOGOUT, getLoggedOut );
		}
		
		override public function handleNotification(notification:INotification):void {
		}
		
		protected function getLoggedOut(event:Event):void
		{
			allPatients.logoutView();
			sendNotification(AppFacade.LOGOUT_SUCCEED);
		}
	}
}