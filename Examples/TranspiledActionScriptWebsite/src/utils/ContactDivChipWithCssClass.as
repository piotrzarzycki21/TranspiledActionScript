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
package utils
{
	import org.apache.royale.mdl.beads.ContactImageChip;
	import org.apache.royale.core.IStrand;
	import org.apache.royale.core.UIBase;

	public class ContactDivChipWithCssClass extends ContactImageChip
	{
		public function ContactDivChipWithCssClass()
		{
			super();
		}
		
		COMPILE::JS
		private var divElement:HTMLDivElement;
		
		private var _className:String;
		private var _hoverClassName:String;
		
		public function set className(value:String):void
		{
			_className = value;
		}
		
		public function set hoverClassName(value:String):void
		{
			_hoverClassName = value;	
		}		
		
		override public function set strand(value:IStrand):void
		{
			var host:UIBase = value as UIBase;
			
			COMPILE::JS
            {
                var element:HTMLElement = host.element as HTMLElement;
                var isValidElement:Boolean = element is HTMLSpanElement || element is HTMLButtonElement;

                if (isValidElement && element.className.search("mdl-chip") > -1)
                {
                    element.classList.add("mdl-chip--contact");

                    divElement = document.createElement("div") as HTMLDivElement;
                    divElement.classList.add("mdl-chip__contact");
                    element.insertBefore(divElement, host["chipTextSpan"]);
					
					if (_className)
					{
						divElement.classList.add(_className);
					}
                }
                else
                {
                    throw new Error("Host component must be an MDL Host for Chips.");
                }
            }
		}
		
		COMPILE::JS
		public function hover():void
		{
			if (_hoverClassName)
			{
				divElement.classList.toggle(_hoverClassName);
			}
		}
	}
}