package view.components.atl.splitviews
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
	
	public class PatientsAtlListMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientsAtlListMediator";
		private var patientsAtlList:PatientsAtlList;
		
		
		public function PatientsAtlListMediator(myView:View)
		{
			super(NAME);
			this.patientsAtlList = myView as PatientsAtlList;
		}
		
		override public function onRegister():void {
//			patientsAtlList.addEventListener(PatientsAtlList.CHANGE_STATE, getSelectedState);
		}
		
		protected function getSelectedState(event:Event):void
		{
			trace("getSelectedState");
			/*
			switch(list.selectedItem){
			case communication:
			break;
			case move:
			trace("move");
			break;
			case vital:
			break;
			case feeding:
			break;
			case excrements:
			break;
			case dressUp:
			break;
			case hygiene:
			break;
			case safety:
			break;
			case religion:
			break;
			case sozialize:
			break;
			}*/
			
		}
	}
}