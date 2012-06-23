package view.components.splitview.states
{
	import control.events.ATLEvent;
	import control.events.CheckBoxEvent;
	
	import flash.events.Event;
	
	import model.PatientLocalProxy;
	import model.PersistATLProxy;
	
	import mx.states.State;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.TextArea;
	import spark.components.View;
	
	
	public class CommunicationMediator extends Mediator implements IMediator
	{
		
		public static const NAME:String = "CommunicationATLMediator";
		private var communicationATL:Communication;
		private var persistprox:PersistATLProxy;
		
		public function CommunicationMediator(myView:View)
		{
			super(NAME);
			this.communicationATL = myView as Communication;
			persistprox = facade.retrieveProxy(PersistATLProxy.NAME ) as PersistATLProxy;
			
		}
		
		override public function onRegister():void {
			communicationATL.check_eye.selected = PatientLocalProxy.patient.communication.communicationProblems.see;
			communicationATL.check_ear.selected = PatientLocalProxy.patient.communication.communicationProblems.ear;
			communicationATL.check_nose.selected = PatientLocalProxy.patient.communication.communicationProblems.nose;
			
			var state1:State = communicationATL.ressourcen;
			var state2:State = communicationATL.problems;
			
			var texta:TextArea = communicationATL.problemsEye;
			var textb:TextArea = communicationATL.resstext; 
				
				trace(PatientLocalProxy.patient.communication.communicationProblems.problemsSee as String);
	
			
			communicationATL.addEventListener( Communication.VERIFY , verify );
			communicationATL.addEventListener( Communication.CHECK_EYE , setEye);
			communicationATL.addEventListener( Communication.CHECK_EAR , setEar);
			communicationATL.addEventListener( Communication.CHECK_SPEAK , setNose);
			communicationATL.addEventListener( Communication.DESCRIPTION_EYE , setDescriptionEye);
		}
		
		protected function setDescriptionEye(event:Event):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.solutionsSee = event.currentTarget.problemsEye.text;
		}
		
		protected function setEar(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.ear = event.data;			
		}
		
		protected function setNose(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.nose = event.data;			
		}
		
		protected function setEye(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.see = event.data;
		}
		
		protected function verify(event:ATLEvent):void
		{
			persistprox.persistCommunicationATL(event.data);
		}
	}
}
