/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo
{
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.enum.DeptEnum;
	
	[Bindable]
	public class UserVO
	{
		public function UserVO ( uname:String=null,
								 fname:String=null,
								 lname:String=null,
								 email:String=null,
								 password:String=null,
								 department:DeptEnum = null)
		{
			if( uname != null ) this.username = uname;
			if( fname != null ) this.fname = fname;
			if( lname != null ) this.lname = lname;
			if( email != null ) this.email = email;
			if( password != null ) this.password = password;
			if( department != null ) this.department = department;
		}
		public var username:String = "";
		public var fname:String = "";
		public var lname:String = "";
		public var email:String = "";
		public var password:String = "";
		public var department:DeptEnum = DeptEnum.NONE_SELECTED;
		
		public function get isValid():Boolean
		{
			return username != "" && password != "" && department != DeptEnum.NONE_SELECTED;
		}
		
		public function get givenName():String
		{
			return this.lname+", "+this.fname;
		}
		
	}
}