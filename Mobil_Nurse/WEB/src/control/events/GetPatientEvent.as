package control.events
{
	import flash.events.Event;
	
	public class GetPatientEvent extends Event
	{
		public static const GET_PATIENT_EVENT : String = "GetPatientEvent";
		
		public var patientID:Number;
		
		public function GetPatientEvent(type:String, data:String , bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			try{
				this.patientID = new Number(data);
			}catch(e:Error){
				e.getStackTrace();
			}
		}
		
		override public function clone():Event
		{
			return new GetPatientEvent (type, patientID.toString(), bubbles, cancelable);
		}
	}
}
