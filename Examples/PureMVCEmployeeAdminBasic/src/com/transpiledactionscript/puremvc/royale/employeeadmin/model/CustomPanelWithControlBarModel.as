package com.transpiledactionscript.puremvc.royale.employeeadmin.model
{
	import org.apache.royale.html.beads.models.PanelModel;
	import org.apache.royale.events.Event;

	public class CustomPanelWithControlBarModel extends PanelModel
	{
		public function CustomPanelWithControlBarModel()
		{
			super();
		}
		
		private var _info:String;
		
		[Bindable("infoChange")]
		/**
		 *  Additional information in the title
		 */
		public function get info():String
		{
			return _info;
		}
		
		public function set info(value:String):void
		{
			if( value != _info) 
			{
				_info = value;
				dispatchEvent( new Event('infoChange') );
			}
		}
	}
}