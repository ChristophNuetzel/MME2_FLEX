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
	
	public class PatientGroupMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientGroupMediator";
		private var patientGroup:PatientGroup;
		
		public function PatientGroupMediator(myView:View)
		{
			super(NAME);
			this.patientGroup = myView as PatientGroup;
		}
		
		override public function onRegister():void {
			patientGroup.addEventListener(PatientGroup.CLICKED, goBack );			
		}
		
		protected function goBack(event:Event):void
		{
			patientGroup.goBack();	
		}
	}
}