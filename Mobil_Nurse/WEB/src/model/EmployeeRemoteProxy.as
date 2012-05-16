package model
{
	import model.vo.LoginVO;
	import model.vo.auto.Employee;
	
	import mx.rpc.CallResponder;
	import mx.rpc.events.ResultEvent;
	
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	import services.Employee1;

	public class EmployeeRemoteProxy extends Proxy implements IProxy
	{
		
		public static const NAME:String = "EmployeeRemoteProxy";
		
		/** Objects for the database-Request **/
		private var es:Employee1 = new Employee1();
		private var cr:CallResponder = new CallResponder();
		private var loginVO:LoginVO;
		private var checkEmployee:Boolean = false;
		public var sentEmp:Employee;
		
		public function EmployeeRemoteProxy( data:Object = null )
		{
			super(NAME, data);
		}
		
		public function validateUserData(vo:LoginVO):void {
			//do Something :)
			trace("EmployeeRemoteProxy - validateUserData");
			loginVO = vo;
			trace("Eingabe: " + loginVO.username + " Password: " + loginVO.password);
			start();
		}
		
		private function start():void {
			/** add EventListener to listen on "databse-events" **/
			cr.addEventListener(ResultEvent.RESULT , checkLog );
			cr.token = es.getAllEmployees();			
		}
		
		protected function checkLog(event:ResultEvent):void
		{
			for each(var emp:Employee in cr.lastResult) {
				
				if(loginVO.username == emp.username && loginVO.password == emp.password) {
					checkEmployee = true;
					sentEmp = emp;
				}
			}
			
			if(checkEmployee == true){
				trace("Sending AppFacade.LOGIN_SUCCEED");
				sendNotification(AppFacade.LOGIN_SUCCEED, sentEmp);
			}else{
				trace("Sending AppFacade.LOGIN_FAILED");
				sendNotification( AppFacade.LOGIN_FAILED );
			}
		}
	}
}