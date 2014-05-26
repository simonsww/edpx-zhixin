<?php

function smarty_modifier_makeAD($arrAll,$type='xhtml')
{
	if(empty($arrAll)) return '';
	
	$ret = '';
	$ad_pos_id = $arrAll[0]['ad_pos_id'];

        if($ad_pos_id == '6'){
                if($type == 'iphone'){

                        $ret .='<div class="resitem adv adv1">';
                        $ret .='<div style="border:solid 1px #cccccc;height:50px;width:300px;margin-bottom:6px;">'.$arrAll[0]['logo'];
                        $ret .=$arrAll[0]['promotion'].'</div>';
                        
		        foreach($arrAll as $arr){
			        $ret .= ((substr($ad_pos_id, -1, 1)=='3' && isset($arr['label']))?$arr['label']:'').'<a href="'.$arr['titleurl'].'">'.$arr['title'].'</a><div class="abs">'.(isset($arr['abs'])?$arr['abs']:'');
			        if(isset($arr['site']) && !empty($arr['site'])){
				        $ret .= '<br/><span class="site">'.$arr['site'].'</span><span class="gray"> - 品牌推广</span>';
			        }
			        $ret .= '</div>';
		        }

                        if($arrAll[0]['sublink1']){
                                $ret .='<div style="font-size:14px;color:#666666;">'.$arrAll[0]['sublink1'][0].' | '.$arrAll[0]['sublink1'][1].' | '.$arrAll[0]['sublink1'][2].' | '.$arrAll[0]['sublink1'][3].'</div>';
                        }
                        if($arrAll[0]['brandphone']){
                                $ret .='<div style="margin-top:8px;">'.$arrAll[0]['brandphone'].'</div>';
                        }
                        if($arrAll[0]['sublink2']){
                                $ret .='<div style="font-size:14px;margin-top:6px;"><img src="http://m.baidu.com/static/index/ad/green.gif" style="margin-right:2px;"/>'.$arrAll[0]['sublink2'][0];
                                $ret .='<br/><img src="http://m.baidu.com/static/index/ad/orange.gif" style="margin-right:2px;"/>'.$arrAll[0]['sublink2'][1].'</div>';
                        } 
                        $ret .='</div>';
                        $ret .='<hr style="color:#e1e1e1;margin-bottom:4px;margin-top:2px;border-top-width:0px;"/>';
                }elseif($type == 'wml'){
                     	foreach($arrAll as $arr){
			        $ret .= ((substr($ad_pos_id, -1, 1)=='3' && isset($arr['label']))?$arr['label']:'').'<a href="'.$arr['titleurl'].'">'.$arr['title'].'</a><br />'.(isset($arr['abs'])?$arr['abs'].'<br/>':'').(isset($arr['site'])?$arr['site'].' - 品牌推广<br/>':'');
		        }
                        if($arrAll[0]['sublink1']){        
                                $ret .=$arrAll[0]['sublink1'][0].' | '.$arrAll[0]['sublink1'][1].' | '.$arrAll[0]['sublink1'][2].'<br/>';
                        }
                        if($arrAll[0]['brandphone']){
                                $ret .=$arrAll[0]['brandphone'].'<br/>';
                        }
                        if($arrAll[0]['sublink2']){
                                $ret .=$arrAll[0]['sublink2'][0].'<br/>';
                                $ret .=$arrAll[0]['sublink2'][1].'<br/>';
                        }
                        $ret .='<br/>';
                }elseif($type == 'xhtml'){
//                        $ret .= '<div><a href="'.$arrAll[0]['titleurl'].'">'.$arrAll[0]['title'].'</a></div>';
                        $ret .='<table><tr><td style="padding-top:9px;vertical-align:top;"><div style="border:solid 1px #cccccc">'.$arrAll[0]['logo'].'</div></td><td>';
		        $ret .= '<div class="resitem adv adv1" >';
		        foreach($arrAll as $arr){
			        $ret .='<div><a href="'.$arr['titleurl'].'">'.$arr['title'].'</a></div>';
                                $ret .='<div class="abs">'.(isset($arr['abs'])?$arr['abs']:'');
			        if(isset($arr['site']) && !empty($arr['site'])){
				        $ret .= '<div><span class="site">'.$arr['site'].'</span><span class="gray"> - 品牌推广</span></div>';
			        }
			        $ret .= '</div>';
		        }
//                        $ret .= '</div>';
//                        $ret .='</td></tr></table>';

                        if($arrAll[0]['sublink1']){
                                $ret .='<div class="abs">'.$arrAll[0]['sublink1'][0].' | '.$arrAll[0]['sublink1'][1].' | '.$arrAll[0]['sublink1'][2].'</div>';
                        }

                        if($arrAll[0]['brandphone']){
                                $ret .='<div style="margin-top:5px;">'.$arrAll[0]['brandphone'].'</div>';
                        }
                        if($arrAll[0]['sublink2']){
                                $ret .='<div class="abs"><img src="http://m.baidu.com/static/index/ad/green.gif" style="margin-right:2px;"/>'.$arrAll[0]['sublink2'][0];
                                $ret .='<br/><img src="http://m.baidu.com/static/index/ad/orange.gif" style="margin-right:2px;"/>'.$arrAll[0]['sublink2'][1].'</div>';
                        } 

                        $ret .= '</div>';
                        $ret .='</td></tr></table>';       
                        $ret .='<hr style="color:#e1e1e1;margin-bottom:4px;margin-top:2px;border-top-width:0px;"/>'; 
                }
                

        }
        else{
        if($type == 'xhtml'){
		$ret .= '<div class="resitem adv adv'.$ad_pos_id.'" >';
		foreach($arrAll as $arr){
			if(isset($arr['titlepre']) && !empty($arr['titlepre'])){
            	$ret .=$arr['titlepre'];
            }
			$ret .= ((substr($ad_pos_id, -1, 1)=='3' && isset($arr['label']))?$arr['label']:'').'<a href="'.$arr['titleurl'].'">'.$arr['title'].'</a><div class="abs">'.(isset($arr['abs'])?$arr['abs']:'');
			if(isset($arr['site']) && !empty($arr['site'])){
				$ret .= '<br/><span class="site">'.$arr['site'].'</span>';
			}
			$ret .= '</div>';
		}
		$ret .= '</div>';
	}elseif($type == 'wml'){
		foreach($arrAll as $arr){
			if(isset($arr['titlepre']) && !empty($arr['titlepre'])){
            	$ret .=$arr['titlepre'];
            }
			$ret .= ((substr($ad_pos_id, -1, 1)=='3' && isset($arr['label']))?$arr['label']:'').'<a href="'.$arr['titleurl'].'">'.$arr['title'].'</a><br />'.(isset($arr['abs'])?$arr['abs'].'<br/>':'').(isset($arr['site'])?$arr['site'].'<br/>':'');
		}
	}elseif($type == 'zbxml'){
			foreach($arrAll as $arr){
				$ret.='<result type="adv">';
				$ret.='<type>';
				$ret.='<![CDATA[ '.$arr['type'].' ]]>';
				$ret.='</type>';
				$ret.='<url><![CDATA[ '.$arr['titleurl'].' ]]></url>';
				$ret.='<title><![CDATA[ '.$arr['title'].' ]]></title>';
				$ret.='<abs><![CDATA[ '.$arr['abs'].' ]]></abs>';
				$ret.='<site><![CDATA[ '.$arr['site'].' ]]></site>';
				$ret.='</result>';
		}
	}elseif($type == 'ucweb'){
			foreach($arrAll as $arr){
				$ret.='<result><seqnum>0</seqnum><lastmod></lastmod><sizekb>0</sizekb>';
				$ret.='<uri><![CDATA[ '.$arr['titleurl'].'  ]]></uri>';
				$ret.='<title><![CDATA[  '.$arr['title'].'  ]]></title>';
				if(!empty($arr['abs']))
					$ret.='<abstract><![CDATA[  '.$arr['abs'].'  ]]></abstract>';
				if(!empty($arr['site']))
					$ret.='<SHORTURL><![CDATA[  '.$arr['site'].'  ]]></SHORTURL>';
				$ret.='</result>';
		}
	}
	}
	//Ϊ���չ����־��¼չ�ֵ����
	if(class_exists('ADLogConfig')){
		ADLogConfig::$display[] = $arrAll;
	}
	
	return $ret;
}

/* vim: set expandtab: */

?>
