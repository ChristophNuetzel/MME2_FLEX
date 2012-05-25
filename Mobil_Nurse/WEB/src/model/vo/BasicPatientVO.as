package model.vo
{
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;

	public class BasicPatientVO
	{
		
		public var _id:String;
		public var _firstname:String;
		public var _name:String;
		public var _roomNr:String;
		public var _patNr:String;
		
		public function BasicPatientVO(s:ArrayCollection)
		{
			this._id = s.getItemAt(0) as String;
			this._firstname = s.getItemAt(1) as String;
			this._name = s.getItemAt(2) as String;
			this._roomNr = s.getItemAt(3) as String;
			this._patNr = s.getItemAt(4) as String;
		}
		
	}
}