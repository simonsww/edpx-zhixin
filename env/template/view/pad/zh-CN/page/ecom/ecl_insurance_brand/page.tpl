{%extends 'c_base.tpl'%}
{%block name="title"%}
{%/block%}
{%block name='content'%}
<style type="text/css">.ecl-insurance-brand em{color:#c00}.ecl-insurance-brand .ecl-insurance-brand-title{padding-bottom:8px;margin:0}.ecl-insurance-brand .ecl-insurance-brand-cards{height:132px;border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:10px;font-size:inherit;overflow:hidden}.ecl-insurance-brand .ecl-insurance-brand-cards:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-insurance-brand .ecl-insurance-brand-cards li{width:139px;float:left;margin-right:11px}.ecl-insurance-brand .ecl-insurance-brand-cards li .ecl-insurance-brand-img{width:100%;height:103px;display:block}.ecl-insurance-brand .ecl-insurance-brand-cards li .ecl-insurance-brand-img img{width:100%;height:100%}.ecl-insurance-brand .ecl-insurance-brand-cards li .ecl-insurance-brand-intro{text-align:center;font-size:inherit;font-family:arial;margin-top:10px;font-weight:normal}.ecl-insurance-brand .ecl-insurance-brand-cards li.ecl-insurance-brand-last{margin-left:-1px;margin-right:0}.ecl-footer{padding-top:5px;color:green;font-size:inherit}</style>{%*点击统计*%} 
{%$sessionid=$extData.sessionid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}

<!--your tpl code-->
<div class="ecl-insurance-brand c-container">
    <h4 class="ecl-insurance-brand-title">
        <a target="_blank" class="c-title" href="{%$tplData.mainUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
            {%foreach $tplData.title_hi as $pipe%}
                {%if $pipe eq "[bd_em]"%}
                    <em>
                {%else if $pipe eq "[/bd_em]"%}
                    </em>
                {%else%}
                    {%$pipe|escape:'html'%}
                {%/if%}
            {%/foreach%}
        </a>
    </h4>

    <!--result-->
    <ul class="ecl-insurance-brand-cards">
        {%foreach $tplData.list as $item%}
        {%if ($item@index == 3)%}
        <li class="ecl-insurance-brand-last">
        {%else%}
        <li>
        {%/if%}
            <a target="_blank" class="ecl-insurance-brand-img" href="{%$item.url|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
                <img alt="{%$item.title|escape:'html'%}" src="{%$item.imgSrc|escape:'html'%}" />
            </a>
            <h5 class="ecl-insurance-brand-intro">
                <a target="_blank" href="{%$item.url|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
                    {%foreach $item.text_hi as $txt%}
                        {%if $txt eq "[bd_em]"%}
                            <em>
                        {%else if $txt eq "[/bd_em]"%}
                            </em>
                        {%else%}
                            {%$txt|escape:'html'%}
                        {%/if%}
                    {%/foreach%}
                </a>
            </h5>
        </li>
        {%/foreach%}
    </ul>
    <div class='ecl-footer'>
        caifu.baidu.com
    </div>
</div>


{%/strip%}

{%/block%}