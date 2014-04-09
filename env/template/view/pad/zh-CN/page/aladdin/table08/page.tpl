{%extends 'c_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css='tabs'%}{%fe_fn_c_css css='table'%}.op_table08_icon{font-weight:bold;padding-left:30px}</style><div class="c-tabs"> <div class="op_table08_tabs"> <ul class="c-tabs-nav"> {%if $tplData.tab1[0]['name']!=""%} <li class="c-tabs-nav-li op_table08_tab1 OP_LOG_BTN">{%$tplData.tab1[0]['name']|escape:'html'%}</li> {%/if%} {%if $tplData.tab2[0]['name']!=""%} <li class="c-tabs-nav-sep"></li> <li class="c-tabs-nav-li op_table08_tab2 OP_LOG_BTN">{%$tplData.tab2[0]['name']|escape:'html'%}</li> {%/if%} {%if $tplData.tab3[0]['name']!=""%} <li class="c-tabs-nav-sep"></li> <li class="c-tabs-nav-li op_tleable08_tab3 OP_LOG_BTN">{%$tplData.tab3[0]['name']|escape:'html'%}</li> {%/if%} {%if $tplData.tab4[0]['name']!=""%} <li class="c-tabs-nav-sep"></li> <li class="c-tabs-nav-li op_table08_tab4 OP_LOG_BTN">{%$tplData.tab4[0]['name']|escape:'html'%}</li> {%/if%} </ul> </div> <div class="op_table08_tables"></div></div>{%if $tplData.morelink[0]['linkurl']!=""%}<div class="c-gap-top op_table08_morelink"><a href="{%$tplData.morelink[0]['linkurl']%}" target="_blank" class="op_table08_dl">{%$tplData.morelink[0]['linkcontent']|highlight:0%}</a></div>{%/if%}{%if $tplData.icon[0]['iconaddress']!=""%}<div class="c-gap-top op_table08_icon" style="background:url({%$tplData.icon[0]['iconaddress']%}) no-repeat"> {%if $tplData.icon[0]['iconlink']!=""%}<a href="{%$tplData.icon[0]['iconlink']%}" target="_blank" class="op_table08_dl">{%/if%}{%$tplData.icon[0]['iconcontent']|escape:'html'%}{%if $tplData.icon[0]['iconlink']!=""%}</a>{%/if%}</div>{%/if%}<script >
    var op_table08_more = {
        {%if $tplData.more1[0]['linkcontent']!=""%}'more1': {url: '{%$tplData.more1[0]['linkurl']%}', text: '{%$tplData.more1[0]['linkcontent']|escape:'html'%}'},{%/if%}
        {%if $tplData.more2[0]['linkcontent']!=""%}'more2': {url: '{%$tplData.more2[0]['linkurl']%}', text: '{%$tplData.more2[0]['linkcontent']|escape:'html'%}'},{%/if%}
        {%if $tplData.more3[0]['linkcontent']!=""%}'more3': {url: '{%$tplData.more3[0]['linkurl']%}', text: '{%$tplData.more3[0]['linkcontent']|escape:'html'%}'},{%/if%}
        {%if $tplData.more4[0]['linkcontent']!=""%}'more4': {url: '{%$tplData.more4[0]['linkurl']%}', text: '{%$tplData.more4[0]['linkcontent']|escape:'html'%}'},{%/if%}'eof': 'eof'
    };
    var op_table08_tbs = {
    {%if $tplData.tab1[0]['name']!=""%}
    tb1: {
        thead: [
        {%if $tplData.tab1[0]['col1']!=""%}'{%$tplData.tab1[0]['col1']%}', {%/if%}
        {%if $tplData.tab1[0]['col2']!=""%}'{%$tplData.tab1[0]['col2']%}', {%/if%}
        {%if $tplData.tab1[0]['col3']!=""%}'{%$tplData.tab1[0]['col3']%}', {%/if%}
        {%if $tplData.tab1[0]['col4']!=""%}'{%$tplData.tab1[0]['col4']%}', {%/if%}
        {%if $tplData.tab1[0]['col5']!=""%}'{%$tplData.tab1[0]['col5']%}', {%/if%}
        {%if $tplData.tab1[0]['col6']!=""%}'{%$tplData.tab1[0]['col6']%}', {%/if%}
        ''
        ],
        trs: [],
        more: op_table08_more['more1']
    },
    {%/if%}
    {%if $tplData.tab2[0]['name']!=""%}
    tb2: {
        thead: [
        {%if $tplData.tab2[0]['col1']!=""%}'{%$tplData.tab2[0]['col1']%}', {%/if%}
        {%if $tplData.tab2[0]['col2']!=""%}'{%$tplData.tab2[0]['col2']%}', {%/if%}
        {%if $tplData.tab2[0]['col3']!=""%}'{%$tplData.tab2[0]['col3']%}', {%/if%}
        {%if $tplData.tab2[0]['col4']!=""%}'{%$tplData.tab2[0]['col4']%}', {%/if%}
        {%if $tplData.tab2[0]['col5']!=""%}'{%$tplData.tab2[0]['col5']%}', {%/if%}
        {%if $tplData.tab2[0]['col6']!=""%}'{%$tplData.tab2[0]['col6']%}', {%/if%}
        ''
        ],
        trs: [],
        more: op_table08_more['more2']
    },
    {%/if%}
    {%if $tplData.tab3[0]['name']!=""%}
    tb3: {
        thead: [
        {%if $tplData.tab3[0]['col1']!=""%}'{%$tplData.tab3[0]['col1']%}', {%/if%}
        {%if $tplData.tab3[0]['col2']!=""%}'{%$tplData.tab3[0]['col2']%}', {%/if%}
        {%if $tplData.tab3[0]['col3']!=""%}'{%$tplData.tab3[0]['col3']%}', {%/if%}
        {%if $tplData.tab3[0]['col4']!=""%}'{%$tplData.tab3[0]['col4']%}', {%/if%}
        {%if $tplData.tab3[0]['col5']!=""%}'{%$tplData.tab3[0]['col5']%}', {%/if%}
        {%if $tplData.tab3[0]['col6']!=""%}'{%$tplData.tab3[0]['col6']%}', {%/if%}
        ''
        ],
        trs: [],
        more: op_table08_more['more3']
    },
    {%/if%}
    {%if $tplData.tab4[0]['name']!=""%}
    tb4: {
        thead: {
        {%if $tplData.tab4[0]['col1']!=""%}'{%$tplData.tab4[0]['col1']%}', {%/if%}
        {%if $tplData.tab4[0]['col2']!=""%}'{%$tplData.tab4[0]['col2']%}', {%/if%}
        {%if $tplData.tab4[0]['col3']!=""%}'{%$tplData.tab4[0]['col3']%}', {%/if%}
        {%if $tplData.tab4[0]['col4']!=""%}'{%$tplData.tab4[0]['col4']%}', {%/if%}
        {%if $tplData.tab4[0]['col5']!=""%}'{%$tplData.tab4[0]['col5']%}', {%/if%}
        {%if $tplData.tab4[0]['col6']!=""%}'{%$tplData.tab4[0]['col6']%}', {%/if%}
        ''
        },
        trs: [],
        more: op_table08_more['more4']
    },
    {%/if%}
    eof: '1'
    };
    var op_table08_rows = [{%$loop_maxcount=count($tplData.tr)%}{%for $op_loop_count=0 to 29%}{%if $op_loop_count<$loop_maxcount%} {tabid: '{%$tplData.tr[$op_loop_count]['tab']%}'
    {%if $tplData.tr[$op_loop_count]['col1']!=""%}, col1: {txt: '{%$tplData.tr[$op_loop_count]['col1']|highlight:0%}'{%if $tplData.tr[$op_loop_count]['col1link']!=""%}, link: '{%$tplData.tr[$op_loop_count]['col1link']%}'{%/if%}}{%/if%}
    {%if $tplData.tr[$op_loop_count]['col2']!=""%}, col2: {txt: '{%$tplData.tr[$op_loop_count]['col2']|highlight:0%}'{%if $tplData.tr[$op_loop_count]['col2link']!=""%}, link: '{%$tplData.tr[$op_loop_count]['col2link']%}'{%/if%}}{%/if%}
    {%if $tplData.tr[$op_loop_count]['col3']!=""%}, col3: {txt: '{%$tplData.tr[$op_loop_count]['col3']|highlight:0%}'{%if $tplData.tr[$op_loop_count]['col3link']!=""%}, link: '{%$tplData.tr[$op_loop_count]['col3link']%}'{%/if%}}{%/if%}
    {%if $tplData.tr[$op_loop_count]['col4']!=""%}, col4: {txt: '{%$tplData.tr[$op_loop_count]['col4']|highlight:0%}'{%if $tplData.tr[$op_loop_count]['col4link']!=""%}, link: '{%$tplData.tr[$op_loop_count]['col4link']%}'{%/if%}}{%/if%}
    {%if $tplData.tr[$op_loop_count]['col5']!=""%}, col5: {txt: '{%$tplData.tr[$op_loop_count]['col5']|highlight:0%}'{%if $tplData.tr[$op_loop_count]['col5link']!=""%}, link: '{%$tplData.tr[$op_loop_count]['col5link']%}'{%/if%}}{%/if%}
    {%if $tplData.tr[$op_loop_count]['col6']!=""%}, col6: {txt: '{%$tplData.tr[$op_loop_count]['col6']|highlight:0%}'{%if $tplData.tr[$op_loop_count]['col6link']!=""%}, link: '{%$tplData.tr[$op_loop_count]['col6link']%}'{%/if%}}{%/if%}
    },
    {%else%}{%break%}{%/if%}{%/for%}''
    ];
    op_table08_rows.pop();
</script><script>A.setup(function() {var _this = this;var op_table08_curTab = {%$tplData.currenttab|escape:'javascript'%};var tbs = window.op_table08_tbs;var rows = window.op_table08_rows;var createElem = function(tagName) {return document.createElement(tagName);};for (var i = 0, row; i < rows.length; i++) {row = rows[i];tbs['tb' + row.tabid].trs.push(row);tbs['tb' + row.tabid].className = 'op_table08_tb' + row.tabid;}var tbContainer = _this.find('.op_table08_tables').get(0);var buildRow = function(row) {if (!row) return false;var tr = createElem('tr');for (var k = 1, td, a; k <= 6; k++) {if (row['col' + k]) {td ={%*i*%} createElem('td');tr.appendChild(td);if (row['col' + k].link) {a = createElem('a');a.href = row['col' + k].link;a.innerHTML = row['col' + k].txt;$(a).addClass('op_table08_dl');a.target = '_blank';td.appendChild(a);}else {td.innerHTML = row['col' + k].txt;}}}return tr;};var buildTb = function(tbData) {if (!tbData) return false;var thead = tbData.thead;thead.pop();var rows = tbData.trs;var tb = createElem('table');$(tb).addClass('op_table08_tb ' + tbData.className);$(tb).addClass('c-table');tb.cel{%*i*%}lSpacing = 0;tb.cellpadding = 0;tbContainer.appendChild(tb);var rowinhead = createElem('tr');$(rowinhead).addClass('c-table-nohihead');for (var i = 0, th; i < thead.length; i++) {th = createElem('th');th.innerHTML = thead[i];rowinhead.appendChild(th);}var head = createElem('thead');head.appendChild(rowinhead);tb.appendChild(head);var body = createElem('tbody');for (var i = 0, r; i < rows.length; i++) {r = buildRow(rows[i]);body.appendChild(r);}tb.appendChild(body);if (tbData.more) {var more = tb{%*i*%}Data.more;var moreTr = createElem('tr');var moreTd = createElem('td');moreTd.setAttribute('colspan', 6);$(moreTd).addClass('op_table08_morerow');moreTd.innerHTML = '<a href="' + more.url + '" target="_blank" class="op_table08_dl">' + more.text + '</a>';moreTr.appendChild(moreTd);body.appendChild(moreTr);}$(tb).hide();};for (var i = 1; i <= 4; i++) {buildTb(tbs['tb' + i]);}var setSepVisibility = function(tab, isVisible){var lis = _this.find('ul.c-tabs-nav')[0].getElementsByTagName('li');var i, l,{%*i*%} found = false;for(i=0,l=lis.length;i<l;i++){if(tab == lis[i]) {found = true;break;}}if(found){if(i>0) lis[i-1].style.visibility = isVisible ? 'visible' : 'hidden';if(i<l-1) lis[i+1].style.visibility = isVisible ? 'visible' : 'hidden';}};var ct = 0,tabs = _this.find('li.c-tabs-nav-li');op_table08_t = function(tab , tabindex) {if (!tab) return false;if ($(tab).hasClass('op_table08_current')) return false;var curTab = _this.find('.op_table08_current').eq(0);if (curTab.length) {curTab.removeClass('{%*i*%}op_table08_current');curTab.removeClass('c-tabs-nav-selected');setSepVisibility(curTab, true);}$(tab).addClass('op_table08_current');$(tab).addClass('c-tabs-nav-selected');setSepVisibility(tab, false);for (var i = 0, t, next; i < tabs.length; i++) {t = tabs[i];next = tabs[i + 1];if ($(t).hasClass('op_table08_current')) {if (next) {$(next).addClass('op_table08_nrb');}}else {if (next) {$(next).removeClass('op_table08_nrb');}}}if (ct == tabindex) return false;var curTable = _this.find('.op_table08_{%*i*%}tb' + ct).eq(0);var thisTable = _this.find('.op_table08_tb' + tabindex).eq(0);if (thisTable.length) thisTable.show();if (curTable.length) curTable.hide();ct = tabindex;};var ctb = _this.find('.op_table08_tab' + op_table08_curTab).get(0);op_table08_t(ctb, op_table08_curTab);$.each(tabs, function(i, e) {$(e).on('click', function() {op_table08_t(e, i + 1)});});});</script>{%/block%}