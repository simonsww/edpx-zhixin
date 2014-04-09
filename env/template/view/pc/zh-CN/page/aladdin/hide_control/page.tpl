{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style >.op_hide_control{margin:45px 0 60px 0}.op_hide_control_open{margin-bottom:20px}.op_hide_control_tip1,.op_hide_control_tip2{color:#666;font-size:14px}.op_hide_control_tip3{color:#00c;margin-top:7px;cursor:pointer;text-decoration:underline;font-size:14px;display:block;width:310px}.op_hide_control_arrow{background:url(http://www.baidu.com/aladdin/img/kefu/arrow.gif) no-repeat 0 5px;+background-position:0 2px;_background-position:0 5px;width:11px;height:13px;display:inline-block;margin-left:{%*i*%}2px}.op_resultParent table,.op_resultParent br{display:none}.op_resultWrapper #page{display:none}.op_resultParent .op_resultDisplay,.op_resultParent .op_resultDisplay table,.op_resultParent .op_resultDisplay br{display:block}</style><font size="-1"> <div class="op_hide_control"> <p class="op_hide_control_tip1">{%$tplData.content1%}</p> <p class="op_hide_control_tip2" style="display:none;">{%$tplData.content2%}</p> <p class="op_hide_control_tip3">{%$tplData.content3%}<span class="op_hide_control_arrow"></span></p> </div></font><script >
A.init(function() {
    var _this = this,
        contain = _this.container,
        tableParent = contain.parentNode,
        tableArray = tableParent.childNodes,
        tableLen = tableArray.length,
        wrapper = tableParent.parentNode,
        divcontainer = _this.find('.op_hide_control')[0],
        tip1 = _this.find('.op_hide_control_tip1')[0],
        tip2 = _this.find('.op_hide_control_tip2')[0],
        tip3 = _this.find('.op_hide_control_tip3')[0];
    for (var i = 0; i < tableLen; i++) {
        if (tableArray[i].nodeType == 1 && (tableArray[i].nodeName != 'STYLE' && tableArray[i].nodeName != 'SCRIPT')) {
            $(tableArray[i]).addClass('op_resultDisplay');
        }
    }
    $(tableParent).addClass('op_resultParent');
    $(wrapper).addClass('op_resultWrapper');
    tip3.onclick = function() {
        $(tableParent).removeClass('op_resultParent');
        $(wrapper).removeClass('op_resultWrapper');
        tip1.style.display = 'none';
        tip2.style.display = 'block';
        tip3.style.display = 'none';
        $(divcontainer).addClass('op_hide_control_open');
    };
});
</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}