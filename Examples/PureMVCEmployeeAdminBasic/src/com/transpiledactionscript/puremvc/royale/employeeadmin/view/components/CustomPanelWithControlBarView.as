package com.transpiledactionscript.puremvc.royale.employeeadmin.view.components
{
	import org.apache.royale.html.beads.PanelWithControlBarView;
	import org.apache.royale.core.IStrand;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.view.components.TitleBarWithAdditionalInfo;
	import org.apache.royale.core.IBead;

	public class CustomPanelWithControlBarView extends PanelWithControlBarView
	{
		public function CustomPanelWithControlBarView()
		{
			super();
		}
		
		override public function set strand(value:IStrand):void
		{
			super.titleBar = new TitleBarWithAdditionalInfo();
			
			super.strand = value;
		}
	}
}