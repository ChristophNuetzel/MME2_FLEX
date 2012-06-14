package view.components.splitview.states
{
	import control.events.ATLEvent;
	
	import flash.events.Event;
	
	import model.PersistATLProxy;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
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
			communicationATL.addEventListener( Communication.VERIFY , verify );
		}
		
		protected function verify(event:ATLEvent):void
		{
			persistprox.persistCommunicationATL(event.data);
		}
	}
}
