{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='foot'%}{%/block%}{%block name='data_modifier'%}{%$extData.feData.hasBorder = true%}{%*canvas 宽度值*%}{%$escaped_canvasWidth = 350%}{%*canvas 高度值*%}{%$escaped_canvasHeight = 162%}{%*canvas x轴单元格宽度百分比*%}{%$canvasXCellWidth = round(100/count($tplData.xcell.cell))%}{%*canvas y轴单元格宽度百分比*%}{%$canvasYCellWidth = round(100/count($tplData.ycell.cell))%}{%/block%}{%block name='content'%}<style>.op_curve_content{position:relative;width:{%$escaped_canvasWidth+180%}px;height:{%$escaped_canvasHeight+35%}px}.op_curve_map_x{width:{%$escaped_canvasWidth%}px}.op_curve_map_y{height:{%$escaped_canvasHeight+10%}px}.op_curve_info{height:{%$escaped_canvasHeight+10%}px}</style><!--[if IE]><script>document.createElement('canvas');</script><![endif]--><p class="op_curve_title">{%$tplData.title|escape%}</p><p class="op_curve_subtitle">{%$tplData.subTitle|escape%}</p><div class="op_curve_content"> <div class="op_curve_map_x"> </div> <canvas class="op_curve_map_bg" width="{%$escaped_canvasWidth+8%}" height="{%$escaped_canvasHeight+10%}"></canvas> <canvas class="op_curve_map_canvas" width="{%$escaped_canvasWidth+8%}" height="{%$escaped_canvasHeight+10%}"></canvas> <canvas class="op_curve_map_mask" width="{%$escaped_canvasWidth+8%}" height="{%$escaped_canvasHeight+10%}"></canvas> <div class="op_curve_map_y"> </div> <ol class="op_curve_info"></ol></div> <div class="op_curve_tools c-gap-top"> {%if $tplData.sourcetitle%}数据来自<a href="{%if $tplData.sourceurl%}{%$tplData.sourceurl%}{%/if%}" target="_blank">{%$tplData.sourcetitle|escape%}</a><span class="op_curve_tools_sep">|</span>{%/if%}<span class="op_curve_tools_fb_area"><a class="op_curve_tools_fb OP_LOG_BTN" href="javascript:;" data-click="{info:'报错'}">报错</a></span> </div><script >
    A.setup({
        "escaped_canvasWidth":"{%$escaped_canvasWidth%}",
        "escaped_canvasHeight":"{%$escaped_canvasHeight%}",
        "xmin":"{%$tplData.xmin%}",
        "xmax":"{%$tplData.xmax%}",
        "ymin":"{%$tplData.ymin%}",
        "ymax":"{%$tplData.ymax%}",
        "xcell": {%json_encode($tplData.xcell.cell)%},
        "ycell": {%json_encode($tplData.ycell.cell)%},
        {%if $tplData.xtype%}"xtype": {%json_encode($tplData.xtype)%},{%/if%}
        {%if $tplData.ytype%}"ytype": {%json_encode($tplData.ytype)%},{%/if%}
        {%if $tplData.xzero%}"xzero": {%json_encode($tplData.xzero)%},{%/if%}
        {%if $tplData.QueryLineWidth%}"queryLineWidth": {%json_encode($tplData.QueryLineWidth)%},{%/if%}
        {%if $tplData.NormalLineWidth%}"normalLineWidth": {%json_encode($tplData.NormalLineWidth)%},{%/if%}
        {%if $tplData.HoverLineWidth%}"hoverLineWidth": {%json_encode($tplData.HoverLineWidth)%},{%/if%}
        {%if $tplData.QueryPoint%}"queryPoint": {%json_encode($tplData.QueryPoint)%},{%/if%}
        {%if $tplData.NormalPoint%}"normalPoint": {%json_encode($tplData.NormalPoint)%},{%/if%}
        {%if $tplData.xzero%}"xzero": {%json_encode($tplData.xzero)%},{%/if%}
        "data": {%json_encode($tplData.data)%}

    });
</script>{%/block%}