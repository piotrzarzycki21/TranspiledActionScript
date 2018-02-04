package utils
{
	public class Copy  
	{
		COMPILE::JS	
		public static function copyToClipboard(target:String)
		{
			var clipboard:Object = new window["Clipboard"](target);	
			clipboard.on('success', testFunction);	
			clipboard.on('error', testFunction);
		}
		
		private static function testFunction(event):void 
		{
			var obj:Object = event;
		}
			
	}
}