{%extends 'base.tpl'%} {%block name='content'%}<style type="text/css">.op_zx_renwu_photo{overflow:hidden;background-color:#fafafa;padding:15px 10px;margin-bottom:10px;margin-right:1px;width:615px}.op_zx_renwu_photo a,.op_zx_renwu_photo a em{text-decoration:none}.op_zx_renwu_photo table{border-collapse:collapse}.op_zx_renwu_photo td{padding:0;vertical-align:top}.op_zx_renwu_photo h2{font-size:16px;font-weight:bold;line-height:30px;margin:0 0 5px}.op_zx_renwu_photo h2 a,.op_zx_renwu_photo h2 a em{text-decoration:underline}.op_zx_renwu_photo_li{%*i*%}st{overflow:hidden;height:92px;width:600px}.op_zx_renwu_photo_list a{float:left;display:block;height:90px;overflow:hidden;border:#ccc solid 1px}.op_zx_renwu_photo_list img{display:block;height:90px}.op_zx_renwu_photo_more{font-size:15px;line-height:30px}</style><div class="op_zx_renwu_photo"> <h2><a target="_blank" href="{%$tplData.link%}">{%$tplData.word|highlight:0%}的图片</a></h2> <textarea class="op_zx_renwu_photo_data" style="display:none">{%json_encode($tplData.list)%}</textarea> <div class="op_zx_renwu_photo_list"> <div style="height:0px;width:0px;overflow:hidden;clear:both"></div> </div> {%if $tplData.number%} <a class="op_zx_renwu_photo_more" target="_blank" href="{%$tplData.link%}">查看{%$tplData.number%}张图片&gt;&gt;</a> {%/if%}</div><script >
    A.init(function(){
       var __this = this;
   
       (function(){
            var parent = __this.qq("op_zx_renwu_photo_list");
            if(!parent) return;
            var photodata  = new Function("return " + __this.qq("op_zx_renwu_photo_data").value)(),
                cleardom   = parent.getElementsByTagName("div")[0],
                photolinks = [];
                width      = 0;
            for(var i = 0, p, a, img, item; item = photodata[i]; i++){
                if(item.height < 90) continue;
                p = item.width/item.height;
                item.width = p * 90;
                if(width + item.width + 7 > 680){
                    break;
                }
                width += item.width + 7;
                img = document.createElement("img");
                img.src= item.src;
                a = document.createElement("a");
                a.appendChild(img);
                a.href = item.link;
                a.target ="_blank";
                a.style.width = img.style.width = item.width + "px";
                item.a = a;
                if(i){
                    a.style.marginLeft = "5px";   
                }
                photolinks.push(item);
                parent.insertBefore(a, cleardom);
            }
            if(width > 600){
                 var cut = (width - 600)/photolinks.length;
                 for(var i = 0, item; item = photolinks[i]; i++){
                    item.a.style.width = item.width - cut + "px";
                 }
             }
        })();

    });
</script>{%/block%}