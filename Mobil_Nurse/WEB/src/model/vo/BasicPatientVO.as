package model.vo
{
	import mx.collections.ArrayList;

	public class BasicPatientVO
	{
		
		private var _id:String;
		private var _firstname:String;
		private var _name:String;
		private var _roomNr:String;
		private var _patNr:String;
		
		public function BasicPatientVO(s:Array)
		{
			this._id = s[0] as String;
			this._firstname = s[1] as String;
			this._name = s[2] as String;
			this._roomNr = s[3] as String;
			this._patNr = s[4] as String;
		}
		
		public function get id():String{return _id;}
		
		public function get firstname():String{return _firstname;}
		
		public function get name():String{return _name;}
		
		public function get roomNr():String{return _roomNr;}
		
		public function get patNr():String{return _patNr;}
		
	}
}