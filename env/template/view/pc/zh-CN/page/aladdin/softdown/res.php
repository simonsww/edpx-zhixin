<?php 
  class CssJs_Util_softdown
   {
      private static $cssStr = '.op-softdown-toptext{color:#4bad37;font-weight:bold;_padding-top:3px;}.op-softdown-toptext i{_vertical-align:top;}.op-softdown-bindinfo{color:#4bad37;font-weight:bold;}.op-softdown-bindtip{clear:both;padding-top:10px;margin:0 -9px -9px;zoom:1;}.op-softdown-bindtip span{display:block;background:#eafbe6;height:30px;line-height:30px;padding:0 10px;font-size:12px;color:#333;}.op-softdown-checkbox{top:-1px;vertical-align:middle;position:relative;margin-left:0;_vertical-align:text-bottom;}.op-softdown-iconbox img{margin:0 auto;}.op-softdown-vsign{position:absolute;display:none;}.op-softdown-arrow{position:absolute;top:-2px;left:-2px;z-index:1;line-height:110%;}.op-softdown-arrowout,.op-softdown-arrowin{color:#ccc;position:absolute;top:3px;left:5px;font-size:12px;font-family:Simsun;font-weight:normal;display:block;z-index:1;}.op-softdown-arrowin{color:#fff;margin-top:1px;}.op-softdown-vcon{font-size:12px;line-height:22px;color:#575757;min-width:230px;_width:230px;position:absolute;border:1px solid #CCC;padding:3px 10px 5px;background:#fff;top:9px;left:0;box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;white-space:nowrap;}.op-softdown-certify-content img{height:22px;margin-right:6px;vertical-align:middle;}.op-softdown-company{font-weight:bold;}.op-software-certify-icon{margin:0 3px;}.op-softdown-downbtn{vertical-align:middle;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("softdown",function(){A.setup(function(){var l=this,s=l.data,b=s.showFlag,j=s.softurl,h=s.bindurl,p=s.iconurl,q=s.fastInfo,o,f,g,a=200,e=b==2,d,m=l.find(".op-softdown"),i=l.find(".op-softdown-checkbox"),n=l.find(".op-softdown-downbtn")[0],k=l.find(".c-icon-v"),c=l.find(".op-softdown-vsign")[0],r=l.find(".op-soft-fastdownbtn");if(b==1&&h){i.click(function(t){n.href=(this.checked==true)?h:j})}if(k&&c){o=function(){var t=k.position();c.style.cssText="display:block;left:"+(t.left+3)+"px;top:"+(t.top+17)+"px"};f=function(){c.style.cssText=""};document.body.appendChild(c);k.hover(function(){clearTimeout(g);o()},function(){g=setTimeout(f,a)});$(c).hover(function(){clearTimeout(g)},function(){g=setTimeout(f,a)})}if(e&&q){d={fname:q.name,fver:q.version,fsize:q.size,iconurl:p,bddlurl:q.bddlurl||j,reurl:q.url,fmd5:q.file_hash,targetVer:q.targetVer,targetVer_bind:q.targetVer_bind,wxurl:q.wxurl,soft_id:q.soft_id};(function(){var E=0;var N=1;var O=2;var M=3;var H=4;var x=5;var K=null;var G=0;var v=1;var D=2;var P=3;var L=4;var J=65535;var y="0.0.0.0";var t=false;function u(){var S=navigator.userAgent.toLowerCase();if(/msie/i.test(S)&&!/opera/.test(S)){return G}if(/firefox/i.test(S)){return v}if(/chrome/i.test(S)&&/webkit/i.test(S)&&/mozilla/i.test(S)){return P}if(/webkit/i.test(S)&&!(/chrome/i.test(S)&&/webkit/i.test(S)&&/mozilla/i.test(S))){return L}if(/opera/i.test(S)){return D}if(/(?:\\sTrident\\/7\\.0;.*\\srv:11\\.0)/i.test(navigator.userAgent)){return G}return G}function F(){var S=navigator.userAgent.match(/chrome\\/([\\d]+)(.[\\d]+){3}/i);if(S&&S.length==3&&parseInt(S[1])>31){return true}return false}function R(){if(l.find(".op-softdown-BDDLPlugin").size()){return}var S=document.createElement("embed");S.style.visibility="hidden";S.type=t?"application/np-BDSoftHelperPlug":"application/np-bddownload";S.style.width="0px";S.style.height="0px";S.className="op-softdown-BDDLPlugin";m.append(S)}function w(T,S){return T[S]}function C(){try{K=new ActiveXObject(t?"ieBDSoftHelperPlug.Implement.1":"BDIEHelper.JSOnClick.1");K.GetInfo()}catch(S){return false}return true}function B(){R();try{K=l.find(".op-softdown-BDDLPlugin")[0];K.GetInfo()}catch(S){return false}return true}function z(S){if(S==G){return C()}else{if(S==v||S==P){return B()}else{return false}}}function Q(W,V,U,af,T,ah,ag,ae,ad,ac){var aa=E;do{if(!z(W)){aa=M;break}try{var X=K.GetVer();if(X==y||(ac&&X!=ac)){aa=N;break}var ab=encodeURIComponent(ae);var Z={soft_id:V,fname:U,fver:af,fmd5:ah,fsize:T,iconurl:ag,url:ae,ntype:W,isbind:t};var S=K.StartTask($.stringify(Z),ae);if(S&&S!=""){aa=H}}catch(Y){aa=x}}while(0);if(aa!=E){window.open(ad)}return aa}function I(){navigator.plugins.refresh(false);var ab=d;var U=w(ab,"soft_id");var T=w(ab,"fname");var ad=w(ab,"fver");var S=w(ab,"fsize");var af=w(ab,"fmd5");var ae=w(ab,"iconurl");var ac=w(ab,"bddlurl");var aa=w(ab,"reurl");var Z=w(ab,"targetVer");var X=u();var W=w(ab,"wxurl");t=false;if(Z==null){Z=w(ab,"targetVer_bind");t=true}try{var V=document.createElement("img");if(W&&W.length){V.src=W}V=null}catch(Y){}if((X==G||X==v||(X==P&&!F()))){Q(X,U,T,ad,S,af,ae,ac,aa,Z)}else{window.location.href=aa}}r.click(function(){I()})})()}this.dispose=function(){clearTimeout(g);try{document.body.removeChild(c)}catch(t){}}})});';   // js字串，不含<script标签
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
