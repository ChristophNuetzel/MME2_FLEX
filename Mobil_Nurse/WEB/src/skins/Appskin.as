package skins
{
	import mx.core.BitmapAsset;
	
	import spark.components.Image;
	import spark.skins.mobile.ViewNavigatorApplicationSkin;
	
	public class Appskin extends ViewNavigatorApplicationSkin
	{
		private var image:Image;
		
		[Embed(source='assets/background.png')]
		
		private var background:Class;
		
		public function Appskin()
		{
			super();
		}
		
		override protected function createChildren():void {
			image = new Image();
			//replace the right side below with your source
			image.source = (new background() as BitmapAsset);
			image.height = 768;
			image.width = 1024;
			this.addChild(image);
			
			super.createChildren();
		}
	}
}

/**
package skins
	2.	{
	3.	import mx.core.BitmapAsset;
	4.	import spark.components.Image;
	5.	import spark.skins.mobile.ViewNavigatorApplicationSkin;
	6.	
	7.	public class AppSkin extends ViewNavigatorApplicationSkin
		8.	{
		9.	private var image:Image;
		10.	
		11.	[Embed(source="bkd.jpg")]
		12.	private var background:Class;
		13.	
		14.	public function AppSkin()
		15.	{
			16.	super();
			17.	}
		18.	
		19.	override protected function createChildren():void {
			20.	image = new Image();
			21.	//Replace the right side below with your source (including URL)
			22.	image.source = (new background() as BitmapAsset);
			23.	image.height = 600; //Set image size here
			24.	image.width = 1024;
			25.	this.addChild(image);
			26.	
			27.	super.createChildren();
			28.	}
		29.	}
	30.	
	
	**/