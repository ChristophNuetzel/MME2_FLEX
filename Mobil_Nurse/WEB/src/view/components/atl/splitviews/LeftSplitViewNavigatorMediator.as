package view.components.atl.splitviews
{
	import flash.events.Event;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	import spark.events.ElementExistenceEvent;
	
	public class LeftSplitViewNavigatorMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "SplitViewNavigatorMediator";
		private var splitViewNavigator:ViewNavigator;
		public function LeftSplitViewNavigatorMediator( splitViewNavigator:ViewNavigator)
		{
			this.splitViewNavigator = splitViewNavigator;
			trace("HIER SPRICHT PENIS :)))))))")
			super( NAME );
		}
		
		override public function onRegister():void {
			trace("HAHA PENIS HAT SICH REGISTRIERT HAHA");
			splitViewNavigator.addEventListener(ElementExistenceEvent.ELEMENT_ADD , switchView );
		}
		
		protected function switchView(event:ElementExistenceEvent):void
		{
			sendNotification(AppFacade.MEDIATE_LEFT_SPLITVIEW , event.element as View);
		}
	}
}