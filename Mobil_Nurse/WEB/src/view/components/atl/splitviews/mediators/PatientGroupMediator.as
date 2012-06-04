package view.components.atl.splitviews.mediators
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
	import spark.components.ViewNavigator;
	import view.components.atl.splitviews.PatientGroup;
	import view.components.atl.splitviews.PatientsAtlList;
	
	public class PatientGroupMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "PatientGroupMediator";
		private var patientGroup:PatientGroup;
		private var patientLIst:PatientsAtlList;
		
		public function PatientGroupMediator(myView:View)
		{
			super(NAME);
			this.patientGroup = myView as PatientGroup;	
		}

		override public function onRegister():void {
			patientGroup.addEventListener(PatientGroup.CLICKED, goBack );
			
			facade.removeMediator(LeftSplitViewNavigatorMediator.NAME);
			facade.registerMediator(new LeftSplitViewNavigatorMediator(patientGroup.leftNav));
			
			facade.removeMediator(RightSplitViewNavigatorMediator.NAME);
			facade.registerMediator(new RightSplitViewNavigatorMediator(patientGroup.rightNav));
		}
		
		protected function goBack(event:Event):void
		{
			patientGroup.goBack();	
		}
	}
}