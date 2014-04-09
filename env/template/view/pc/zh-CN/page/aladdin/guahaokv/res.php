<?php 
  class CssJs_Util_guahaokv
   {
      private static $cssStr = '.op_guahaokv_container{position:relative;}.op_guahaokv_questiontip{font-size:12px;color:#888;}.op_guahaokv_questionsign{position:absolute;top:13px;right:9px;color:#828282;width:230px;}.op_guahaokv_question{font-size:15px;line-height:22px;}.op_guahaokv_qutip{display:inline-block;color:#000;float:left;}.op_guahaokv_qunum{color:#000;}.op_guahaokv_qutext{display:inline-block;color:#000;float:left;width:430px;}.op_guahaokv_setup .op_guahaokv_judge{display:inline-block;width:76px;height:22px;line-height:22px;border-top:1px solid #5b85bf;border-bottom:1px solid #5b85bf;background-color:#378bff;text-align:center;color:#fff;text-decoration:none;cursor:pointer;}.op_guahaokv_back{color:#00c;text-decoration:underline;font-size:12px;cursor:pointer;}.op_guahaokv_standardtip1{font-size:12px;color:#878787;}.op_guahaokv_standardtip2{font-size:12px;color:#878787;}.op_guahaokv_recom{color:#8a8a8a;}.op_guahaokv_office{line-height:20px;}.op_guahaokv_office a{margin-right:15px;display:inline-block;}.op_guahaokv_answers{display:none;}.op_guahaokv_line{width:100%;height:1px;overflow:hidden;font-family:0;background:#ececec;margin:5px 0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("guahaokv",function(){A.setup(function(){var f=baidu=A.baidu,r=this;var u=r.find(".op_guahaokv_yes")[0];var c=r.find(".op_guahaokv_no")[0];var p=r.find(".op_guahaokv_back1")[0];var a=r.find(".op_guahaokv_back2")[0];var h=r.find(".op_guahaokv_qunum")[0];var s=r.find(".op_guahaokv_questionover")[0];var e=r.find(".op_guahaokv_goon")[0];var m=r.find(".op_guahaokv_qutext")[0];var k=r.find(".op_guahaokv_question_text")[0];var w=r.find(".op_guahaokv_questions")[0];var d=r.find(".op_guahaokv_answers")[0];var i=r.find(".op_guahaokv_office")[0];var q=r.find(".op_guahaokv_standardtip1")[0];var o=r.find(".op_guahaokv_standardtip2")[0];var n=r.find(".op_guahaokv_recom")[0];var l=[];var j=[];function b(){var x=r.find(".op_guahaokv_yesid")[0].value;r.ajax(x,r.data.srcid,{success:function(z){if(z){var z=z[0];if(z.ansType=="1"){r.find(".op_guahaokv_yesid")[0].value=z.yesid;r.find(".op_guahaokv_noid")[0].value=z.noid;r.find(".op_guahaokv_backtext")[0].value=z.back[0].preid;if(z.question[0].over=="1"){e.innerHTML="还需要回答"}else{e.innerHTML="最多还需要回答"}h.innerHTML=z.question[0].num;s.innerHTML=z.question[0].over;m.innerHTML=z.ans[0].pre;p.innerHTML=z.back[0].text;q.innerHTML=z.standardtip}else{if(z.ansType=="2"){window.c({fm:"inlo",rsv_gtype:"last",url:z.url});w.style.display="none";r.find(".op_guahaokv_backtext2")[0].value=z.back[0].preid;l.length=0;for(var y=0;y<z.ans.length;y++){l.push(z.ans[y].pre+\'<a href="\'+z.ans[y].linkurl+\'" data-click="{\\\'rsv_gtype\\\':\\\'last\\\'}" target="_blank" >\'+z.ans[y].linkname+"</a>")}k.innerHTML=l.join("");if(z.recomdepartment){n.style.display="block";i.style.display="block";j.length=0;for(var y=0;y<z.recomdepartment.length;y++){j.push(\'<a href="\'+z.recomdepartment[y].url+\'" data-click="{\\\'rsv_gtype\\\':\\\'last\\\'}" target="_blank">\'+z.recomdepartment[y].name+"</a>")}i.innerHTML=j.join("")}else{n.style.display="none";i.style.display="none"}a.innerHTML=z.back[0].text;o.innerHTML=z.standardtip;d.style.display="block"}}}},error:function(){},timeout:function(){}})}function t(){var x=r.find(".op_guahaokv_noid")[0].value;r.ajax(x,r.data.srcid,{success:function(z){if(z){var z=z[0];if(z.ansType=="1"){r.find(".op_guahaokv_yesid")[0].value=z.yesid;r.find(".op_guahaokv_noid")[0].value=z.noid;r.find(".op_guahaokv_backtext")[0].value=z.back[0].preid;if(z.question[0].over=="1"){e.innerHTML="还需要回答"}else{e.innerHTML="最多还需要回答"}h.innerHTML=z.question[0].num;s.innerHTML=z.question[0].over;m.innerHTML=z.ans[0].pre;p.innerHTML=z.back[0].text;q.innerHTML=z.standardtip}else{if(z.ansType=="2"){window.c({fm:"inlo",rsv_gtype:"last",url:z.url});w.style.display="none";r.find(".op_guahaokv_backtext2")[0].value=z.back[0].preid;l.length=0;for(var y=0;y<z.ans.length;y++){l.push(z.ans[y].pre+\'<a href="\'+z.ans[y].linkurl+\'" data-click="{\\\'rsv_gtype\\\':\\\'last\\\'}" target="_blank">\'+z.ans[y].linkname+"</a>")}k.innerHTML=l.join("");if(z.recomdepartment){n.style.display="block";i.style.display="block";j.length=0;for(var y=0;y<z.recomdepartment.length;y++){j.push(\'<a href="\'+z.recomdepartment[y].url+\'" data-click="{\\\'rsv_gtype\\\':\\\'last\\\'}" target="_blank">\'+z.recomdepartment[y].name+"</a>")}i.innerHTML=j.join("")}else{n.style.display="none";i.style.display="none"}a.innerHTML=z.back[0].text;o.innerHTML=z.standardtip;d.style.display="block"}}}},error:function(){},timeout:function(){}})}function v(){var x=r.find(".op_guahaokv_backtext")[0].value;r.ajax(x,r.data.srcid,{success:function(y){if(y){var y=y[0];if(y.ansType=="1"){r.find(".op_guahaokv_yesid")[0].value=y.yesid;r.find(".op_guahaokv_noid")[0].value=y.noid;d.style.display="none";w.style.display="block";h.innerHTML=y.question[0].num;s.innerHTML=y.question[0].over;m.innerHTML=y.ans[0].pre;if(!y.back){p.innerHTML="";if(y.question[0].over!="1"){e.innerHTML="回答1-"}else{e.innerHTML="还需要回答"}r.find(".op_guahaokv_backtext")[0].value=""}else{p.innerHTML=y.back[0].text;if(y.question[0].over!="1"){e.innerHTML="最多还需要回答"}else{e.innerHTML="还需要回答"}r.find(".op_guahaokv_backtext")[0].value=y.back[0].preid}q.innerHTML=y.standardtip}}},error:function(){},timeout:function(){}})}function g(){var x=r.find(".op_guahaokv_backtext2")[0].value;r.ajax(x,r.data.srcid,{success:function(y){if(y){var y=y[0];if(y.ansType=="1"){r.find(".op_guahaokv_yesid")[0].value=y.yesid;r.find(".op_guahaokv_noid")[0].value=y.noid;d.style.display="none";w.style.display="block";h.innerHTML=y.question[0].num;s.innerHTML=y.question[0].over;m.innerHTML=y.ans[0].pre;if(!y.back){p.innerHTML="";if(y.question[0].over!="1"){e.innerHTML="回答1-"}else{e.innerHTML="还需要回答"}r.find(".op_guahaokv_backtext")[0].value=""}else{p.innerHTML=y.back[0].text;if(y.question[0].over!="1"){e.innerHTML="最多还需要回答"}else{e.innerHTML="还需要回答"}r.find(".op_guahaokv_backtext")[0].value=y.back[0].preid}q.innerHTML=y.standardtip}}},error:function(){},timeout:function(){}})}$(u).click(function(x){b()});$(c).click(function(x){t()});$(p).click(function(x){v()});$(a).click(function(x){g()})})});';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
