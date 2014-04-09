{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasShowURLGap=true%}{%/block%}{%block name='content'%}<div class="op_flash"><div class="op_flash_container"><script >

A.setup(function() {
var __this = this;
var swfVersion=(function(){var h=navigator;if(h.plugins&&h.mimeTypes.length){var d=h.plugins["Shockwave Flash"];if(d&&d.description){return d.description.replace(/([a-zA-Z]|\s)+/,"").replace(/(\s)+r/,".")+".0"
}}else{if(window.ActiveXObject&&!window.opera){for(var b=10;b>=2;b--){try{var g=new ActiveXObject("ShockwaveFlash.ShockwaveFlash."+b);
if(g){var a=g.GetVariable("$version");return a.replace(/WIN/g,"").replace(/,/g,".")}}catch(f){}}}}})();
var CF = window.CF =  new(function(){
	var fdf=false;
	var checkflash;
	var hide;
	var hidebr;
	var creatFlash;
	var check;
	var firstbr=true;
	var clickURL = "http://www.baidu.com/aladdin/flash/weather/index.swf";
	//给flash加上时间参数
	function addTimeStamp(url,param){
		if(!url) return false;
		var regexp = new RegExp('(\\?|&)('+param+'=[^&$]*)');
		if(regexp.test(url)){
			url = url.replace(regexp , function(s0,s1,s2){
				return s1+s2+new Date().getTime();
			});
			return url;
		}else{
			if(url.indexOf('?')>0){
				return url+='&'+param+'='+new Date().getTime();
			}else{
				return url+='?'+param+'='+new Date().getTime();
			}
		}
		
	}
	function setFDFfunction(){
		fdf = true;
		return fdf;
	}
	function creatFlashfunction(murl, mt, url, width, height, fq, showurl, base, container, noshowurl, cURL){
		// set click URL
		if(cURL !== "")	clickURL = cURL;

		var str = "";
		str += "<div class='c-border' style='width:"+width+"px;height:"+height+"px;padding:0;'>";
		str += "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' width="+width+" height="+height+" id='flashResult'>";
		str += "<param name='movie' value="+url+">";
		str += "<param name=FlashVars value="+fq+">";
		str += "<param name=base value="+base+">";
		str += "<param name='menu' value='false'>";
		str += "<param name='wmode' value='opaque'>";
		str += "<param name='allowfullscreen' value='false'>";
		str += "<param name='allowscriptaccess' value='always'>";
		str += "<embed FlashVars="+fq+" src="+addTimeStamp(url , 't')+" quality='high' pluginspage='http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width="+width+" height="+height+" menu='false' allowfullscreen='false' allowscriptaccess='always' name='flashResult' wmode='opaque' base="+base+" />";
		str += "</object></div>";

		if(container){
			container.innerHTML = str;
		}
		else{
			document.write(str);
		}
	}
	
	function getVersion(){
		var n = navigator;
		if (n.plugins && n.mimeTypes.length){
			var a = n.plugins["Shockwave Flash"];
			if (a && a.description) {
				return a.description.replace(/([a-zA-Z]|\s)+/, "").replace(/(\s)+r/, ".") + ".0";
			}
		} else if (window.ActiveXObject && !window.opera) {
			for (var i = 10; i >= 2; i--) {
				try {
					var c = new ActiveXObject('ShockwaveFlash.ShockwaveFlash.' + i);
					if (c) {
						var version = c.GetVariable("$version");
						version = version.replace(/WIN/g,'');
						version = version.replace(/,/g,'.');
						return version;
						break;
					}
				} catch(e) {return "1.0.0"; }
			}
		}
		return "1.0.0"; 
	}
	
	function hidefunction(flashid , callback){
		if(callback){
			callback();
			return false;
		}
		var fid = flashid?flashid:'flash';
		var flash = document.getElementById(fid);
		try{
			var ft = al_c(flash);
			var ft = document.getElementById(ft);
			ft.style.display="none";
		}catch(e){}
		
	}

	function hidebrfunction(id){
		var flash_version=getVersion().split('.');
		var hasFlash = false;
		if(flash_version[0]>9) hasFlash = true;
		if(flash_version[0] == 9 && flash_version[1] > 0) hasFlash = true;
		if(flash_version[0] == 9 && flash_version[1]== 0 && flash_version[2]>= 28)
		hasFlash = true;
		var fid = id?id:'flash';
		var flash = document.getElementById(fid);
		var ft = al_c(flash);
		var ft = document.getElementById(ft);
		var fb = ft.nextSibling;
		if(!hasFlash&&(firstbr==true)){
		fb.style.display="none";
		}
		else if(!firstbr&&(!fdf)){
			fb.style.display="none";
		}
		firstbr = false;
	}
	
	function checkflashversion(flashid , callback){
		var version = swfVersion.version || '1.0.0' ;
		var flash_version = version.split('.');
		var hasFlash = false;
		if(!flash_version) { hasFlash = false;}
		else{	
			if(flash_version[0]>9) hasFlash = true;
			if(flash_version[0] == 9 && flash_version[1] > 0) hasFlash = true;
			if(flash_version[0] == 9 && flash_version[1]== 0 && flash_version[2]>= 28)
				hasFlash = true;
		}
		if(!hasFlash){
			c({'fm':'inlo','url':clickURL,'p1':getFlashP1(),'p2':1,'tp':"6"});
			hidefunction(flashid , callback);
		}else c({'fm':'inlo','url':clickURL,'p1':getFlashP1(),'p2':1,'tp':"7"});
	}
	
	function checkfunction(){
	
		if(fdf){
			c({'fm':'inlo','url':clickURL,'p1':getFlashP1(),'p2':1,'tp':"8"});
			return true;
		}
		c({'fm':'inlo','url':clickURL,'p1':getFlashP1(),'p2':1,'tp':"9"});
		hidefunction();
		hidebrfunction();
	}
	
	return{
		hidebr	:	function(id){	hidebrfunction(id);	},
		hide	:	function(id,callback){	hidefunction(id,callback);	},
		checkflash:	function(id , callback){	checkflashversion(id , callback);	},
		check	:	function(){	checkfunction();	},
		creatFlash:	function(murl,mt,url,width,height,fq,showurl,base,container,noshowurl){	creatFlashfunction(murl,mt,url,width,height,fq,showurl,base,container,noshowurl);	},
		setFDF	:	function(){	return setFDFfunction();	}
		};
})();
    
function getFlashP1() {var flash = __this.find('.op_flash')[0];}
	var container = __this.find('.op_flash_container')[0];
	var noshowurl = false;
	var fq = 'fq=' + encodeURI('{%$tplData.condition%}');
	var fdf;
	var clickURL = '{%if $tplData.clickURL!=""%}{%$tplData.clickURL%}{%/if%}';
	
	var province = encodeURIComponent('{%if $extData.AutoExtendedLocation!=""%}{%$extData.AutoExtendedLocation%}{%/if%}');
	var flashURL = '{%$tplData.swf%}' + (province === '' ? '' : '&province=' + province);
	
	CF.checkflash();
	CF.creatFlash('{%$tplData.url%}', '{%$tplData.title|highlight:0%}', flashURL, '{%$tplData.flawidth%}', '{%$tplData.flalength%}', fq, '{%$tplData.showurl%}', '{%if $tplData.base!=""%}{%$tplData.base%}{%/if%}', container, noshowurl, clickURL);
    
	//setTimeout(CF.hidebr, 1);
});

</script></div></div>{%/block%}