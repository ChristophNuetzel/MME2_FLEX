package model
{
	import flash.net.dns.PTRRecord;
	
	import model.vo.BasicPatientVO;
	import model.vo.auto.BasicPatient;
	
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
			cr.addEventListener(ResultEvent.RESULT , checkLog );	
			cr.token = pt.getBasicPatientStrings();
		}
		
		protected function checkLog(event:ResultEvent):void
		{
			if(cr.lastResult != null){
				/** BITTE LESEN BITTE LESEN 
				 * 
				 * komischerweise hat er automatisch die VO-Klasse "BasicPatient" erstellt.
				 * Dennoch kommt nur null an. Ich habs jetzt mit einem String[][] versucht, 
				 * kann aber die Collection nicht richtig casten. Die daten sind jedoch im
				 * debugmodus zu sehen, musst du mal testen, der breakpoint ist gesetzt. 
				 * Ich schau mir jetzt nen bissl designkram an und fix die methode für das
				 * Anzeigebild noch
				 * so far! 
				 **/
				
				//die klasse BasicPatientVO habe ich selbst angelegt, deshalb ist sie auch nicht im auto-paket
				
				var patList:ArrayCollection = new ArrayCollection();
				var stringList:ArrayCollection = cr.lastResult as ArrayCollection;
				
				for(var i:int = 0 ; i < stringList.length ; i++ ){
					var ar:ArrayCollection = stringList.getItemAt(i) as ArrayCollection; //null :(
					var p:BasicPatientVO = new BasicPatientVO(stringList.getItemAt(i) as ArrayCollection);
					patList.addItem(p);
				}
				
				sendNotification(AppFacade.ALL_PATIENTS, patList);
			}else{
				sendNotification(AppFacade.ALL_PATIENTS_FAILED );
			}
		}
	}
}