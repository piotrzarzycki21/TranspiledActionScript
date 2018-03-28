package models
{
	import vos.LayoutDataVO;
	import vos.TabVO;
	import org.apache.royale.collections.ArrayList;

	public class LayoutModel  
	{
		private var _layoutData:Array = [
			new LayoutDataVO("Link"),
			new LayoutDataVO("Link"),
			new LayoutDataVO("Link"),
			new LayoutDataVO("Link")
		];
		
		private var _tabs:ArrayList = new ArrayList([
                new TabVO("tab1", "Tab One"),
                new TabVO("tab2", "Tab Two"),
                new TabVO("tab3", "Tab Three")
        ]);

		public function get layoutData():Array
		{
			return _layoutData;
		}
		
		public function get tabs():ArrayList
        {
            return _tabs;
        }
	}
}