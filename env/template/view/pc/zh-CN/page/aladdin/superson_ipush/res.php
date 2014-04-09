<?php 
  class CssJs_Util_superson_ipush
   {
      private static $cssStr = '.op_superson_summary{color:#888;}.op_superson_sumcont{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("superson_ipush",function(){A.setup(function(){var d=this,f=d.data.srcUrl,e=d.data.bind||"http://www.baidu.com/home/page/show/setting?tab=msg#msg",c=d.find(".op_superson_img").get(0),a=d.find(".op_superson_name").get(0),b=d.find(".op_superson_info_p").get(0);var j=false;if(bdUser){a.innerHTML="Hi, "+bdUser;var k="http://hi.baidu.com/sys/mainpage/data/ald?bduser=#{0}";var h=function(l){if(j){return}if(l.icon.indexOf("/.jpg")==-1){c.src=l.icon}};$.ajax({url:$.format(k,encodeURIComponent(bdUser)),dataType:"jsonp",success:h});var i=d.data.infoUrl;var g=function(p){if(j){return}if(p.errno==0){if(p.receivedUserDetailMsg[0].isbinded==1){if(p.receivedUserDetailMsg[0].rebinded==0){var q=p.receivedUserDetailMsg[0].msgDetail;if(p.receivedUserDetailMsg[0].number==0){var n=document.createElement("span");n.innerHTML="您暂时没有新的消息";b.appendChild(n);return}var o=q.length;b.innerHTML="";for(var m=0;m<o;m++){var n=document.createElement("span");n.innerHTML=q[m].type+"：";b.appendChild(n);var l=document.createElement("a");l.href=q[m].unreadurl;l.target="_blank";l.innerHTML=q[m].number;l.className="op_superon_info_a";n.appendChild(l)}}else{var n=document.createElement("span");n.innerHTML="您的邮箱密码已变更，";b.appendChild(n);var l=document.createElement("a");l.href=e;l.target="_blank";l.innerHTML="点击重新绑定";l.className="op_superon_info_a";n.appendChild(l)}}else{var n=document.createElement("span");n.innerHTML="您的账号未绑定，";b.appendChild(n);var l=document.createElement("a");l.href=e;l.target="_blank";l.innerHTML="点击绑定";l.className="op_superon_info_a";n.appendChild(l)}}else{}};$.ajax({url:$.format(i,encodeURIComponent(f)),dataType:"jsonp",success:g,scriptCharset:"gb2312",jsonp:"cb"})}else{d.find(".op_superson_table").get(0).style.display="none";d.find(".op_superson_sumcont").get(0).style.display="block"}this.dispose=function(){if(!j){j=true}}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
