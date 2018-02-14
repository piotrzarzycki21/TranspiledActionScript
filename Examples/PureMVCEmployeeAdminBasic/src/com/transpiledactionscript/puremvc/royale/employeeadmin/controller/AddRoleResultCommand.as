/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.controller
{
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.ApplicationFacade;

	public class AddRoleResultCommand extends SimpleCommand
	{
		override public function execute( notification:INotification ):void
		{
			var result:Boolean = Boolean( notification.getBody() );
			
			if (result == false) 
			{			
				sendNotification(ApplicationFacade.ROLE_EXISTS);
			}
		}
		
	}
}