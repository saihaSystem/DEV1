function js_getStrLen(str) {
	if(str==null || str == '') return 0;
	var strlen=0;
	for(var i=0; i<str.length; i++) {
		var c=str.charCodeAt(i);
		if( c < 0xac00 || 0xd7a3 < c) strlen++;
		else strlen+=2;

	}
	return strlen;
}

function isEmpty(str){
    if(typeof str == "undefined" || str == null || str == "")
        return true;
    else
        return false ;
}