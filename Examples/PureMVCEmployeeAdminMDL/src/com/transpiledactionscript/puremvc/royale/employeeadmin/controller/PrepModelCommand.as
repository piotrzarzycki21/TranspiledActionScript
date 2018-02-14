/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.controller
{
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.RoleProxy;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.UserProxy;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.enum.DeptEnum;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.enum.RoleEnum;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.RoleVO;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.UserVO;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;

	public class PrepModelCommand extends SimpleCommand
	{
		/**
		 * Prepare the Model.
		 */
		override public function execute( note:INotification ) : void	
		{
			// Create User Proxy, 
			var userProxy:UserProxy = new UserProxy();
			
			//Populate it with dummy data 
			userProxy.addItem( new UserVO("lstooge","Larry", "Stooge", "larry@stooges.com", "ijk456",DeptEnum.ACCT ) );
			userProxy.addItem( new UserVO("cstooge","Curly", "Stooge", "curly@stooges.com", "xyz987",DeptEnum.SALES ) );
			userProxy.addItem( new UserVO("mstooge","Moe", "Stooge", "moe@stooges.com", "abc123",DeptEnum.PLANT ) );
			userProxy.addItem( new UserVO("piotrz","Piotr", "Zarzycki", "myemail@gmail.com", "abc123",DeptEnum.ACCT) );
			userProxy.addItem( new UserVO("jess","Jessica", "Jones", "jess@gmail.com", "abc124",DeptEnum.SALES) );

			// register it
			facade.registerProxy( userProxy );

			// Create Role Proxy
			var roleProxy:RoleProxy = new RoleProxy();
			
			//Populate it with dummy data 
			roleProxy.addItem( new RoleVO( "lstooge", [ RoleEnum.PAYROLL,
											  			RoleEnum.EMP_BENEFITS ] ) );
			roleProxy.addItem( new RoleVO( "cstooge", [ RoleEnum.ACCT_PAY,
											  			RoleEnum.ACCT_RCV,
											  			RoleEnum.GEN_LEDGER ] ) );
			roleProxy.addItem( new RoleVO( "mstooge", [ RoleEnum.INVENTORY,
											  			RoleEnum.PRODUCTION,
											  			RoleEnum.SALES,
											  			RoleEnum.SHIPPING ] ) );
     		roleProxy.addItem( new RoleVO( "piotrz", [ RoleEnum.EMP_BENEFITS,
											  			RoleEnum.CUSTOMERS,
											  			RoleEnum.EMP_BENEFITS,
											  			RoleEnum.SHIPPING ] ) );
			roleProxy.addItem( new RoleVO( "jess", [ RoleEnum.RETURNS,
											  			RoleEnum.CUSTOMERS,
											  			RoleEnum.EMP_BENEFITS,
											  			RoleEnum.SHIPPING ] ) );
			// register it
			facade.registerProxy( roleProxy );
		}
	}
}