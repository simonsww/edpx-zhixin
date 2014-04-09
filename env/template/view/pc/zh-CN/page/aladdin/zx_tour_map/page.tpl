{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasShowURLGap = true%}{%/block%}{%block name='content'%}<div class="op-zx-tour-map-container"> <div class="op-zx-tour-map-box OP_LOG_OTHERS" data-click="{fm:'beha'}"></div> </div><script >
    //为阿拉丁单条结果实例创建数据
    A.setup({
        lng: '{%$tplData.lng%}'*1,
        lat: '{%$tplData.lat%}'*1,
        zoom: '{%$tplData.zoom%}'*1,
        point: {%json_encode($tplData.point)%}
    });
</script>{%/block%}