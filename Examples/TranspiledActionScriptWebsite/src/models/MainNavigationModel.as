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
	import vos.NavigationVO;
	
	[Bindable]
	public class MainNavigationModel
	{
		private var _mainNavigation:Array = [
		   new NavigationVO("Examples"),
		   new NavigationVO("Snippets"),
		   new NavigationVO("Utils"),
           new NavigationVO("About"),
		   new NavigationVO("|", null, "#7451BC"),
		   new NavigationVO("GitHub", "https://github.com/piotrzarzycki21/TranspiledActionScript", "#D1CBE4"),
		   new NavigationVO("Patreon", "https://www.patreon.com/piotrzarzycki", "#D1CBE4")
        ];
		
		private var _rightFooterNavigation:Array = [
		   new NavigationVO("Examples"),
		   new NavigationVO("Snippets"),
		   new NavigationVO("Utils"),
           new NavigationVO("About"),
		   new NavigationVO("Legal"),	
		   new NavigationVO("|", null, "#7451BC"),
		   new NavigationVO("GitHub", "https://github.com/piotrzarzycki21/TranspiledActionScript", "#D1CBE4"),
		   new NavigationVO("Patreon", "https://www.patreon.com/piotrzarzycki", "#D1CBE4")
        ];

		public function get mainNavigation():Array
        {
            return _mainNavigation;
        }

		public function get rightFooterNavigation():Array
		{
			return _rightFooterNavigation;
		}
	}
}