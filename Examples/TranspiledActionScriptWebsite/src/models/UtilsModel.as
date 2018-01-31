package models
{
	import vos.ExampleVO;

	[Bindable]
	public class UtilsModel
	{
		private var _utils:Array = [
			new ExampleVO("The TranspiledActionScript",
			"The TranspiledActionScript.com website example has been created using MaterialDesignLight module of Apache Royale."
			+ "It is still work in progress, however you can learn how to use MDL library by checking source code.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/TranspiledActionScriptWebsite", 
			"", "0.0.1"),
			new ExampleVO("PureMVC Employee Admin", "The Employee Admin example presents a transition of an application from Flex and PureMVC to Apache Royale.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"", "0.0.1-Pending"),
			new ExampleVO("PureMVC Employee Admin", "The Employee Admin example presents a transition of an application from Flex and PureMVC to Apache Royale.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"", "0.0.1-Pending"),
			new ExampleVO("PureMVC Employee Admin", "The Employee Admin example presents a transition of an application from Flex and PureMVC to Apache Royale.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"", "0.0.1-Pending"),
			new ExampleVO("PureMVC Employee Admin", "The Employee Admin example presents a transition of an application from Flex and PureMVC to Apache Royale.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"", "0.0.1-Pending"),
			new ExampleVO("PureMVC Employee Admin", "The Employee Admin example presents a transition of an application from Flex and PureMVC to Apache Royale.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"", "0.0.1-Pending"),
			new ExampleVO("PureMVC Employee Admin", "The Employee Admin example presents a transition of an application from Flex and PureMVC to Apache Royale.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"", "0.0.1-Pending"),
			new ExampleVO("PureMVC Employee Admin", "The Employee Admin example presents a transition of an application from Flex and PureMVC to Apache Royale.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"", "0.0.1-Pending")
		];
		
		public function get utils():Array
		{
			return _utils;
		}
	}
}