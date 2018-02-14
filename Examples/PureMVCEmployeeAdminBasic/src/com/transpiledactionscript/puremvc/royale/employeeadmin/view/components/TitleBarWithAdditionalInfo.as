package com.transpiledactionscript.puremvc.royale.employeeadmin.view.components
{
	import org.apache.royale.html.TitleBar;
	
    COMPILE::JS
    {
        import org.apache.royale.core.WrappedHTMLElement;
    }

	public class TitleBarWithAdditionalInfo extends TitleBar
	{
		public function TitleBarWithAdditionalInfo()
		{
			super();
			
			className = "titleBarWithAdditionalInfo";
		}
		
		public function get info():String
		{
			return model.info;
		}
		
		public function set info(value:String):void
		{
			model.info= value;
		}
	}
}