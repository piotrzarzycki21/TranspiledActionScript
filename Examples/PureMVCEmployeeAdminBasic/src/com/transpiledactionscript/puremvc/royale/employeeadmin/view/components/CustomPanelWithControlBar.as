package com.transpiledactionscript.puremvc.royale.employeeadmin.view.components
{
	import org.apache.royale.html.PanelWithControlBar;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.CustomPanelWithControlBarModel;

	public class CustomPanelWithControlBar extends PanelWithControlBar
	{
		public function CustomPanelWithControlBar()
		{
			super();
		}
		
		public function get info():String
		{
			return CustomPanelWithControlBarModel(model).info;
		}
		
		public function set info(value:String):void
		{
			CustomPanelWithControlBarModel(model).info = value;
		}
	}
}