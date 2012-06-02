package model
{
	import flash.net.dns.PTRRecord;
	import mx.collections.ArrayCollection;
	import mx.rpc.CallResponder;
	import mx.rpc.events.ResultEvent;
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;
	import services.PatientDao;
	
	
	
	public class PatientRemoteProxy extends Proxy implements IProxy
	{
		
		public static const NAME:String = "PatientRemoteProxy";
		
		/** Objects for the database-Request **/
		public var pt:PatientDao = new PatientDao();
		public var cr:CallResponder = new CallResponder();
		
		
		public function PatientRemoteProxy (data:Object = null)
		{
			super(NAME, data);
		}
		
		public function getAllPatients():void {
			trace("getAllPatients");
			start();
		}
		
		private function start():void
		{
			trace("start");
			cr.addEventListener(ResultEvent.RESULT , checkLog );	
			cr.token = pt.getAllPatients();
		}
		
		protected function checkLog(event:ResultEvent):void
		{
			if(cr.lastResult != null){
				sendNotification(AppFacade.ALL_PATIENTS, cr.lastResult as ArrayCollection);
			}else{
				sendNotification(AppFacade.ALL_PATIENTS_FAILED );
			}
		}
	}
}