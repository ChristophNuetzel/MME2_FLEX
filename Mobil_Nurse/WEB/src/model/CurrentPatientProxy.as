package model
{
	import flash.utils.Proxy;
	
	import model.vo.auto.Patient;
	
	import org.puremvc.as3.interfaces.IProxy;

	public class CurrentPatientProxy extends Proxy implements IProxy
	{
		public static var currentPatient:Patient;
		
		public function CurrentPatientProxy()
		{
		}
	}
}