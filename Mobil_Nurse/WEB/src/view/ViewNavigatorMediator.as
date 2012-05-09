package view
{
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	import spark.events.ElementExistenceEvent;
	
	public class ViewNavigatorMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "ViewNavigatorMediator";
		
		private var viewNavigator:ViewNavigator;
		private var activeView:View;
		
		public function ViewNavigatorMediator( viewNavigator:ViewNavigator )
		{
			this.viewNavigator = viewNavigator;
			super( NAME , viewNavigator );
		}
		
		override public function onRegister():void {
			viewNavigator.addEventListener(ElementExistenceEvent.ELEMENT_ADD , switchView );
		}
		
		override public function handleNotification(notification:INotification):void {
			var name:String = notification.getName();
			
			switch(name) {
				// todo
			}
		}
		
		private function switchView(evt:ElementExistenceEvent):void {
			trace("A view was switched by ViewNavigator" );
			sendNotification(AppFacade.MEDIATE_VIEW, evt.element as View );
		}
	}
}