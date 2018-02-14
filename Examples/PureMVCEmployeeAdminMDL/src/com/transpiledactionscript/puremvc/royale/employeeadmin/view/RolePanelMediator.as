/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.view
{
	import com.transpiledactionscript.puremvc.royale.employeeadmin.ApplicationFacade;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.RoleProxy;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.enum.RoleEnum;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.RoleVO;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.UserVO;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.view.components.RolePanel;

	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import org.apache.royale.events.Event;

	public class RolePanelMediator extends Mediator
	{
		private var roleProxy:RoleProxy;		
		
		public static const NAME:String = "RolePanelMediator";

		public function RolePanelMediator( viewComponent:RolePanel )
		{
			super( NAME, viewComponent );			
		}
		
		override public function onRegister():void
		{
			rolePanel.addEventListener( RolePanel.ADD, onAddRole );
			rolePanel.addEventListener( RolePanel.REMOVE, onRemoveRole );

			roleProxy = RoleProxy( facade.retrieveProxy( RoleProxy.NAME ) );
		}
		
		override public function listNotificationInterests():Array
		{
			return [
					ApplicationFacade.NEW_USER,
					ApplicationFacade.USER_ADDED,
					ApplicationFacade.USER_UPDATED,
					ApplicationFacade.USER_DELETED,
					ApplicationFacade.CANCEL_SELECTED,
					ApplicationFacade.USER_SELECTED,
					ApplicationFacade.ADD_ROLE_RESULT
				   ];
		}
		
		override public function handleNotification( note:INotification ):void
		{

			switch ( note.getName() )
			{
				case ApplicationFacade.NEW_USER:
					clearForm();
					break;
					
				case ApplicationFacade.USER_ADDED:
					rolePanel.user = UserVO( note.getBody() );
					var roleVO:RoleVO = new RoleVO ( rolePanel.user.username );
					roleProxy.addItem( roleVO );
					clearForm();
					break;
					
				case ApplicationFacade.USER_UPDATED:
					clearForm();
					break;
					
				case ApplicationFacade.USER_DELETED:
					clearForm();
					break;
					
				case ApplicationFacade.CANCEL_SELECTED:
					clearForm();
					break;
					
				case ApplicationFacade.USER_SELECTED:
					rolePanel.user = UserVO( note.getBody() );
					rolePanel.userRoles = roleProxy.getUserRoles( rolePanel.user.username );
					rolePanel.reset();
					break;
					
				case ApplicationFacade.ADD_ROLE_RESULT:
					rolePanel.userRoles = roleProxy.getUserRoles( rolePanel.user.username );
					rolePanel.reset();
					break;
					
			}
		}
		
		private function onAddRole( event:Event):void
		{
			roleProxy.addRoleToUser( rolePanel.user, rolePanel.selectedRole );
		}
		
		private function onRemoveRole( event:Event ):void
		{
			roleProxy.removeRoleFromUser( rolePanel.user, rolePanel.selectedRole );
		}
		
		private function clearForm():void
		{		
			rolePanel.user = null;
			rolePanel.userRoles = null;
			rolePanel.reset();
		}

		private function get rolePanel():RolePanel
		{
			return viewComponent as RolePanel;
		}
		
	}
}