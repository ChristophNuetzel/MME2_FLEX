package view.components.splitview
{
	import flash.events.Event;
	
	import model.EmployeeRemoteProxy;
	import model.PatientLocalProxy;
	import model.PatientRemoteProxy;
	import model.vo.auto.Patient;
	
	import mx.collections.ArrayCollection;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	
	import view.components.splitview.list.PatientList;
	
	public class PatientGroupMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientGroupMediator";
		private var patientGroup:PatientGroup;
		private var patientLIst:PatientList;
		
		public function PatientGroupMediator(myView:View)
		{
			super(NAME);
			this.patientGroup = myView as PatientGroup;
		}

		override public function onRegister():void {
			patientGroup.addEventListener(PatientGroup.CLICKED, goBack );
			
			facade.removeMediator(LeftSplitViewMediator.NAME);
			facade.registerMediator(new LeftSplitViewMediator(patientGroup.leftNav));
			
			facade.removeMediator(RightSplitViewMediator.NAME);
			facade.registerMediator(new RightSplitViewMediator(patientGroup.rightNav , patientGroup.data as Patient));
			
			
		}
		
		protected function goBack(event:Event):void
		{
			patientGroup.goBack();	
		}
	}
}