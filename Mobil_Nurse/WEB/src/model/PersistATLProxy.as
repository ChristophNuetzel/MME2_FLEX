package model
{
	import model.vo.auto.ComProblem;
	import model.vo.auto.Communication;
	import model.vo.auto.Patient;
	
	import mx.rpc.CallResponder;
	import mx.rpc.events.ResultEvent;
	
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	import services.PatientDao;
	
	public class PersistATLProxy extends Proxy implements IProxy
	{
		public static const NAME:String = "PersistATLProxy";
		
		private var dao:PatientDao = new PatientDao();
		private var cr:CallResponder = new CallResponder();
		public function PersistATLProxy( data:Object=null)
		{
			super(NAME, data);
		}
		
		public function persistCommunicationATL(o:Object):void {
			cr.addEventListener(ResultEvent.RESULT , saveTheShit );
			//var p:Patient = o.patient;
			var comu:Communication = new Communication();
			var comp:ComProblem = new ComProblem();
			
			//var bar:Array = new Array();
			//bar[0] = o.see;
			//bar[1] = o.hear;
			dao.updateCommunicationATLBool(2 , o.see);
			//cr.token = dao.updateCommunicationATL();
		}
		
		protected function saveTheShit(event:ResultEvent):void
		{
			// TODO Auto-generated method stub
			
		}
	}
}