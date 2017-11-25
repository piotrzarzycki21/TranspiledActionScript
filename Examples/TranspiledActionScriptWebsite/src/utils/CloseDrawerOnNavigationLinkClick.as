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
    import org.apache.royale.core.IBead;
	import org.apache.royale.core.IStrand;
    import org.apache.royale.core.UIBase;
    import org.apache.royale.events.Event;
    import org.apache.royale.mdl.Drawer;
    import org.apache.royale.mdl.Navigation;

    /**
	 *  This bead allow to close Drawer when someone click on Navigation link
	 *  It fixes issue in MDL https://github.com/google/material-design-lite/issues/1246
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10.2
	 *  @playerversion AIR 2.6
	 *  @productversion Royale 0.9
	 */
	public class CloseDrawerOnNavigationLinkClick implements IBead
	{
		/**
		 *  constructor.
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion Royale 0.
		 */
		public function CloseDrawerOnNavigationLinkClick()
		{
		}

		private var _strand:IStrand;
		private var host:Drawer;
        private var materialLayout:Object;

		/**
		 *  @copy org.apache.royale.core.IBead#strand
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion Royale 0.8
		 *  @royaleignorecoercion HTMLInputElement
		 *  @royaleignorecoercion org.apache.royale.core.UIBase;
		 */
		public function set strand(value:IStrand):void
		{
			_strand = value;
			
			host = value as Drawer;
			if (host)
            {
				host.addEventListener("initComplete", onDrawerInitComplete);

				COMPILE::JS
                {
                    var mainNavigation:UIBase = UIBase(host.parent);
                    mainNavigation.element.addEventListener("mdl-componentupgraded", onElementMdlComponentUpgraded, false);
                }
            }
		}

		private function onDrawerInitComplete(event:Event):void
		{
            host.removeEventListener("initComplete", onDrawerInitComplete);
			if (host.strandChildren)
            {
                var drawerChildrenCount:int = host.strandChildren.numElements;
                for (var i:int = 0; i < drawerChildrenCount; i++)
                {
                    var navigation:Navigation = host.strandChildren.getElementAt(i) as Navigation;
                    if (navigation)
                    {
                        navigation.addEventListener("change", onNavigationChange);
                    }
                }
            }
		}
		
        private function onElementMdlComponentUpgraded(event:Event):void
        {
            if (!event.currentTarget) return;

            COMPILE::JS
            {
                var mainNavigation:UIBase = UIBase(host.parent);
                mainNavigation.element.removeEventListener("mdl-componentupgraded", onElementMdlComponentUpgraded, false);

                materialLayout = event.currentTarget.MaterialLayout;
            }
        }

        private function onNavigationChange(event:Event):void
		{
			COMPILE::JS
            {
				if (materialLayout)
                {
                    materialLayout.toggleDrawer();
                }
            }
		}
	}
}
