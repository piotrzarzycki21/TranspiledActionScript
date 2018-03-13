/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.model.enum
{
	public class DeptEnum
	{
		public static const NONE_SELECTED:DeptEnum 	= new DeptEnum( "--None Selected--"	,-1 );
		public static const ACCT:DeptEnum 			= new DeptEnum( "Accounting"		, 0 );
		public static const SALES:DeptEnum 			= new DeptEnum( "Sales"				, 1 );
		public static const PLANT:DeptEnum 			= new DeptEnum( "Plant"				, 2 );
		public static const SHIPPING:DeptEnum 		= new DeptEnum( "Shipping"			, 3 );
		public static const QC:DeptEnum 			= new DeptEnum( "Quality Control"	, 4 );
		
		private var _ordinal:int;
		private var _value:String;
		
		public function get ordinal():int
		{
			return _ordinal;			
		}		
		
		public function set ordinal(value:int):void
		{
			_ordinal = value;	
		}		
		
		public function get value():String
		{
			return _value;	
		}		
		
		public function set value(value:String):void
		{
			_value = value;	
		}		
		
		public function DeptEnum ( value:String, ordinal:int )
		{
			this.value = value;
			this.ordinal = ordinal;
		}

		public static function get list():Array
		{
			return [ ACCT, 
					 SALES, 
					 PLANT
				   ];
		}

		public static function get comboList():Array
		{
			var cList:Array = DeptEnum.list;
			cList.unshift( NONE_SELECTED );
			return cList;
		}
		
		public function equals( roleEnum:RoleEnum ):Boolean
		{
			return ( this.ordinal == roleEnum.ordinal && this.value == roleEnum.value );
		}
	}
}