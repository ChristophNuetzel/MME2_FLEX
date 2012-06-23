package model
{
	import model.vo.auto.Patient;
	
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	public class PatientLocalProxy extends Proxy implements IProxy
	{
		
		public static const NAME:String = "PatientLocalProxy";
		public static var patient:Patient;
		
		public function PatientLocalProxy()
		{
			super(NAME);
		}
		
		public static function setPatient(patient2:Patient):void {
			trace("PATIENT LOKAL GEUPDATED PATIENT LOKAL GEUPDATED PATIENT LOKAL GEUPDATED");
			patient = patient2;
			trace(patient);
		}
		
	}
}