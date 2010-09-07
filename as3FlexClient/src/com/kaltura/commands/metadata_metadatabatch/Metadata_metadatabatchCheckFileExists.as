package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchCheckFileExistsDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchCheckFileExists extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchCheckFileExists( localPath : String,size : int )
		{
			service= 'metadata_metadatabatch';
			action= 'checkFileExists';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'localPath' );
			valueArr.push( localPath );
			keyArr.push( 'size' );
			valueArr.push( size );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchCheckFileExistsDelegate( this , config );
		}
	}
}
