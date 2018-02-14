/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.model
{
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.enum.DeptEnum;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.UserVO;
	import org.puremvc.as3.multicore.patterns.proxy.Proxy;
	import org.apache.royale.collections.ArrayList;

	public class UserProxy extends Proxy
	{
		public static const NAME:String = "UserProxy";

		public function UserProxy( )
		{
			super( NAME, new ArrayList );
		}

		// return data property cast to proper type
		public function get users():ArrayList
		{
			return data as ArrayList ;
		}

		// add an item to the data	
		public function addItem( item:Object ):void
		{
			users.addItem( item );
		}
				
		// update an item in the data
		public function updateItem( item:Object ):void
		{
			var user:UserVO = item as UserVO;
			for ( var i:int=0; i<users.length; i++ )
			{
				var currentUser:UserVO = users.getItemAt(i) as UserVO;
				if (currentUser.username == user.username) 
				{
					users.setItemAt(user, i);
				}
			}
		}
		
		// delete an item in the data
		public function deleteItem(item:Object):void
		{
			var user:UserVO = item as UserVO;
			for (var i:int=0; i<users.length; i++)
			{
				var currentUser:UserVO = users.getItemAt(i) as UserVO;
				if (currentUser.username == user.username) 
				{
					users.removeItemAt(i);
				}
			}
		}
	}
}