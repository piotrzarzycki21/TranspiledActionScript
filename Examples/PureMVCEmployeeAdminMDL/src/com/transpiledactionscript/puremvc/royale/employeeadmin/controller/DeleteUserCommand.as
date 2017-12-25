/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.controller
{
	import com.transpiledactionscript.puremvc.royale.employeeadmin.ApplicationFacade;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.RoleProxy;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.UserProxy;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.UserVO;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;

	public class DeleteUserCommand extends SimpleCommand
	{
		
		// retrieve the user and role proxies and delete the user
		// and his roles. then send the USER_DELETED notification
		override public function execute( notification:INotification ):void
		{
			var user:UserVO = UserVO ( notification.getBody() );
			var userProxy:UserProxy = UserProxy( facade.retrieveProxy( UserProxy.NAME ) );
			var roleProxy:RoleProxy = RoleProxy( facade.retrieveProxy( RoleProxy.NAME ) );
			userProxy.deleteItem( user );		
			roleProxy.deleteItem( user );
			sendNotification(ApplicationFacade.USER_DELETED );
			sendNotification(ApplicationFacade.REFRESH_USER_COUNT, userProxy.users.length);
		}
		
	}
}