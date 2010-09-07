package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.vo.KalturaBatchJobFilter;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchGetExclusiveJobsDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchGetExclusiveJobs extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchGetExclusiveJobs( lockKey : KalturaExclusiveLockKey,maxExecutionTime : int,numberOfJobs : int,filter : KalturaBatchJobFilter=null,jobType : int )
		{
			if(filter== null)filter= new KalturaBatchJobFilter();
			service= 'metadata_metadatabatch';
			action= 'getExclusiveJobs';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'maxExecutionTime' );
			valueArr.push( maxExecutionTime );
			keyArr.push( 'numberOfJobs' );
			valueArr.push( numberOfJobs );
 			keyValArr = kalturaObject2Arrays(filter,'filter');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'jobType' );
			valueArr.push( jobType );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchGetExclusiveJobsDelegate( this , config );
		}
	}
}
