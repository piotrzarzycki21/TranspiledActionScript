/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin.view
{
	import com.transpiledactionscript.puremvc.royale.employeeadmin.ApplicationFacade;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.UserProxy;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.UserVO;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.view.components.UserList;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import org.apache.royale.events.Event;

	public class UserListMediator extends Mediator
	{
		private var userProxy:UserProxy;

		public static const NAME:String = "UserListMediator";

		public function UserListMediator( viewComponent:UserList )
		{
			super( NAME, viewComponent );
		}
		
		override public function onRegister():void
		{
			userList.addEventListener( UserList.NEW, 	onNew );
			userList.addEventListener( UserList.DELETE, onDelete);
			userList.addEventListener( UserList.SELECT, onSelect );

			userProxy = UserProxy( facade.retrieveProxy( UserProxy.NAME ) );
			userList.users = userProxy.users;
			userList.refreshUsersCount(userList.users.length);
		}
		
		private function get userList():UserList
		{
			return viewComponent as UserList;
		}
		
		override public function listNotificationInterests():Array
		{
			return [
					ApplicationFacade.CANCEL_SELECTED,
					ApplicationFacade.USER_UPDATED,
					ApplicationFacade.REFRESH_USER_COUNT
				   ];
		}
		
		override public function handleNotification(note:INotification):void
		{
			switch ( note.getName() )
			{
				case ApplicationFacade.CANCEL_SELECTED:
					userList.deSelect();
					break;
					
				case ApplicationFacade.USER_UPDATED:
					userList.deSelect();
					break;
					
				case ApplicationFacade.REFRESH_USER_COUNT:
					userList.refreshUsersCount(note.getBody() as int);
					break;
			}
		}
		
		private function onNew( event:Event ):void
		{
			super.sendNotification( ApplicationFacade.NEW_USER, 
							  new UserVO() );
						
		}
		
		private function onDelete( event:Event ):void
		{
			super.sendNotification( ApplicationFacade.CONFIRM_DELETE_USER,
							  userList.selectedUser );
		}
		
		private function onSelect( event:Event ):void
		{
			super.sendNotification( ApplicationFacade.USER_SELECTED,
							  userList.selectedUser );
		}

	}
}