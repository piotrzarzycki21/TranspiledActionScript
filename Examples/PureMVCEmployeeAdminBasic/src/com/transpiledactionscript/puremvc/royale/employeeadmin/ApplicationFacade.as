/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.transpiledactionscript.puremvc.royale.employeeadmin
{
	import com.transpiledactionscript.puremvc.royale.employeeadmin.controller.*;
	import org.puremvc.as3.multicore.patterns.facade.Facade;
	
	public class ApplicationFacade extends Facade
	{
		public static const NAME:String = "PureMVCEmployeeAdminMDL";
		// Notification name constants
		public static const STARTUP:String 			= "startup";
		
		public static const NEW_USER:String 		= "newUser";
		public static const DELETE_USER:String 		= "deleteUser";
		public static const CANCEL_SELECTED:String	= "cancelSelected";
		
		public static const POPULATE_USERS:String	= "populateUsers";
		public static const USER_SELECTED:String	= "userSelected";
		public static const USER_ADDED:String		= "userAdded";
		public static const USER_UPDATED:String		= "userUpdated";
		public static const USER_DELETED:String		= "userDeleted";
		public static const REFRESH_USER_COUNT:String = "refreshUserCount";
		public static const ADD_ROLE:String 		= "addRole";
		public static const ADD_ROLE_RESULT:String 	= "addRoleResult";
		
		public function ApplicationFacade(key:String):void
		{
			super(key);	
		}
		/**
		 * Singleton Factory Method
		 */
		public static function getInstance( key:String ) : ApplicationFacade 
        {
            if ( instanceMap[ key ] == null ) instanceMap[ key ]  = new ApplicationFacade( key );
            return instanceMap[ key ] as ApplicationFacade;
        }
		
		/**
		 * Start the application
		 */
		 public function startup( app:PureMVCEmployeeAdminBasic):void
		 {
		 	sendNotification( STARTUP, app );	
		 }

		/**
		 * Register Commands with the Controller 
		 */
		override protected function initializeController( ) : void 
		{
			super.initializeController();			
			registerCommand( STARTUP, StartupCommand );
			registerCommand( DELETE_USER, DeleteUserCommand );
			registerCommand( ADD_ROLE_RESULT, AddRoleResultCommand );
		}
		
	}
}