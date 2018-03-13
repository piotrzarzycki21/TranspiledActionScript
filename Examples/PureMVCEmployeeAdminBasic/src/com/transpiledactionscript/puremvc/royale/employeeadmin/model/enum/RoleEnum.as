/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.model.enum
{
	public class RoleEnum
	{
		public static const NONE_SELECTED:RoleEnum 	= new RoleEnum( "--None Selected--"		,-1 );
		public static const ADMIN:RoleEnum 			= new RoleEnum( "Administrator"			, 0 );
		public static const ACCT_PAY:RoleEnum 		= new RoleEnum( "Accounts Payable"		, 1 );
		public static const ACCT_RCV:RoleEnum 		= new RoleEnum( "Accounts Receivable"	, 2 );
		public static const EMP_BENEFITS:RoleEnum 	= new RoleEnum( "Employee Benefits"		, 3 );
		public static const GEN_LEDGER:RoleEnum 	= new RoleEnum( "General Ledger"		, 4 );
		public static const PAYROLL:RoleEnum 		= new RoleEnum( "Payroll"				, 5 );
		public static const INVENTORY:RoleEnum 		= new RoleEnum( "Inventory"				, 6 );
		public static const PRODUCTION:RoleEnum 	= new RoleEnum( "Production"			, 7 );
		public static const QUALITY_CTL:RoleEnum 	= new RoleEnum( "Quality Control" 		, 8 );
		public static const SALES:RoleEnum 			= new RoleEnum( "Sales"					, 9 );
		public static const ORDERS:RoleEnum 		= new RoleEnum( "Orders"				,10 );
		public static const CUSTOMERS:RoleEnum 		= new RoleEnum( "Customers"				,11 );
		public static const SHIPPING:RoleEnum 		= new RoleEnum( "Shipping"				,12 );
		public static const RETURNS:RoleEnum 		= new RoleEnum( "Returns"				,13 );
		
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
		
		public function RoleEnum ( value:String, ordinal:int )
		{
			this.value = value;
			this.ordinal = ordinal;
		}

		public static function get list():Array
		{
			return [ ADMIN, 
					 ACCT_PAY, 
					 ACCT_RCV, 
					 EMP_BENEFITS, 
					 GEN_LEDGER, 
					 PAYROLL,
					 INVENTORY,
					 PRODUCTION,
					 QUALITY_CTL,
					 SALES,
					 ORDERS,
					 CUSTOMERS,
					 SHIPPING,
					 RETURNS
				   ];
		}

		public static function get comboList():Array
		{
			var cList:Array = RoleEnum.list;
			cList.unshift( NONE_SELECTED );
			return cList;
		}
		
		public function equals( roleEnum:RoleEnum ):Boolean
		{
			return ( this.ordinal == roleEnum.ordinal && this.value == roleEnum.value );
		}
	}
}