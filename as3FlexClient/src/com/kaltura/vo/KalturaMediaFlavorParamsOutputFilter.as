package com.kaltura.vo
{
	import com.kaltura.vo.KalturaFlavorParamsOutputFilter;

	[Bindable]
	public dynamic class KalturaMediaFlavorParamsOutputFilter extends KalturaFlavorParamsOutputFilter
	{
override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}
	}
}