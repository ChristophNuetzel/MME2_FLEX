package model
{
	import model.vo.LoginVO;
	import model.vo.auto.Employee;
	import mx.rpc.CallResponder;
	import mx.rpc.events.ResultEvent;
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	import services.EmployeeDao;

	public class EmployeeRemoteProxy extends Proxy implements IProxy
	{
		
		public static const NAME:String = "EmployeeRemoteProxy";
		
		/** Objects for the database-Request **/
		private var es:EmployeeDao = new EmployeeDao();
		private var cr:CallResponder = new CallResponder();
		private var loginVO:LoginVO;
		
		public function EmployeeRemoteProxy( data:Object = null )
		{
			super(NAME, data);
		}
		
		public function validateUserData(vo:LoginVO):void {
			trace("EmployeeRemoteProxy - validateUserData");
			loginVO = vo;
			trace("Eingabe: " + loginVO.username + " Password: " + loginVO.password);
			start();
		}
		
		private function start():void {
			/** add EventListener to listen on "databse-events" **/
			cr.addEventListener(ResultEvent.RESULT , checkLog );
			cr.token = es.checkEmployeeLogin(loginVO.username, loginVO.password);		
		}
		
		protected function checkLog(event:ResultEvent):void
		{
			if(cr.lastResult != null){
				sendNotification(AppFacade.LOGIN_SUCCEED, cr.lastResult as Employee);
			}else{
				sendNotification(AppFacade.LOGIN_FAILED );
			}
	 
		}
	}
}