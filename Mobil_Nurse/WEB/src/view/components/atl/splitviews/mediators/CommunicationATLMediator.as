package view.components.atl.splitviews.mediators
{
	import control.events.ATLEvent;
	
	import flash.events.Event;
	
	import model.PersistATLProxy;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	
	import view.components.atl.splitviews.CommunicationATL;
	
	public class CommunicationATLMediator extends Mediator implements IMediator
	{
		
		public static const NAME:String = "CommunicationATLMediator";
		private var communicationATL:CommunicationATL;
		private var persistprox:PersistATLProxy;
		
		public function CommunicationATLMediator(myView:View)
		{
			super(NAME);
			this.communicationATL = myView as CommunicationATL;
			persistprox = facade.retrieveProxy(PersistATLProxy.NAME ) as PersistATLProxy;
			
		}
		
		override public function onRegister():void {
			communicationATL.addEventListener( CommunicationATL.VERIFY , verify );
		}
		
		protected function verify(event:ATLEvent):void
		{
			persistprox.persistCommunicationATL(event.data);
		}
	}
}
