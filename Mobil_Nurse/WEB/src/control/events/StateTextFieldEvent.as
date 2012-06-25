package control.events
{
	import flash.events.Event;
	
	import mx.events.StateChangeEvent;
	
	import spark.components.TextArea;
	
	public class StateTextFieldEvent extends Event
	{
		public static const GET_PATIENT_EVENT : String = "GetPatientEvent";
		
		public var data:TextArea;
		
		public function StateTextFieldEvent(type:String, data:TextArea , bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			try{
				this.data = data;
			}catch(e:Error){
				e.getStackTrace();
			}
		}
		
		override public function clone():Event
		{
			return new StateTextFieldEvent(type, data , bubbles, cancelable);
		}
	}
}
