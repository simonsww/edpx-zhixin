<?php

function smarty_outputfilter_trimall($source, &$smarty)
{
    //use strip source
	if(strpos($source,'<html') !== false&&strpos($source,'</html>') !== false){
		$tmp = explode('<html',$source,2);
		$tmp2 = explode('</html>',$tmp[1],2);
		$body = preg_replace('![\t ]*[\r\n]+[\t ]*!', '',$tmp2[0]);
		$source = $tmp[0] . '<html' .$body . '</html>' . $tmp2[1];
	}
    elseif(strpos($source,'<html') !== false&&strpos($source,'</html>') == false){
        $tmp = explode('<html',$source,2);
        $source =  $tmp[0] . '<html' .preg_replace('![\t ]*[\r\n]+[\t ]*!', '',$tmp[1]);
    }
    elseif(strpos($source,'<html') == false&&strpos($source,'</html>') !== false){
         $source = preg_replace('![\t ]*[\r\n]+[\t ]*!', '',$source);
    }
    elseif(strpos($source,'<wml>') !== false){
		$tmp = explode('<wml>',$source,2);
		$tmp2 = explode('</wml>',$tmp[1],2);
		$body = preg_replace('![\t ]*[\r\n]+[\t ]*!', '',$tmp2[0]);
		//多个空格和&#160;字符，这些字符经过wmlc压缩后，在低端机浏览器中无法识别
		$body = preg_replace('/(&#160;)+/','&#160;',$body);
		$source = $tmp[0] . '<wml>' .$body . '</wml>' . $tmp2[1];
	}
	
	return $source;
}
?>
