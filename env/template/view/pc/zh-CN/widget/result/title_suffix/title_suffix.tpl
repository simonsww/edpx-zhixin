{%fis_widget%}{%if $isUserLogin == 1 && $isFavoOn == 1%}{%if $tplData.classicInfo.favoFlag == 1%}<span class="tsuf"><span class="fav fav_add" data-fav="1" data-id="{%$tplData.classicInfo.favoItemId%}" title="点击取消收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%else%}<span class="tsuf"><span class="fav fav_nor" data-fav="0" data-id="0" title="点击收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%/if%}{%/if%}{%/fis_widget%}