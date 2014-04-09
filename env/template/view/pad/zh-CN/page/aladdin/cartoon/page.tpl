{%extends 'c_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css='img'%}{%fe_fn_c_css css='numberset'%}.op_cartoon_i a{position:relative;text-decoration:none}.op_cartoon_i span{position:absolute;bottom:0;left:0;width:100%;filter:alpha(opacity=70);-moz-opacity:.7;-khtml-opacity:.7;opacity:.7;background:#000;height:20px}.op_cartoon_i b{text-align:center;color:#fff;line-height:20px;font-weight:bold;position:absolute;bottom:0;left:0;width:100%}.op_cartoon_ta{padding:12px 0 7px;border-bottom:1px solid #eee}.op_cartoon_hr{height:10px;line-height:0;font-size:0;overflow:hidden}.op_cartoon_new{position:ab{%*i*%}solute;bottom:10px;right:1px}.op_cartoon_tab{float:left;width:16.6%}.op_cartoon_tab_cur{text-decoration:none;color:#000}.op_cartoon_btn{display:inline-block}.op_cartoon_btn .c-icon{_position:relative;_top:-2px}</style><div class="op_cartoon click-parent-reward" urdata="{pid:'aladdin',resourceid:'{%$extData.resourceid|escape:'javascript'|escape:'html'%}',fetchkey:'{%$extData.fetchkey|escape:'javascript'|escape:'html'%}',jump:1}"> <div class="c-row op_cartoon_i"> {%$loop_maxcount=count($tplData.icon)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%} <a class="c-span4 {%if $op_loop_count == 5%} c-span-last{%/if%}" target="_blank" href="{%$tplData.icon[$op_loop_count]['iconlink']|escape:'html'%}"> <img class="c-img c-img4" src="{%$tplData.icon[$op_loop_count]['iconaddress']|escape:'html'%}" /> <span></span> <b>{%$tplData.icon[$op_loop_count]['iconcontent']|escape:'html'%}</b> {%if $tplData.icon[$op_loop_count]['iconnew']%}<div class="op_cartoon_new c-text c-text-danger" style="">新</div>{%/if%} </a> {%else%}{%break%}{%/if%}{%/for%} </div> {%if $tplData.link|count > 6%} <div class="op_cartoon_l op_cartoon_init"></div> <div class="op_cartoon_ctrl" style="display:none;"> <div class="op_cartoon_l op_cartoon_tl"></div> <div class="c-row op_cartoon_ta"></div> </div> {%if $tplData.link|count > 2*8%} <a href="javascript:;" class="op_cartoon_btn op_cartoon_open c-gap-top OP_LOG_BTN"><i class="c-icon c-icon-unfold c-gap-icon-right-small"></i>{%$tplData.open|highlight:0%}</a> <a href="javascript:;" class="op_cartoon_btn op_cartoon_close c-gap-top OP_LOG_BTN" style="display:none;"><i class="c-icon c-icon-fold c-gap-right-small"></i>{%$tplData.close|escape:'html'%}</a> {%/if%} {%/if%}</div><script type="text/javascript" >
  A.setup({'data':[{%foreach $tplData.link as $link%}['{%$link.linkurl|escape%}', '{%$link.linkcontent|escape:'javascript'%}'], {%/foreach%}''],{%if $tplData.linktext%}'linktext':'{%$tplData.linktext|escape%}',{%/if%}'linkurl':'{%$tplData.url|escape%}','pre':'{%$tplData.linkurlpre|escape%}'});
</script><script type="text/javascript" >
A.setup(function() {
    this.data.data.pop();

    var _this = this, 
        data = _this.data.data,
        initCol = 8,
        initRow = 2,
        pCol = 8,
        pRow = 8,
        pCount = pCol * pRow,
        sum = data.length,
        pn = Math.ceil(sum / pCount),
        lastCount = sum % pCount,
        tl = _this.find('.op_cartoon_tl')[0],
        ta = _this.find('.op_cartoon_ta')[0],
        init_tl = _this.find('.op_cartoon_init')[0],
        btns = _this.find('.op_cartoon_btn'),
        btnOpen = _this.find('.op_cartoon_open')[0],
        btnClose = _this.find('.op_cartoon_close')[0],
        ctrl = _this.find('.op_cartoon_ctrl')[0],
        urlpre = _this.data.pre,
        pages,tabs,curIndex,lastIndex;

    function getHTML(row, col, n){
        var html = [],
            lastClass = '',
            index = 0;

        n = n || 0;

        for (var j = 0; j < row; j++){
            html.push('<ul class="c-numberset c-gap-top">');

            lastClass = '';
            for (var i = 0; i < col; i++) {
                index = n*pCount + j*pCol + i;

                if(index > data.length - 1){
                    break;
                }

                if(i == col - 1){
                    lastClass = 'c-numberset-last';
                }
                    
                html.push(getItemHtml(data[index], lastClass));
            }

            html.push('</ul>');
        }

        return html.join('');
    }

    // 格式化
    function f(s){
        if(parseInt(s) < 1000){
            return ('00' + s).slice(-3);
        }

        return s;
    }

    function format(str, isStart){
        var arr = str.match(/(\d+|.+)(.?)/);
        if(arr.length){

            // arr[1] = f(arr[1]);

            if(isStart){
                return arr[1];
            }else{
                if(!arr[2]){
                    return arr[1] + _this.data.linktext;
                }else{
                    return arr[1] + arr[2];
                }

            }
        }

        return str;
    }

    function init(){
        // 初始化显示默认展现内容
        var initR = initRow;
        
        if(Math.ceil(sum / initCol) < 2){
            initR = 1;
        }

        init_tl.innerHTML = getHTML(initR, initCol);

        if(sum > initRow * initCol){
            var pageHtml = [], tabHtml = [];
            for(var i = 0; i < pn; i++){
                var row = pRow, col = pCol;

                if(i === pn-1){
                    row = Math.ceil(lastCount / pCol);
                }
                pageHtml.push('<div class="op_cartoon_page"' + (i>0?' style="display:none;"':'')+'>'+ getHTML(row, col, i) + '</div>');

                // tab集
                var start = format(data[i*pCount][1], 1),
                endIndex = (i+1)*pCount - 1,
                end = format(data[(endIndex < sum - 1?endIndex:sum-1)][1]);
                
                tabHtml.push('<a href="javascript:;" class="' + (i===0?'op_cartoon_tab_cur':'') + ' op_cartoon_tab" data-id="' + i + '">' + [start, end].join('~') +'</a>');
            }
            tl.innerHTML = pageHtml.join('');
            ta.innerHTML = tabHtml.join('');

            pages = _this.find('.op_cartoon_page', $(tl));
            tabs = _this.find('.op_cartoon_tab', $(ta));
            curIndex = 0;

            // 绑定事件
            
            $(btns).each(function(i,v){
                $(v).click(function(){
                    if($(this).hasClass("op_cartoon_open")){
                        $(btnOpen).hide();
                        $(btnClose).show();
						$(init_tl).hide();
					    $(ctrl).show();                        
                    }else if($(this).hasClass("op_cartoon_close")){
                        $(btnClose).hide();
                        $(btnOpen).show();
						$(ctrl).hide();
					    $(init_tl).show();  
                    }
                });
            });
           
            $(ta).click(function(e){
                var o = e.target ;
                if($(o).hasClass("op_cartoon_tab")){
                    var tid = parseInt($(o).attr('data-id'));
                    if(tid !== curIndex){
                        lastIndex = curIndex;
                        curIndex = tid;                        
                        
                        if(pages.eq(lastIndex).length){
                            pages.eq(lastIndex).hide();
                        };
                        
                        if(tabs.eq(lastIndex).length){
                            tabs.eq(lastIndex).removeClass('op_cartoon_tab_cur');
                        };
                        
                       
                        if(pages.eq(curIndex).length){
                            pages.eq(curIndex).show();
                        };
                        
                        if(tabs.eq(curIndex).length){
                            tabs.eq(curIndex).addClass('op_cartoon_tab_cur')
                        };
                    }
                
                }
            });
            
        }

    }

    init();

    function getItemHtml(a, clas) {
        return ['<li',(clas ? (' class="' + clas + '"') : ''), '><a target="_blank" href="', urlpre , a[0] , '">' , format(a[1]), '</a></li>'].join('');
    }

});
</script>{%/block%}