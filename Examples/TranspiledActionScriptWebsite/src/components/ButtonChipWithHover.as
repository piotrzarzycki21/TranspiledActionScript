package components
{
	import org.apache.royale.events.MouseEvent;
	import utils.ContactDivChipWithCssClass;
    import org.apache.royale.mdl.Chip;
	
	COMPILE::JS
    {
        import org.apache.royale.core.WrappedHTMLElement;
        import utils.ContactDivChipWithCssClass;
    }

	public class ButtonChipWithHover extends Chip
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
			
			chipTextSpan.style["color"] = "#d52d28";
		}
		
		override public function addedToParent():void
		{
			super.addedToParent();
			
			chipTextSpan.style["fontSize"] = "14pt";
			super.addEventListener("mouseover", onButtonChipMouseOver);
			super.addEventListener("mouseout", onButtonChipMouseOut);
		}
	}
}