package components
{
	import org.apache.royale.mdl.ButtonChip;
	import org.apache.royale.events.MouseEvent;
	import utils.ContactDivChipWithCssClass;
	
	COMPILE::JS
    {
        import org.apache.royale.core.WrappedHTMLElement;
        import utils.ContactDivChipWithCssClass;
    }

	public class ButtonChipWithHover extends ButtonChip
	{
		public function ButtonChipWithHover()
		{
			super();
		}
		
		private function onButtonChipMouseOver(event:MouseEvent):void
		{
			var divBead:ContactDivChipWithCssClass = getBeadByType(ContactDivChipWithCssClass) as ContactDivChipWithCssClass;
			divBead.hover();
			
			chipTextSpan.style["color"] = "#348f37";
		}
		
		private function onButtonChipMouseOut(event:MouseEvent):void
		{
			var divBead:ContactDivChipWithCssClass = getBeadByType(ContactDivChipWithCssClass) as ContactDivChipWithCssClass;
			divBead.hover();
			
			chipTextSpan.style["color"] = "rgba(0,0,0,.87)";
		}
		
		override public function addedToParent():void
		{
			super.addedToParent();
			
			super.addEventListener("mouseover", onButtonChipMouseOver);
			super.addEventListener("mouseout", onButtonChipMouseOut);
		}
	}
}