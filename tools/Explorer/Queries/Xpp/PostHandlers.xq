(: Copyright (c) Microsoft Corporation.
   Licensed under the MIT license. :)

(: Names of all class methods that are post handlers. :)
(: @Category Informational :)
(: @Language Xpp :)
(: @Author pvillads@microsoft.com :)

<PostHandlers>
{
    for $c in /*
	    for $m in $c//Method
		where $m/AttributeList/Attribute[@Name='PostHandlerFor']
		return <PostHandler Artifact='{$c/@Artifact}' 
		                    StartLine='{$m/@StartLine}' StartCol='{$m/@StartCol}'
		                    EndLine='{$m/@EndLine}' EndCol='{$m/@EndCol}' />
}
</PostHandlers>