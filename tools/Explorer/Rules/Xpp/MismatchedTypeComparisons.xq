(: Find all == expressions where different types are compared. This may cause problems due to loss of precision :)
<Results>
{
	for $c in /* 
	for $m in $c//Method 
	for $e in $m//EqualExpression
	let $left := $e/*[1], $right := $e/*[2]
	let $lt := $left/@Type, $rt := $right/@Type
	where $lt != $rt and $rt != 'nulltype' and $lt != 'nulltype'
	return <Res Artifact='{$c/@Artifact}' Method='{$m/@Name}' Left='{$lt}' Right='{$rt}'
	    StartLine='{$e/@StartLine}' StartCol='{$e/@StartCol}'
	    EndLine='{$e/@EndLine}' EndCol='{$e/@EndCol}' />
}
</Results>