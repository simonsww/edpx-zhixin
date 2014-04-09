{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%if $rsNum > 0%}{%for $index=0 to 7%}{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}{%if $index < $rsNum%}{%$rsWord.phrase|vui_escape:'javacript'%}{%if $index != 7%},{%/if%}{%/if%}{%/for%}{%/if%}
