package control.events
{
	import flash.events.Event;

	public class ATLEvent extends Event
	{
		
		public static const ATL_EVENT : String = "ATLEvent";
		
		public var data:Object;
		
		public function ATLEvent(type:String, data:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type , bubbles , cancelable );
			if(data != null){
				this.data = data;
			}else{
				throw new Error("the data is null");
			}
		}
		
		override public function clone():Event
		{
			return new ATLEvent(type, data, bubbles, cancelable);
		}
	}
}
