package vos
{
	public class ExampleVO
	{
		public var description:String;
		public var sourceUrl:String;
		public var liveUrl:String;
		public var version:String;
		
		public function ExampleVO(description:String, sourceUrl:String, liveUrl:String, version:String)
		{
			this.description = description;
			this.sourceUrl = sourceUrl;
			this.liveUrl = liveUrl;
			this.version = version;
		}
	}
}