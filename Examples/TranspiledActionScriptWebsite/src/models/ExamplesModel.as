package models
{
	import vos.ExampleVO;

	[Bindable]
	public class ExamplesModel
	{
		private var _examples:Array = [
			new ExampleVO(
			"The TranspiledActionScript.com website example has been created using MaterialDesignLight module of Apache Royale. ", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/TranspiledActionScriptWebsite", 
			"https://transpiledactionscript.com/", "0.0.1-Pending")
		];
		
		public function get examples():Array
		{
			return _examples;
		}
	}
}