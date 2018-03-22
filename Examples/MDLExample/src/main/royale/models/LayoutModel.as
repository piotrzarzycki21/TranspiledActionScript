package models
{
	import vos.LayoutDataVO;

	public class LayoutModel  
	{
		private var _layoutData:Array = [
			new LayoutDataVO("Link"),
			new LayoutDataVO("Link"),
			new LayoutDataVO("Link"),
			new LayoutDataVO("Link")
		];
		
		public function get layoutData():Array
		{
			return _layoutData;
		}
	}
}