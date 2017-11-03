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
			new ExampleVO(
			"The TranspiledActionScript.com website example has been created using MaterialDesignLight module of Apache Royale (FlexJS). "
			+ "It is still work in progress, however you can learn how to use MDL library by checking source code.", 
			"https://github.com/piotrzarzycki21/TranspiledActionScript/tree/examples/Examples/TranspiledActionScriptWebsite", 
			"https://transpiledactionscript.com/", "0.0.1-Pending")
		];
		
		public function get examples():Array
		{
			return _examples;
		}
	}
}