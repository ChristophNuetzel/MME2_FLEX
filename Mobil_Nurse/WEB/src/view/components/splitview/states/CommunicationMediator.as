package view.components.splitview.states
{
	import control.events.ATLEvent;
	import control.events.CheckBoxEvent;
	import control.events.StateTextFieldEvent;
	
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
			communicationATL.check_speak.selected = PatientLocalProxy.patient.communication.communicationProblems.speak;
			communicationATL.check_hand.selected = PatientLocalProxy.patient.communication.communicationProblems.hand;
			communicationATL.check_pencil.selected = PatientLocalProxy.patient.communication.communicationProblems.pencil;
				
			communicationATL.addEventListener( Communication.CHECK_EYE , setEye);
			communicationATL.addEventListener( Communication.CHECK_EAR , setEar);
			communicationATL.addEventListener( Communication.CHECK_SPEAK , setSpeak);
			communicationATL.addEventListener( Communication.CHECK_HAND , setHand);
			communicationATL.addEventListener( Communication.CHECK_PENCIL , setPencil);
			
			communicationATL.addEventListener( Communication.SET_PROBLEMS_EYE , setProblemsEye);
			communicationATL.addEventListener( Communication.SET_PROBLEMS_EAR, setProblemsEar);
			communicationATL.addEventListener( Communication.SET_PROBLEMS_SPEAK, setProblemsSpeak);
			communicationATL.addEventListener( Communication.SET_PROBLEMS_HAND, setProblemsHand);
			communicationATL.addEventListener( Communication.SET_PROBLEMS_PENCIL, setProblemsPencil);
			
			communicationATL.addEventListener( Communication.GET_PROBLEM_FIELDS , getProblemFields );
			communicationATL.addEventListener( Communication.GET_SOLUTION_FIELDS, getSolutionFields );
			communicationATL.addEventListener( Communication.GET_TOOL_FIELDS, getToolFields );
		}
		
		//text field getter
		protected function getToolFields(event:Event):void
		{
			communicationATL.toolsEye.text = PatientLocalProxy.patient.communication.communicationProblems.toolsSee;
			communicationATL.toolsEar.text = PatientLocalProxy.patient.communication.communicationProblems.toolsEar;
			communicationATL.toolsSpeak.text = PatientLocalProxy.patient.communication.communicationProblems.toolsSpeak;
			communicationATL.toolsHand.text = PatientLocalProxy.patient.communication.communicationProblems.toolsHand;
			communicationATL.toolsPencil.text = PatientLocalProxy.patient.communication.communicationProblems.toolsPencil;
		}
		
		protected function getSolutionFields(event:Event):void
		{
			communicationATL.solutionEye.text = PatientLocalProxy.patient.communication.communicationProblems.solutionsSee;
			communicationATL.solutionEar.text = PatientLocalProxy.patient.communication.communicationProblems.solutionEar;
			communicationATL.solutionSpeak.text = PatientLocalProxy.patient.communication.communicationProblems.solutionSpeak;
			communicationATL.solutionHand.text = PatientLocalProxy.patient.communication.communicationProblems.solutionHand;
			communicationATL.solutionPencil.text = PatientLocalProxy.patient.communication.communicationProblems.solutionPencil;
		}
		
		protected function getProblemFields(event:Event):void
		{
			communicationATL.problemsEye.text = PatientLocalProxy.patient.communication.communicationProblems.problemsSee;
			communicationATL.problemsEar.text = PatientLocalProxy.patient.communication.communicationProblems.problemsEar;
			communicationATL.problemsSpeak.text = PatientLocalProxy.patient.communication.communicationProblems.problemsSpeak;
			communicationATL.problemsHand.text = PatientLocalProxy.patient.communication.communicationProblems.problemsHand;
			communicationATL.problemsPencil.text = PatientLocalProxy.patient.communication.communicationProblems.problemsPencil;
		}
		
		//set problem fields
		protected function setProblemsEye(event:StateTextFieldEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.problemsSee = event.data.text;
		}
		
		protected function setProblemsSpeak(event:StateTextFieldEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.problemsEar = event.data.text;
		}
		
		protected function setProblemsEar(event:StateTextFieldEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.problemsSpeak = event.data.text;
		}
		
		protected function setProblemsPencil(event:StateTextFieldEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.problemsPencil = event.data.text;
		}
		
		protected function setProblemsHand(event:StateTextFieldEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.problemsHand = event.data.text;
		}
		
		//checkbox events
		protected function setEar(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.ear = event.data;			
		}
		
		protected function setSpeak(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.speak = event.data;			
		}
		
		protected function setEye(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.see = event.data;
		}
		
		protected function setHand(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.hand = event.data;
		}
		
		protected function setPencil(event:CheckBoxEvent):void
		{
			PatientLocalProxy.patient.communication.communicationProblems.pencil = event.data;
		}
		
		protected function verify(event:ATLEvent):void
		{
			persistprox.persistCommunicationATL(event.data);
		}
	}
}
