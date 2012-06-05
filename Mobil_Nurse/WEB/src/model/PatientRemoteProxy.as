package model
{
	import flash.net.dns.PTRRecord;
	
	import model.vo.BasicPatientVO;
	import model.vo.auto.BasicPatient;
	import model.vo.auto.Patient;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
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
			cr.addEventListener(ResultEvent.RESULT , checkStringlog );
			cr.token = pt.getBasicPatientStrings();
		}
		
		protected function checkStringlog(event:ResultEvent):void
		{
			if(cr.lastResult != null){
			
				var patList:Array = new Array;
				var stringArrayCollection:ArrayCollection = cr.lastResult as ArrayCollection;
				
				/**
				 * TODO: find out, why the application goes inside this code 
				 * when getting an event from the allpatientlist-table
				 * **/
				
				if(stringArrayCollection != null){
					var stringArray:Array = stringArrayCollection.source;	

					 for(var i:int = 0 ; i < stringArray.length ; i++ ){
			 			 var p:BasicPatientVO = new BasicPatientVO(stringArray[i] as Array);
						 patList[i] = p;
					 }
				 
					 var patArCol:ArrayCollection = new ArrayCollection(patList);
				 
					 sendNotification(AppFacade.ALL_PATIENTS, patArCol)
				}else{
					 sendNotification(AppFacade.ALL_PATIENTS_FAILED);
				}
			}
		}
		
		public function askForPatient(id:Number):void{
			cr.addEventListener(ResultEvent.RESULT , getfullPatient );
			cr.token = pt.getPatientById(id);
		}
		
		protected function getfullPatient(event:ResultEvent):void
		{
			if(cr.lastResult != null){
				sendNotification(AppFacade.GET_FULL_PATIENT_SUCCESS , cr.lastResult as Patient);
			}else{
				sendNotification(AppFacade.GET_FULL_PATIENT_FAILED);
			}
		}
	}
}