package models
{
	import vos.LayoutDataVO;
	import vos.TabVO;
	import org.apache.royale.collections.ArrayList;

	public class LayoutModel  
	{
		private var _featuresFooter:Array = [
			"About",
			"Terms",
			"Partners",
			"Updates"
		];
		
		private var _detailsFooter:Array = [
			"Specs",
			"Tools",
			"Resources"
		];
		
		private var _technologyFooter:Array = [
			"How it works",
			"Patterns",
			"Usage",
			"Products",
			"Contracts"
		];
		
		private var _faqFooter:Array = [
			"Questions",
			"Answers",
			"Contact us"
		];
		
		private var _bottomFooter:Array = [
			"Help", 
			"Privacy and Terms"
		];

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

		public function get featuresFooter():Array
		{
			return _featuresFooter;
		}
		
		public function get detailsFooter():Array
		{
			return _detailsFooter;
		}
		
		public function get technologyFooter():Array
		{
			return _technologyFooter;
		}
		
		public function get faqFooter():Array
		{
			return _faqFooter;
		}
				
		public function get bottomFooter():Array
		{
			return _bottomFooter;
		}
		
	}
}