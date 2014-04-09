{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-game-2c-list{font-size:12px}.container_s .ecr-game-2c-list{width:270px;overflow:hidden}.container_l .ecr-game-2c-list{width:440px}.ecr-game-2c-list .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-game-2c-list .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-game-2c-list .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-game-2c-list .ecr-title h2{font-size:14px;margin:0 0 9px}
.ecr-game-2c-list .ecr-body .ecr-thead{height:25px;padding-left:3px;margin-bottom:3px;background:#fafafa}.ecr-game-2c-list .ecr-body .ecr-thead .ecr-td{line-height:25px}.ecr-game-2c-list .ecr-body .ecr-tr{padding-left:3px;border-bottom:1px solid #f6f6f6}.ecr-game-2c-list .ecr-body .ecr-td{display:inline-block;line-height:28px;vertical-align:top}.ecr-game-2c-list .ecr-body .ecr-td-1{width:90px}.ecr-game-2c-list .ecr-body .ecr-td-2{width:340px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.ecr-game-2c-list .ecr-footer{padding-top:10px;line-height:16px}
.container_s .ecr-game-2c-list .ecr-body .ecr-td-2{width:170px}
</style>

<div class="ecr-game-2c-list">
    <div class="ecr-title">
        <h2>{%$tplData.subtitle|escape:'html'%}</h2>
    </div>
    <div class="ecr-body">
        <div class="ecr-thead">
            <span class="ecr-td ecr-td-1">{%$tplData.theader1|escape:'html'%}</span>
            <span class="ecr-td ecr-td-2">{%$tplData.theader2|escape:'html'%}</span>
        </div>
        {%foreach $tplData.list as $row%}
        <div class="ecr-tr">
            <span class="ecr-td ecr-td-1">{%$row.time|escape:'html'%}</span>
            <span class="ecr-td ecr-td-2"><a href="{%$row.src|escape:'html'%}" target="_blank">{%$row.name|escape:'html'%}</a></span>
        </div>
        {%/foreach%}
    </div>
    <div class="ecr-footer">
        <a href="{%$tplData.more.linker|escape:'html'%}" target="_blank">{%$tplData.more.label|escape:'html'%}&gt;&gt;</a>
    </div>
</div>

{%/block%}
