/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo
{
	import org.apache.royale.collections.ArrayList;

	[Bindable]
	public class RoleVO
	{
		public function RoleVO ( username:String=null,
								 roles:Array=null )
		{
			if( username != null ) this.username = username;
			if( roles != null ) this.roles = new ArrayList( roles );
		} 
		public var username:String = "";
		public var roles:ArrayList = new ArrayList();
	}
}