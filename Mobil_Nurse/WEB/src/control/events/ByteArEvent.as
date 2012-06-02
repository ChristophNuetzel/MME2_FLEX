package control.events
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	public class ByteArEvent extends Event
	{
		public static const GET_BYTE_ARRAY : String = "GetByteArray";
		
		public var data:ByteArray;
		
		public function ByteArEvent(type:String, data:ByteArray, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			if(data != null){
				this.data = data;
			}else{
				throw new Error("the byte-array-data is null");
			}
		}
		
		override public function clone():Event
		{
			return new ByteArEvent (type, data, bubbles, cancelable);
		}
	}
}