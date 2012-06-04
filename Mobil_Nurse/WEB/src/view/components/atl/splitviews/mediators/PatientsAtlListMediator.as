package view.components.atl.splitviews.mediators
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
	
	import view.components.atl.splitviews.PatientAtlDetails;
	import view.components.atl.splitviews.PatientsAtlList;
	
	public class PatientsAtlListMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientsAtlListMediator";
		private var patientsAtlList:PatientsAtlList;
		
		private var patientDetail:PatientAtlDetails = new PatientAtlDetails;
		
		
		public function PatientsAtlListMediator(myView:View)
		{
			super(NAME);
			this.patientsAtlList = myView as PatientsAtlList;
		}
		
		override public function onRegister():void {
			patientsAtlList.addEventListener(PatientsAtlList.CHANGE_STATE, getSelectedState);
		}
		
		protected function getSelectedState(event:Event):void
		{
			var state:String = event.currentTarget.list.selectedItem.id
			sendNotification(AppFacade.CHANGE_STATE, state);
		}
	}
}