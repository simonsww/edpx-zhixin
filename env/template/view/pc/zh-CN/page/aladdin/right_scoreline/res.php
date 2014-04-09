<?php 
  class CssJs_Util_right_scoreline
   {
      private static $cssStr = '.opr_right_scoreline_main{width:100%;color:#333;}.opr_right_scoreline_main a{color:#00c;}.opr_right_scoreline_subtitle{font-size:14px;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;position:relative;zoom:1;}.opr_right_scoreline_subtitle_tip{padding-right:10px;margin-right:30px;background:#fff;font-weight:bold;}.opr_right_scoreline_select span{float:left;display:inline-block;padding-top:10px;}.opr_right_scoreline_select select{float:left;height:22px;margin:8px 5px 0;border:1px solid #7294b3;}.opr_right_scoreline_table_container{margin:8px 0 0;position:relative;}.opr_right_scoreline_table_container table{width:100%;margin-top:8px;text-align:center;}.opr_right_scoreline_table_container table td{line-height:27px;background-color:#fff;border-bottom:1px solid #f0f0f0;}.opr_right_scoreline_table_container table th{line-height:27px;font-weight:normal;background-color:#fafafa;border-bottom:1px solid #f0f0f0;}.op_right_scoreline_table_td{height:84px;border:none;}.opr_right_scoreline_more{margin:8px 0 0;}.opr_right_scoreline_msg{width:100%;font-size:12px;color:#333;position:absolute;top:28px;left:0;text-align:center;display:none;background-color:#fff;}.container_l .opr_right_scoreline_main{width:451px;}.container_s .opr_right_scoreline_main{width:281px;}.container_l .opr_right_scoreline_tr_l{display:normal;}.container_l .opr_right_scoreline_tr_s{display:none;}.container_s .opr_right_scoreline_tr_l{display:none;}.container_s .opr_right_scoreline_tr_s{display:normal;}.opr_right_scoreline_th_score_l{width:auto;}.opr_right_scoreline_th_score_s{width:100px;}.opr_right_scoreline_table_container table td.op_right_scoreline_table_td{height:84px;border:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_scoreline",function(){A.setup(function(){var f=this;var e=f.find(".opr_right_scroeline_select_provid").get(0);var i=f.find(".opr_right_scoreline_select_wl").get(0);var h=f.find(".opr_right_scoreline_link").get(0);var a=f.find(".opr_right_scoreline_table_box").get(0);var c=f.find(".opr_right_scoreline_msg").get(0);var b=null;e.onchange=function(){d()};i.onchange=function(){d()};function g(j){c.innerHTML=j;c.style.height=tbody.offsetHeight+"px";c.style.lineHeight=tbody.offsetHeight+"px";c.style.display="block"}function d(){var l=e.value;var n=i.value;var j=e.options[e.options.selectedIndex].text;var m=i.options[i.options.selectedIndex].text;var k=f.find(".opr_right_scoreline_table_tbody").get(0);b&&clearTimeout(b);b=setTimeout(function(){g("数据加载中,请稍后")},500);f.ajax(j+f.data.query,f.data.srcid,{success:function(s){if(s){if(s.length>0){var s=s[0];var q=[\'<table cellspacing="0" cellpadding="0"><thead>\'];q.push(\'<tr class="opr_right_scoreline_tr_l">\');q.push("<th>"+s.header[0].name+"</th>");q.push("<th>"+s.header[0].maxpoint+"</th>");q.push("<th nowrap>"+s.header[0].minpoint+"</th>");q.push("<th nowrap>"+s.header[0].pici+"</th></tr>");q.push(\'<tr class="opr_right_scoreline_tr_s">\');q.push(\'<th class="opr_right_scoreline_table_left">\'+s.header[0].name+"</th>");q.push(\'<th class="opr_right_scoreline_th_score_s">\'+s.header[0].maxpoint+"</th>");q.push("<th nowrap>"+s.header[0].minpoint+"</th>");q.push("<th nowrap>"+s.header[0].pici+\'</th></tr></thead><tbody class="opr_right_scoreline_table_tbody">\');var o=false;for(var p=0,r;r=s.year[p];p++){if(r.course==m){if(r.maxpoint!="--"||r.minpoint!="--"){o=true;break}}}if(!o){q.push(\'<tr><td colspan="4" rowspan="3" class="op_right_scoreline_table_td">未找到结果，建议更改筛选条件</td></tr>\')}else{for(var p=0,r;r=s.year[p];p++){if(r.course==m){q.push(\'<tr><td class="opr_right_scoreline_table_left">\'+r.name+"</td><td>"+r.maxpoint+"</td><td nowrap>"+r.minpoint+"</td><td nowrap>"+r.pici+"</td></tr>")}if(p>4){break}}}q.push("</tbody></table>");a.innerHTML=q.join("");if(h&&s.morelink&&s.morelink[0]&&s.morelink[0].url){h.href=s.morelink[0].url}clearTimeout(b)}else{g("未找到结果，建议更改筛选条件")}}},error:function(){g("网络超时，请刷新后重试")},timeout:function(){g("网络超时，请刷新后重试")}})}this.dispose=function(){clearTimeout(b)}})});';   // js字串，不含<script标签
      private static $uiList = '';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
      public static function getHeadCss()
      {
         if (!is_string(self::$cssStr))
         {
            return '';
         }
         return self::$cssStr;
      }
      
      public static function getFootJs()
      {
         if (!is_string(self::$jsStr))
         {
            return '';
         }
         return self::$jsStr;
      }
      
      // 返回数组
      public static function getCssUI()
      {
		 if ( empty(self::$uiList) ) return array();

         $arr = @explode(',', self::$uiList);
         if (!is_array($arr))
         {
            $arr = array();
         }
         return $arr;
      }
   }
