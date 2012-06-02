package model
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.utils.ByteArray;
	
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
		
		private var loader:Loader = new Loader();
		private var _bitmap:Bitmap;
		
		public function get bitmap ():Bitmap{
			return _bitmap;
		}
		
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
		
		public function askForEmployeePicture():void{
			if(bitmap != null){
			sendNotification(AppFacade.SEND_EMPLOYEE_PICTURE , bitmap );
			}else{
				trace("no employee-picture was send");
			}
		}
		
		private function start():void {
			/** add EventListener to listen on "databse-events" **/
			cr.addEventListener(ResultEvent.RESULT , checkLog );
			cr.token = es.checkEmployeeLogin(loginVO.username, loginVO.password);		
		}
		
		protected function checkLog(event:ResultEvent):void
		{
			if(cr.lastResult != null){
				var e:Employee = cr.lastResult as Employee;
				getBitmapFromByteArray(e.picture);
				sendNotification(AppFacade.LOGIN_SUCCEED, cr.lastResult as Employee);
			}else{
				sendNotification(AppFacade.LOGIN_FAILED );
			}
		}
		
		private function getBitmapFromByteArray(picture:ByteArray):Bitmap
		{			
			var bta:ByteArray = picture as ByteArray;
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, getBitmapData);
			loader.loadBytes(bta);
			return this._bitmap;
		}
		
		protected function getBitmapData(event:Event):void
		{
			var content:* = loader.content;
			var bitmapdata:BitmapData = new BitmapData(content.width, content.height ,true,0x00000000);
			var matrix:Matrix = new Matrix();
			bitmapdata.draw(content, matrix, null, null, null, true);
			if(bitmapdata != null){
				this._bitmap = new Bitmap(bitmapdata);
			}
		}
	}
}