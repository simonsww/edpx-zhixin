{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-game-basic-info{font-size:13px}.container_s .ecr-game-basic-info{width:270px;overflow:hidden}.container_l .ecr-game-basic-info{width:440px}.ecr-game-basic-info h2{margin:0;padding:0;border-bottom:1px solid #eaeaea;padding-bottom:10px;margin-bottom:10px;font-size:18px;*padding-top:2px;*padding-bottom:7px}.ecr-game-basic-info .meta th{color:#666;width:75px;font-weight:bold}.ecr-game-basic-info .meta th,.ecr-game-basic-info .meta td{vertical-align:top;text-align:left}.ecr-game-basic-info .relevant-info{margin-top:5px;margin-bottom:-10px}
.ecr-game-basic-info .figure td{vertical-align:top;padding-bottom:10px}.ecr-game-basic-info .figure img{border:1px solid #ccc;display:block}.ecr-game-basic-info .figure .figcaption{padding-left:13px;overflow:hidden}.ecr-game-basic-info .figure .figcaption a{line-height:2.31}.ecr-game-basic-info .figure .figcaption p{height:30px;line-height:15px;overflow:hidden}
</style>

<div class="ecr-game-basic-info">
  <h2>{%$tplData.title|escape:'html'%}</h2>
  <table width="100%" cellpadding="3" cellspacing="0" class="meta">
    {%foreach $tplData.attrs as $item%}
    <tr>
      <th>{%$item.key|escape:'html'%}：</th>
      {%if $item.url%}
      <td><a href="{%$item.url|escape:'html'%}" target="_blank">{%$item.value|limitlen:56|escape:'html'%}</a></td>
      {%else%}
      <td>{%$item.value|limitlen:56|escape:'html'%}</td>
      {%/if%}
    </tr>
    {%/foreach%}
  </table>
  {%if count($tplData.relevant_info) > 0%}
  <table width="100%" cellpadding="0" cellspacing="0" class="relevant-info">
    {%foreach $tplData.relevant_info as $item%}
    <tr class="figure">
      <td width="70px"><a href="{%$item.title_url|escape:'html'%}" target="_blank"><img src="{%$item.image|escape:'html'%}" width="68px" height="68px" /></a></td>
      <td>
        <div class="figcaption">
          <a target="_blank" href="{%$item.title_url|escape:'html'%}">{%$item.title|escape:'html'%}</a>
          <p>{%$item.description|limitlen:112|escape:'html'%}</p>
        </div>
      </td>
    </tr>
    {%/foreach%}
  </table>
  {%/if%}
</div>


{%/block%}
