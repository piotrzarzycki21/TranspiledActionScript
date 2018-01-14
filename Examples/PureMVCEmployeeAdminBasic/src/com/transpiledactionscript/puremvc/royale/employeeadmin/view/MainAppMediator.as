package com.transpiledactionscript.puremvc.royale.employeeadmin.view
{
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.ApplicationFacade;
	import org.apache.royale.html.Alert;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import com.transpiledactionscript.puremvc.royale.employeeadmin.model.vo.UserVO;
	import org.apache.royale.events.CloseEvent;

	public class MainAppMediator extends Mediator
	{
		public static const NAME:String = "MainAppMediator";
		
		private var userForDelete:UserVO;
		private var currentAlert:Alert;
		
		public function MainAppMediator(app:PureMVCEmployeeAdminBasic)
		{
			super(NAME, app);
		}
		
		override public function listNotificationInterests():Array
		{
			return [
				ApplicationFacade.CONFIRM_DELETE_USER,
				ApplicationFacade.ROLE_EXISTS
			];
		}
		
		override public function handleNotification(note:INotification):void
		{
			switch ( note.getName() )
			{
				case ApplicationFacade.CONFIRM_DELETE_USER:
					userForDelete = note.getBody() as UserVO;
					currentAlert = Alert.show("Are you sure ?", this.viewComponent, "", Alert.OK | Alert.CANCEL);
					currentAlert.addEventListener("close", onDialogDeleteConfirm);
					centerPopup();
					break;
				case ApplicationFacade.ROLE_EXISTS:
					currentAlert = Alert.show("Role already exists for this user!", this.viewComponent, "", Alert.OK);
					currentAlert.addEventListener("close", onDialogDeleteConfirm);
					centerPopup();
					break;				
			}
		}
		
					
		private function onDialogDeleteConfirm(event:CloseEvent):void
		{
		    var facade:ApplicationFacade = ApplicationFacade.getInstance(ApplicationFacade.NAME);			
			if (event.detail == Alert.OK)
			{
				sendNotification(ApplicationFacade.DELETE_USER, userForDelete);
			}
			
			currentAlert.removeEventListener("close", onDialogDeleteConfirm);
			currentAlert = null;
		}
		
		private function onDialogRoleExists(event:CloseEvent):void
		{
			currentAlert.removeEventListener("close", onDialogRoleExists);
			currentAlert = null;	
		}		
		
		private function centerPopup():void
		{
			currentAlert.element.style["position"] = "absolute";
			currentAlert.x = this.viewComponent.width / 2 - currentAlert.width / 2;
			currentAlert.y = this.viewComponent.height / 2;				
		}
	}
}