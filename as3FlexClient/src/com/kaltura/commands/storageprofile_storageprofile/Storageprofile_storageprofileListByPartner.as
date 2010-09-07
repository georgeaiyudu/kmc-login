package com.kaltura.commands.storageprofile_storageprofile
{
	import com.kaltura.vo.KalturaPartnerFilter;
	import com.kaltura.vo.KalturaFilterPager;
	import com.kaltura.delegates.storageprofile_storageprofile.Storageprofile_storageprofileListByPartnerDelegate;
	import com.kaltura.net.KalturaCall;

	public class Storageprofile_storageprofileListByPartner extends KalturaCall
	{
		public var filterFields : String;
		public function Storageprofile_storageprofileListByPartner( filter : KalturaPartnerFilter=null,pager : KalturaFilterPager=null )
		{
			if(filter== null)filter= new KalturaPartnerFilter();
			if(pager== null)pager= new KalturaFilterPager();
			service= 'storageprofile_storageprofile';
			action= 'listByPartner';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(filter,'filter');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
 			keyValArr = kalturaObject2Arrays(pager,'pager');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Storageprofile_storageprofileListByPartnerDelegate( this , config );
		}
	}
}
