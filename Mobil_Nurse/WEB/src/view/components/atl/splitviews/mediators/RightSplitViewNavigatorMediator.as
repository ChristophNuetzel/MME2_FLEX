package view.components.atl.splitviews.mediators
{
	import flash.events.Event;
	
	import model.vo.auto.Patient;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	import spark.events.ElementExistenceEvent;
	
	public class RightSplitViewNavigatorMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "RightSplitViewNavigatorMediator";
		private var splitViewNavigator:ViewNavigator;
		private var patient:Patient;
		
		public function RightSplitViewNavigatorMediator(splitViewNavigator:ViewNavigator , data:Patient)
		{
			this.splitViewNavigator = splitViewNavigator;
			patient = data;
			super( NAME );
		}
		
		override public function onRegister():void {
			splitViewNavigator.addEventListener(ElementExistenceEvent.ELEMENT_ADD , switchView );
		}
		
		protected function switchView(event:ElementExistenceEvent):void
		{
			var myView:Object = new Object();
			myView.view = event.element as View;
			myView.data = patient;
			
			sendNotification(AppFacade.MEDIATE_RIGHT_SPLITVIEW , myView);
		}
	}
}