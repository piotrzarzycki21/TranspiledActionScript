package models
{
	import vos.ExampleVO;

	[Bindable]
	public class UtilsModel
	{
		private var _utils:Array = [
			new ExampleVO("Beads: CloseDrawerOnNavigationLinkClick",
			'This bead resolves problem existing in original <a href="https://getmdl.io/components/" class="linksStyle">MDL</a> library <a href="https://github.com/google/material-design-lite/issues/1246" class="linksStyle">#1246</a>.'
			+ ' It was not possible to close <a href="https://getmdl.io/components/index.html#layout-section/layout" class="linksStyle">Drawer</a> component by clicking on navigation link. You can find how to use bead in the <a href="https://github.com/piotrzarzycki21/TranspiledActionScript/tree/utils/Utils#closedraweronnavigationlinkclick" class="linksStyle">README</a>.', 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/blob/utils/Utils/Beads/CloseDrawerOnNavigationLinkClick.as","", "0.0.1")
		];
		
		public function get utils():Array
		{
			return _utils;
		}
	}
}