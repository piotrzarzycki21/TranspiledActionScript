////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package models
{
	import vos.ExampleVO;

	[Bindable]
	public class ExamplesModel
	{
		private var _examples:Array = [
			new ExampleVO("The TranspiledActionScript Website",
			'The TranspiledActionScript.com website example was created using <a href="https://github.com/apache/royale-asjs/tree/develop/frameworks/projects/MaterialDesignLite" class="linksStyle">MaterialDesignLight</a> module of Apache Royale.'
			+ ' Yes, the website which you are about to explore was fully created in Royale. When you dig into the code, you will learn how to use States, models, item renderers or styling components in CSS.', 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/TranspiledActionScriptWebsite", 
			"https://transpiledactionscript.com/", "0.0.1"),
			new ExampleVO("MDL PureMVC Employee Admin", 'This example presents a transition of an existing Flex application (<a href="https://github.com/PureMVC/puremvc-as3-demo-flex-employeeadmin/" class="linksStyle">PureMVC Employee Admin</a>) to Apache Royale using MDL module.' 
			+ ' First of all, it shows that <a href="https://github.com/PureMVC/puremvc-as3-multicore-framework" class="linksStyle">PureMVC Multicore Framework</a> can be used in Royale and it is possible to migrate an application by changing its UI part without touching too much business logic.', 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminMDL", 
			"https://transpiledactionscript.com/examples/PureMVCEmployeeAdminMDL", 
			"0.0.1"),
			new ExampleVO("Basic PureMVC Employee Admin", 'That was a copy of the previous example, but in this case the <a href="https://github.com/apache/royale-asjs/tree/develop/frameworks/projects/Basic" class="linksStyle">Basic</a> module was used for building the UI part.'
			+ ' The module does not have a default theme, so visually it is far from perfection. However, you can still learn how to use DataGrid, explore Binding mechanism and use the PureMVC framework.'
			+ ' It also contains the implementation of a custom <a href="https://github.com/apache/royale-asjs/blob/develop/frameworks/projects/Basic/src/main/royale/org/apache/royale/html/Panel.as" class="linksStyle">Panel</a> component, which displays additional information in the title.', 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/PureMVCEmployeeAdminBasic", 
			"https://transpiledactionscript.com/examples/PureMVCEmployeeAdminBasic/", 
			"0.0.1")
		];
		
		public function get examples():Array
		{
			return _examples;
		}
	}
}