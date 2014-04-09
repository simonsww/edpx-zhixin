{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='foot'%}{%/block%}{%block name='data_modifier'%}{%$extData.feData.hasBorder = true%}{%*canvas 宽度值*%}{%$escaped_canvasWidth = 350%}{%*canvas 高度值*%}{%$escaped_canvasHeight = 162%}{%*canvas x轴单元格宽度百分比*%}{%$canvasXCellWidth = round(100/count($tplData.xcell.cell))%}{%*canvas y轴单元格宽度百分比*%}{%$canvasYCellWidth = round(100/count($tplData.ycell.cell))%}{%/block%}{%block name='content'%}<style>.op_gdp_content{position:relative;width:{%$escaped_canvasWidth+180%}px;height:{%$escaped_canvasHeight+35%}px}.op_gdp_map_x{width:{%$escaped_canvasWidth%}px}.op_gdp_map_y{height:{%$escaped_canvasHeight+10%}px}.op_gdp_info{height:{%$escaped_canvasHeight+10%}px}</style><!--[if IE]><script>document.createElement('canvas');</script><![endif]--><p class="op_gdp_title">{%$tplData.title|escape%}</p><p class="op_gdp_subtitle">{%$tplData.subTitle|escape%}</p><div class="op_gdp_content"> <div class="op_gdp_map_x"> </div> <canvas class="op_gdp_map_bg" width="{%$escaped_canvasWidth+8%}" height="{%$escaped_canvasHeight+10%}"></canvas> <canvas class="op_gdp_map_canvas" width="{%$escaped_canvasWidth+8%}" height="{%$escaped_canvasHeight+10%}"></canvas> <canvas class="op_gdp_map_mask" width="{%$escaped_canvasWidth+8%}" height="{%$escaped_canvasHeight+10%}"></canvas> <div class="op_gdp_map_y"> </div> <ol class="op_gdp_info"></ol></div> <div class="op_gdp_tools c-gap-top"> {%if $tplData.sourcetitle%}数据来自<a href="{%if $tplData.sourceurl%}{%$tplData.sourceurl%}{%/if%}" target="_blank">{%$tplData.sourcetitle|escape%}</a><span class="op_gdp_tools_sep">|</span>{%/if%}<span class="op_gdp_tools_fb_area"><a class="op_gdp_tools_fb OP_LOG_BTN" href="javascript:;" data-click="{info:'报错'}">报错</a></span> </div><script >
    A.setup({
        "escaped_canvasWidth":"{%$escaped_canvasWidth%}",
        "escaped_canvasHeight":"{%$escaped_canvasHeight%}",
        "currency":"{%$tplData.currency%}",
        "xmin":"{%$tplData.xmin%}",
        "xmax":"{%$tplData.xmax%}",
        "ymin":"{%$tplData.ymin%}",
        "ymax":"{%$tplData.ymax%}",
        "xcell": {%json_encode($tplData.xcell.cell)%},
        "ycell": {%json_encode($tplData.ycell.cell)%},
        "data": {%json_encode($tplData.data)%}
    });
</script>{%/block%}