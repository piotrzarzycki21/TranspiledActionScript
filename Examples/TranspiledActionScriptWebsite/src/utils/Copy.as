package utils
{
	public class Copy  
	{
		COMPILE::JS	
		public static function copyToClipboard(target:String):void
		{
			var clipboard:Object = new window["Clipboard"](target);	
			clipboard.on('success', onSuccess);	
			clipboard.on('error', onSuccess);
		}
		
		private static function onSuccess(event):void 
		{
			var obj:Object = event;
		}
			
	}
}