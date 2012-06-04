package view.components.atl.splitviews.mediators
{
	import flash.events.Event;
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	import spark.components.View;
	import spark.components.ViewNavigator;
	import spark.events.ElementExistenceEvent;
	
	public class RightSplitViewNavigatorMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "RightSplitViewNavigatorMediator";
		private var splitViewNavigator:ViewNavigator;
		
		public function RightSplitViewNavigatorMediator(splitViewNavigator:ViewNavigator)
		{
			this.splitViewNavigator = splitViewNavigator;
			super( NAME );
		}
		
		override public function onRegister():void {
			splitViewNavigator.addEventListener(ElementExistenceEvent.ELEMENT_ADD , switchView );
		}
		
		protected function switchView(event:ElementExistenceEvent):void
		{
			sendNotification(AppFacade.MEDIATE_RIGHT_SPLITVIEW , event.element as View);
		}
	}
}