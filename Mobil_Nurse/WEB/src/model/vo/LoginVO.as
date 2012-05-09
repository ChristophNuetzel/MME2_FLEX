package model.vo
{
	/**
	 * 
	 * This class is only for Login-Use
	 * it will not be persisted in any
	 * database or somethingelse
	 * 
	 * */
	
	public class LoginVO
	{
		public var username:String;
		public var password:String;
		
		public function LoginVO( username:String , password:String ) {
			this.username = username;
			this.password = password;
		}
	}
}