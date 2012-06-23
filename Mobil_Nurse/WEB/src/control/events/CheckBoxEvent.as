package control.events
{
	import flash.events.Event;

	public class CheckBoxEvent extends Event
	{
		
		public static const ATL_EVENT : String = "CheckBoxEvent";
		
		public var data:Boolean;
		
		public function CheckBoxEvent(type:String, data:Boolean, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type , bubbles , cancelable );
			this.data = data;
		}	
		
		override public function clone():Event
		{
			return new ATLEvent(type, data, bubbles, cancelable);
		}
	}
}
