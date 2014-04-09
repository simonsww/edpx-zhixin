<?php 
  class CssJs_Util_cee2
   {
      private static $cssStr = '.op_cee2_content .c-dropdown2,op_cee2_btn{float:left;}.op_cee2_subT{font-weight:bold;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("cee2",function(){A.setup(function(){var l=this,b=l.find(".op_cee2_btn1")[0],s=l.find(".op_cee2_btn2")[0],f=l.find(".op_cee2_form1")[0],e=l.find(".op_cee2_form2")[0],j=l.find(".op_cee2_param_container1")[0],i=l.find(".op_cee2_param_container2")[0],r=l.find(".op-cee2-city-all")[0],q=l.find(".op-cee2-city-part")[0],m=l.find(".op_cee2_input_colleage")[0],p=null,o=null,c=null,d=[],a=[],k;function n(z){if(!z.data){return false}var y,w=$(z.container).find(".op_cee2_select");for(v=0;v<w.length;v++){if(w[v].getAttribute("name")===z.name){y=w[v];var B=z.data,u=[];for(var v=0;v<B.length;v++){var t=B[v];u.push(\'<li class="c-dropdown2-option" data-value="\'+t.val+(t.prov?"#"+t.prov+"#":"")+\'">\'+t.name+"</li>")}y.innerHTML=u.join("");var x=y;while(!$(x).hasClass("c-dropdown2")){x=x.parentElement||x.parentNode}A.use("dropdown21",function(){k=A.ui.dropdown21(x,{onchange:function(I){if(z.name=="localid"){var H=I.item;var E=H.value;if(H.value==""){q.style.display="none";r.style.display="";if(o&&a){o.setIndex(0);m.value=a[0].val+"#"+E+"#"}}else{if(o){var D=[];for(var G=0,C;C=a[G];G++){if(C.prov==E){D.push({value:C.val+"#"+E+"#",text:C.name})}}c.removeAll();c.add(D);m.value=D&&D[0]&&D[0].value||"";r.style.display="none";q.style.display=""}}}if(z.name=="collegeid"){var F=I.item.value;var E=p.getValue();m.value=F+"#"+E+"#"}}});if(z.name=="localid"){p=k;d=z.data;k.setName(z.name)}else{if(z.name=="collegeid"){o=k;a=z.data;m.value=a[0].val+"#"+d[1].val+"#"}else{k.setName(z.name)}}});break}}return y}function g(u,v,t){if(!v){return false}if(v=="collegeid"){n({data:u.localid,name:"localid",container:t});n({data:u.collegeid,name:"collegeid",container:t})}else{if(u[v]){n({data:u[v],name:v,container:t})}}}function h(u,w,t){if(w){for(var v in w){if(w.hasOwnProperty(v)){g(u,w[v],t)}}}}$(document).ready(function(){l.ajax(l.data.query,l.data.resourceid,{success:function(t){if(t&&t.length>0){t=t[0];var u={provid:t.prov,localid:t.local,wl:t.wl,year:t.year,collegeid:t.college,param1:t.param1,param2:t.param2};if(u.param1&&u.param1.length>0){h(u,u.param1[0],j)}if(u.param2&&u.param2.length>0){h(u,u.param2[0],i)}}}});if(q){A.use("dropdown21",function(){c=A.ui.dropdown21(q,{onchange:function(t){m.value=t.item.value}})})}});$(b).click(function(){f.submit()});$(s).click(function(){e.submit()});this.dispose=function(){c&&c.dispose&&c.dispose();k&&k.dispose&&k.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
