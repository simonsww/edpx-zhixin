{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%if !is_array($tplData.result)%}{%$tplData.result=array($tplData.result)%}{%/if%}{%foreach $tplData.result as $k=>$result%} {%if isset($tplData.result[$k]['stagValue'])&&!empty($tplData.result[$k]['stagValue'])%} {%$tempStagValue = json_decode($tplData.result[$k]['stagValue'])%} {%$temp_separator='?'%} {%if strpos($tplData.result[$k]['appAddress'],'?')%} {%$temp_separator='&'%} {%/if%} {%$temp_param=''%} {%if $tempStagValue->type=="0"%} {%$tplData.result[$k]['appName']=$tempStagValue->s_name%} {%$tplData.result[$k]['appLogo']=$tempStagValue->s_icon%} {%$tplData.result[$k]['appShortdesc']=$tempStagValue->s_desc%} {%$temp_param=$temp_param|cat:$temp_separator|cat:'bd_param='|cat:($tempStagValue->s_param|urlencode)%} {%elseif $tempStagValue->type=="2"%} {%$tplData.result[$k]['appName']=$tempStagValue->title%} {%$tplData.result[$k]['appLogo']=$tempStagValue->icon%} {%$tplData.result[$k]['appShortdesc']=$tempStagValue->stagdesc%} {%foreach $tempStagValue->s_param as $key => $value%} {%$temp_param = $temp_param|cat:$temp_separator|cat:'bd_'|cat:$value|cat:'='|cat:($tempStagValue->$value|urlencode)%} {%$temp_separator = '&'%} {%/foreach%} {%/if%} {%$tplData.result[$k]['appAddress']=$tplData.result[$k]['appAddress']|cat:$temp_param%} {%/if%} {%if $tplData.result[$k]['supportRefresh']%} {%$tplData['supportRefresh']=$tplData.result[$k]['supportRefresh']%} {%/if%} {%if $tplData.result[$k]['supportCollect']%} {%$tplData['supportCollect']=$tplData.result[$k]['supportCollect']%} {%/if%}{%/foreach%}<style type="text/css" >  
             
        .op_webapp_head{
            height: 40px;
            line-height: 40px;
            font-size: 18px;
            color: #666;
            margin: 0 10px;
            border-bottom: 1px solid #f0f0f0;
        }
        .op_webapp_query{
            margin-left: 10px;
        }
        .op_webapp_title{text-align: center;font-size: 18px;color: #333;}
        .op_webapp_title a,.op_webapp_title a:visited{color:#333;color:#333!important;text-decoration: none;font-size: 18px;}        
        .op_webapp_loading_wrapper{display: table;width: 100%;}
        .op_webapp_loading_inner{display: table-cell;max-height: 1000px;vertical-align: middle;text-align: center;}
        .op_webapp_loading{width:60px;height:60px;display: inline-block;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAMAAAANIilAAAADAFBMVEV8ntOgueGOrNqNruV+nc2Or+RtiLKOr+Z/oNOKreN/ns6HqNuuxeqIqt53lcOXst1Xb5WKocWVst15lsWSte5WbI18ntOPr+Oiut+Wsdp/ns9heJ1ddJeWst2Qs+p5mcpgeJwvOkxogqpphKxlfqSQr+OHqNujvOWCodN9m8qWst5EU22Hp9mduuaCotOlvuZ/n8+Iqd2Vs+OJq96Kqt5+odaCodOLreK0yepRZYR/odjE0eelwOp4m9B7lr+ivOWqweRTao2Iqt5wjLetwuJzj7vO2emBotZXbY9QZIMxPVBEUmh2lMFje6KGp9qLreJVaYpiep+LreJvir{%*i*%}WAoNCKrOGLreKKqtuIqt6BodOivOSIqt7S2+qHqNyBodOJq9+buOWDo9aHqNuKrOGLreKcuOKIqNyBodKAn9E1QlamvuSfu+eHqNt6nNQeJjGdt+GHp9yIqd2owOZgeJ2KrOAvPFCCotS0yeuLruOKrOGkveWEpdinwOd/ntB+odelvuiowOaIqd3X4fCJq9+MqtiDo9SEpdeJqt6EpdgyP1MnMUCCodKHqNvO2emIqd1+nc7Y4O2Fpdh6ndOKp9OzyOqHqNzY3+vS3e60yOd/n9Guw+Z6m82Iqt6EpNeGqNyZt+SJqt/M2OuJqt6FpdiJq+CDo9WIqd2Iqt4sNkaIqd3d5fGJqt/O2uuIqt6bsNCEpNd6m88AAACJqt+KrOKBotWBodN7ndKKrOKJrOGMruSJq+B9n9SNr+WKq+CJq9+KrOKKrOGDo9WIq+CNsOaLreKNr+WKrOCKq+CJrOKNr+aKrOKJrOKIqt6Iqt6Jq+B6ms2OsO{%*i*%}aCodOOr+Wwwt6euOGlvuXv8vikudzR2+3h6PPc4uv9+/jU3ey9zunr7/XX3+qpv+Dk6fG7zeiUrdXq7O7I1emgu+S3x+GduOSQqdLb4/H39fKtw+XL2e20yOaUuPGQsOP2+Pv7+vj9/f2WtOL///7C0emNruORtOx/odaOsOeFp9yKrOH///+HquGLreIiVh+rAAAAsnRSTlP+GrL8lf4u+f/5/HqPvo6+WDOH45Jk+8OUsLd0ZX+GzpgwwnZl1CGH+8CRFt2fw5vimLl8yuLwajE/0iyL6FhkN0zqikWZI6IySR0nhm6jUTSBba75hSbER81oKTFf0jaTuR1hoa0a+d0QUYNp8glx0ZteTk4LQlFkb1jQcufbemklDlgx9uE91CkZ1wsaqP8Esu4PRG0KJj3tS/SOxy2LkxRJ2XTsuBIFFgesHgYB3f8AgHYb1gAABflJREFUeNqNl2dwE1cQgO9fGNJ77z0h9BZKCCX0Ekhieu8t9F{%*i*%}CMC7ZxAQzuHdu427Is5MMeLIRGIjea+6EZx5NC7x0bY2xsS3qjN7ndJ52kOxnYPzrt2+/t29333u1x+sCypKBfYu9DFlKTPbvP0oXawEYB4bmpi0MsNpvJYLBaDSabrfuC/ILSp4KT5/e02ExmwVfM1urMnNwnwgdSQ5BUi9VyMOrx8NZVtpMea5GiiF7/lpzyruHSTcTkAcmAF3ut3b07bNjyISfkCayZ07qCv3/Vigvm6RvLNw9Nk/WVKXmhlGc4P7osIPwDYeM0ekOlMjUVKRrCcPs7qwPA66oxWnF9OPhUy48lFGnjxhUqeB0x48SLjui7ks3rmfP95Qo4Ellj50uyaVV6xq7w8BFZ87yzVbqdHz7gBy+sAdapi5NjXBTqoEwyS0Z4cpCQx+ipVT5waW8TsBv3MZu0cJ1cHZb9RWPdeBijU33gTdWwZp2bzSqkPGwR3suLJ9ZGsMG1OKslV4YLsEjPxLEV50lFofRR080Lj3zc09{%*i*%}jBjB7nxLAT3PCBVVZY9BZ2LvpSyeudm1cbW8//QwWv8LVZaLCt0AhzbQYYKwyDr+HQ6tl1Am3puNHa5nK5riAsi2MNmvz8J/wZHoFwcghkuhgPbNnzTkG8da5RQiVpBtiXzkD6AwxjDsKR6Hgp6l+wC+KdG60uJh1E8JekeKzNQIiisEKCq3qCY50Wj8YDSdt53+WWC0qY12CBi+CZpEhwkAUeB4Hydx3kQiQ33fBZJSzQ7WBXvhIev5PgdbA/vsLt+voDNj/pYPAlK690/TmeyD4YQwSnT4RVH5QdM/paO8APodD+Yh8Jln9YwXUGtyIEdJGgmoCOGd3chvApFfwLboZigHdzsyBkEgSqn+xeI9LU9vD2XRhTSDXu4USAl3PPGqTfaC3UONontjpy+u5RYlDD9glyvoM5DLkEFJP8cltHiVDHi2p4Op4G3FfcKvjJxyyoDEWhhQYOOgo2Vg3XHTT9QLFUxd66fLVDUFZrI9juaYC8cJ{%*i*%}iTnaDYqaxp57nz7e3NSt862GRLfpWeDBwGOiMQLLZcCrS/dWUe2MzVgKII4B2qvXhfKvV1m0JbCLZfHJKebFwmKH4DxTRBKaYrt+9261Qk7BN8CcN6LNxh0GjwkJuVME8cFlW2PwLbGDgQe7l8QGIhCd/uFVRS1ynwVPSDPwN4vhWi5+YbYA48VF8b1bRIhYvNlPeBPwZTcMnP5KJWQt5iQDPFrmL5lqbLja3XvLRxPyS7agHk8zlOGyxnbKJZBdN/G1vbXW0d8tLtn4JlUAOM7eL0OZh/LTtWKvgO3mft94+7adtEMEyFfDnSOf0s0Blw3XFOVciP/nMhfUZAmg7T46oh5P5VnD55oIBXCchku2qLXnUxudcC9PojeIQI3gVw9eK6SS5e+Tplwuk9l1vOSjRl1/5iaAO4SoBzCdsnIOOd6i3qvcRpHhoVEHZ5Aqw/iH3SVhzY4k/z9CJDH/5dbxM1Cfiy6gGOyWAGM9ej9rG2RvT33N{%*i*%}SOEV8/aqKaCrQY/RfMuszzis3H8iey131KEu8L35LKfO90/TFpzQk4PtII26FbugcuL8b6T9ajxGso71OrM7evHzphEpN2sdGXu52UDzHHukYz0u/qmWwv9MEdtZZTlMtztzVDM034btfKMJQL5MF0Tz+zvaSWUpGljNIeYZWeZiwb2YYgvQ+sLUHavmmb3DZlfdl3SOiA0Jm95sxL8CjX1CNrK/Dvw0qDkXZ+GOXXNaZV+fxLe8WB8Zp3KDvAFbFIGx3vd9UCZu0nVmRnqHvP8v5GxGnShkD4mMWkmk2/I1DXu22q3X3ssr/JiPAj0+fMJuwWPW7e0kWzPsVpZDglw9/eMGbe2Pj4SqkDfWtBLXjFgTcndfmZMP4wOmc8OVafnV1fSwjxvKWNJKziMd8YZe+N8vuqMfveTCfHxT3h06h0kE4IKA3LFj7FR5l21rJiJUmCi/Y8zUcZuo8p0sQW1xCzUG3ZGz0zP3JuQLP/AeZDFAUVyD{%*i*%}h5AAAAAElFTkSuQmCC") no-repeat 0 0;background-size:60px 60px;-webkit-background-size:60px 60px;}
        .op_webapp_loading_animation{-webkit-transform:rotate(0deg);-webkit-transition-duration:0ms;-webkit-animation-name: "op_webapp_orbiting_animation";-webkit-animation-duration:1s;-webkit-animation-iteration-count:infinite;-webkit-animation-timing-function:linear;}
        .op_webapp_refresh_src{color: #00C;}
        
        {%if $tplData['supportRefresh']%}       
        .op_webapp_refresh{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAkCAYAAAAOwvOmAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAwhJREFUeNq0WH9kVXEUv+++XEo8SjSj/lnG8hhlKcsosRmxtH9KWURKLIspGzEe/bOURjYSTTFNaaSniOkppSn9IsaIalzikR6z6HNytq67c+793nv3PXzMvt9zz/vcc8/3/Pjmnn/87gjSBLwH8k46qQIbgT9xiq3b61asuYruLPDVSS83TAhpopFaAAZT2qQXGsrwQiopkrvAuxQ2TwE1W6RIriW0dxN45mSUKFIHgOsJbM0D/QZ6Z4HGNKR2AA+B9QlInQN+xujsBq4Cb4GeJKTqmdDaBISmgIkYHQ8Y5TRDtm8BfSakyDOPmZip/ALOGOhdAIqhteHKpx8{%*i*%}9caQGhAdJvnEQS9LP+3FeOq3sjYJYUSO1RXGnD+wHzgsxUwHGDLxEeW8XMKMQvg1ieYlULysEhbJyN/CFS8el0A+dTJC5qULsBcrCXjNwJEwqr5wG+mTTgf/HOGOTlJhsEqGkepy9H5a+MCk6qhsEL5WEz3ACmAQup8yNPnt4hbfwCVuCpDoFpbJSlCv8SRcyJO0ppYR1BUm1CQoPHLsyoSTXZVJS2p+xTOqpsPYvNeTQ5FGQLwoKdVzPbAll9d/C+jo3or75lj1VU1qcghvR+xQsk/K0+uryKaoKe5stk9LsV91ACyueBIvSJNVYDBK1JVKvBYV2y6TatRPvRhzPg8AmS4QoXo8pCXuZVFnoADzugWxIr1LWJoOk6ASOK/100UIsDQjr44gnP9y6jAj1jLx1X3irLJ/tntIiDUn9FJ3AK4KhBuDJKhArsB3p1I3AS3NaO6z1SDTdvAJaUhKiJu6N8vxn4GJUj05DwCH+K3nsBY9I9Qn{%*i*%}I3OGRqkEZOo5Sbgou5pRbl06OJS+i537EfdEHHhzmuY42smcP80AbVfs6QGg6vLFGeYB+sCNiIPW4IevKcFXUHWq1jcZ2uhPYw55YTSF7O5WEbXTBsWSglPUmheNnkEet2Sy3LsG7qq1MLmmf5fOQsc305bRAj5NWDuJ93BM1O/+vIud44KAB4yWXMHU2lK4X/wowAB2YspLpyrktAAAAAElFTkSuQmCC") no-repeat 15px 9px;}
        {%/if%}
        {%if $tplData['supportCollect']%}       
        .op_webapp_collect{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAmCAYAAACoPemuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZJREFUeNrMV3FklGEY72riGBHjMpblEmVcLpdl05SOlBIxmv212YzNiBJjRH+kPyIdkU4Rie6vlFLKcseUTp/WpuN0xOoYIyIi+j38xuvp++773u++dnv4ufue7773fu/ze97neb5Y8dO3TRHZNNAJXLR5qG/fDlf/5ohIbQHOA5NARxQLRkXsLNAFxIGRjURs2vg+wQi2nFgG6DWuJXJnNgKxyYC+dSWWAAZd/IeBnlYSk8hstYjkuhCTEzjW4P4wsK0VxIZVzXoM5CyI/zdiE+r6KnAD+GP4xsKWjrDETgAp49oB5oEq8NTwJ8OWDhti24E0cAl4qO5dN77{%*i*%}n1L27bFd7bIjF2MSTTNS9zI00T5sc+XafRevATuC34VvkWm62zGeWgFV+1umvoKn/lB+1AV+A7iZyLadIid0Cbnr8vpNIu90sLX6XtQoi5SjwKyQp2d1tF/89YCXkmqJUSSL2GsgCT3zqjvzRV6BGCRaAlx4EhPAAcI4lJcUcTfqQkhM9DjnzMWNQlNC+4AKmZUkgKutmzj5TfpFwCKQK+lSWgaMuEbjGnhiVSaJfUD5JpdNrpNzKhUMJ6oZPZJhjwjZrosYr4IiSPQtSz/3q2BLJLRs+CX2xydObIClzdpNcHQCpUtACWwH6mehmbhRtC6UxPM6pbiGq9INU2bby10iuomqQrawJlw3J6T5EdUK1JJHzOPPA/KNTFsQGGTEzp7QaoXplTTXmtR3bnELTCkGeD9rEdWcoWxBz1PVqlNNFSkWrbkGsqlKhJypicbWYW7SklV0GZjiN6DbjeGyyKWIpNYVqaUY4ocwCV4DPfDP3kr4jSCc{%*i*%}JQiyjrucN/3vgjuqvUkoese8mPTaTjipiesoQMm99/uAY8JESV22JtQUg1quuP3iMOW+YX32G9HFKPOuzWeuItQeYoR4Au4GT7LEHDLm9rGkp0w1evxZYwYdU+XDYbkYb1Kwul7nPmpi2H8AUsF9G4AbP5oFdHqO3r5y2xPKULadebL1MNjFOeZ0oiWUMeQ5SnjAvGWVGeIpkffPMj9gKdyyLvotggs0x4vfVxPGP/RVgAMoCrJJjra9FAAAAAElFTkSuQmCC") no-repeat 15px 9px;}
        {%/if%}
            
        @-webkit-keyframes "op_webapp_orbiting_animation"{
            from{
                -webkit-transform:rotate(0deg);
            }            
            to{
                -webkit-transform:rotate(360deg);
            }
        }
        .op_webapp_body {padding: 10px;}   
        .op_webapp_body iframe {width:100%;}
        .op_webapp_refresh,.op_webapp_collect{float:right;width:48px;height:38px;background-size:19px 19px;-webkit-background-size:19px 19px;}
        .op_webapp_separator{float:right;width:1px;height:34px;margin-top:4px;border-left:1px solid #f3f3f3;}
        .op-webapp-ue-card-result{background:#FFF;color:#333;box-shadow:0 0 3px rgba(0,0,0,0.15);-webkit-box-shadow:0 0 3px rgba(0,0,0,0.15);}
        
        .op_webapp_wrapper{
            padding: 0;
        }
        .op_webapp_item_set{
            height: 95px;
            margin: 0 10px;
            border-top: 1px solid #f0f0f0;

        }
        .op_webapp_item_set:first-child{
            border: none;
        }
        .op_webapp_item{
            clear: both;
            padding-top: 19px;
            height: 75px;
        }
        .op_webapp_appicon{
            float: left;
            height: 57px;
            width: 57px;
            margin: 0 19px;
        }
        .op_webapp_logo{
            border-radius: 8px;
        }
        .op_webapp_go_play{
            position: absolute;
            right: 10px;
            margin-top: 27px;
            width: 120px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            color: #333;
            font-size: 16px;
            border: 1px solid #e1e1e1;
            background-color: #f8f8f8;
            border-radius: 2px;
        }
        .op_webapp_flex{
            display: -webkit-box;
        }
        .op_webapp_flexbox{
            -webkit-box-flex: 1;
        }
        .op_webapp_item_lists{
            max-height: 191px;
            overflow: hidden;
        }
        .op_webapp_more_item{
            height: 40px;
            line-height: 40px;
            text-align: center;
            color: #999;
            width: 100%;
            background-color: #f5f5f5;
        }
        .op_webapp_back{
            background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACEAAAAmCAMAAAB9PwLlAAAA21BMVEWPj4+Pj4+Pj4+Ojo6Pj4+Pj4+Pj4+Pj4+QkJCZmZmZmZmZmZmZmZmZmZmZmZmTk5OTk5OSkpKPj4+ZmZmRkZGZmZmZmZmZmZmQkJCZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmQkJCZmZmZmZmZmZmZmZmZmZmZmZmQkJCQkJCZmZmZmZmZmZmZmZmPj4+ZmZmZmZmZmZmPj4+ZmZmZmZmZmZmQkJCZmZmZmZmZmZmPj4+ZmZmZmZmZmZmPj48AAACXl5eRkZGZmZmh92nNAAAARnRSTlP9/vz9+f39++2bYB2BSXTMzdbxZNyNZmrneIdwV3oYl2wgg4l/XUbsmWJyb36W5us4KyU78zE+H/ZCIzTpLigb7{%*i*%}5AcAf4AKmDzDQAAAORJREFUeNqF1NcOgzAMBVDUVuree++96C7dgAr+/y8qqpHygG5yn3g4inBsR/uqEhBpt2tLxcQhitsSYbjkxcTi/AfkQnFg4LSQ0H0wRn9698EcVXtiQBV0H88wn9BDN7YL8QlNdKevCIMMuvX9lUEb9eV2ZDBCnbt8GAxQb60pgyHq/vtBsmS1zobk0fKkEiWlsLYqwbXi5Lxq3zX+NvGsW369ZbwNyRiTBt6XfoFJCgnRuxUSov91JMQMLZAQc7hEQsxyFQmxD0UkxE4l8GbrYLMDu21iwe/DzAaCY0TX4JWC+QEuPUv4e+5vlQAAAABJRU5ErkJggg==") no-repeat center;
            background-size: 50% 50%;
            width: 33px;
            height: 38px;
        }
        .op_webapp_more_icon{
            background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAASCAMAAAB/2U7WAAAAt1BMVEW+vr6+vr6/v7++vr7MzMzHx8fMzMzMzMzMzMzFxcXMzMzExMTMzMzAwMDMzMzMzMzMzMzMzMzMzMzBwcHMzMzIyMjMzMzMzMy/v7/MzMzIyMjMzMzMzMzMzMzMzMzMzMzMzMzMzMzAwMC/v7/MzMy/v7/FxcXMzMzMzMzMzMzMzMzJycnMzMzMzMzMzMzMzMzMzMzMzMzMzMzAwMC+vr6+vr7MzMzMzMwAAADBwcHLy8vCwsLMzMy0ybVWAAAAOXRSTlP+/v7+Zbk/h57GLsh37EugiG8L4WazmAfzGLB1Xz4Gly1u6/Ic9sEKRSCPqjNYJH85YCnn/P4BAwBME8lFAAAAuUlEQVR42n3Nxw7CMBAEUA703nsnHVIgEUyS/f/vIqOAgkFiD{%*i*%}vbuPFku4U8yXMfd396Kr0Q3kdT6tmoqiZthLCLpRrUgZZnhNeEQfNqFD5Iy/xxT40thTZocQMRAqPu33SLuK+SINrfolpunc/PxRvjcdY+jPedcQ4HosznZgNbh5OAT4bA7aouQ9+6u4n3KNhzxrNMKpPbklfMDCjKPc25LmorUCa2yxQ8yZkPEmEHBIsOWYULBP3kCApRplMoSFpoAAAAASUVORK5CYII=") no-repeat center;
            background-size: 50% 50%;
            width: 28px;
            height: 18px;
            display: inline-block;
            vertical-align: middle;
            margin-top: -4px;
        }
        .op_webapp_usetime{
            font-size:14px;color:#666;line-height: 30px;width: 190px;overflow: hidden;
        }
        .op_webapp_appname{
            font-size:18px;color:#333;line-height: 30px;width: 190px;overflow: hidden;
        }
        .op_webapp_light{
            background-color: #e3eefa;
        }
    </style> <div class="op-webapp-ue-card-result op_webapp_wrapper"> {%if $tplData.ResNum>1%} <div class="op_webapp_head"> <div class="op_webapp_query">{%$tplData.Query|escape:'html'%}相关应用</div> </div> <div class="op_webapp_item_lists"> <div class="op_webapp_item_wrapper"> {%$count=count($tplData.result)-1%} {%for $index=0 to floor($count/2)%} <div class="op_webapp_item_set op_webapp_flex"> {%if $tplData.result[2*$index]%} <div class="op_webapp_item op_webapp_flexbox op_webapp_event_play OP_LOG_BTN" data-appid="{%$tplData.result[2*$index].appId|escape:none%}"> <div class="op_webapp_appicon"><img src="{%$tplData.result[2*$index].appLogo%}" class="op_webapp_logo" alt="logo" width="57px;" height="57px"/></div> <div style="float:left;"> <p class="op_webapp_appname">{%$tplData.result[2*$index].appName|escape:'html'|limitlen:20%}</p> <p class="op_webapp_usetime"><span style="color:#fbbc00;">{%$tplData.result[2*$index].useTimes|escape:none%}</span>次使用</p> </div> </div> {%/if%} {%if $tplData.result[2*$index+1]%} <div class="op_webapp_item op_webapp_flexbox op_webapp_event_play OP_LOG_BTN" data-appid="{%$tplData.result[2*$index+1].appId|escape:none%}"> <div class="op_webapp_appicon"><img src="{%$tplData.result[2*$index+1].appLogo%}" class="op_webapp_logo" alt="logo" width="57px;" height="57px"/></div> <div style="float:left;"> <p class="op_webapp_appname">{%$tplData.result[2*$index+1].appName|escape:'html'|limitlen:20%}</p> <p class="op_webapp_usetime"><span style="color:#fbbc00;">{%$tplData.result[2*$index+1].useTimes|escape:none%}</span>次使用</p> </div> </div> {%/if%} </div> {%/for%} </div> </div> {%if $count >= 4%} <div class="op_webapp_more_item OP_LOG_BTN">更多<span class="op_webapp_more_icon"></span></div> {%/if%} {%/if%} </div> <script type="text/javascript" >
        A.setup({
            appdata:[
                
                {%foreach $tplData.result as $op_loop_count=>$result%}
                    {
                        'appId': '{%$result.appId|escape:"javascript"%}',
                        'appName': '{%$result.appName|escape:"javascript"|limitlen:40%}',
                        'appAddress':'{%$result.appAddress|escape:"javascript"%}',
                        'height':{%$result.height|escape:"javascript"%},
                        'supportRefresh':{%$result.supportRefresh|escape:"javascript"%},
                        'supportCollect':{%$result.supportCollect|escape:"javascript"%}
                    },
                {%/foreach%}
                {}
            ],
            resNum:{%count($tplData.result)%},
            rankExpand:{%$tplData.result[0].rankExpand%}
        });
    </script> <script type = "text/javascript" >A.init(function() {var A = window.A,$ = window.$,me = this,srcid = me.srcid,container = me.getContainer(),appP1 = container.id,appStime,appUrl,targetOrigin,hasMon = false,iframeHeight,logAppId,q = $,$webappWrapper = $('.op_webapp_wrapper');me.data.appdata.pop();var getUrlDomain = function(url) {var urlMatchs = url.match(/^\w+\:\/\/[^\/]+/i);return urlMatchs && urlMatchs[0];};var messageManager = {invokes: {},listen: function() {window.addEventListe{%*i*%}ner('message', function(e) {var origin = getUrlDomain(e.origin);if (origin === targetOrigin || targetOrigin === '*') {var data = e.data,invoke = messageManager.invokes[data.api];invoke && invoke.fn.call(invoke.scope, data.params, e);}}, false);},send: function(data) {var iframe = $('.op_webapp_sandbox').get(0),iwindow = iframe && iframe.contentWindow;iwindow && iwindow.postMessage(data, targetOrigin);},reg: function(name, fn, scope) {messageManager.invokes[name] = {fn: fn,scope: scope};}};var we{%*i*%}bapp = {init: function() {messageManager.send({api: 'init'})}};var api = {name: ['refresh', 'fullscreen', 'transferData', 'resize', 'collect', 'getLocation'],fnames: ['start', 'end', 'success', 'error', 'timeout'],constructors: {},instances: {}};$.each(api.name, function(i, v) {var name = v;api.constructors[name] = function() {};api.instances[name] = new api.constructors[name]();webapp[name] = function(option) {var opt = option || {};api.instances[name].opt = opt;$.each(api.fnames, function(j, w{%*i*%}) {var fname = w,iname = [name, fname].join('.');opt[fname] && messageManager.reg(iname, opt[fname], api.instances[name]);api.constructors[name].prototype[fname] = function(data) {messageManager.send({api: iname,params: data});opt[fname] && opt[fname].call(api.instances[name], data);return api.instances[name];}});return api.instances[name];};});var refresh = webapp.refresh({start: function(data) {clearTimeout(this.timer);q('.op_webapp_refresh').addClass('op_webapp_loading_animation');var _this ={%*i*%} this;this.timer = setTimeout(function() {_this.timeout(data);}, 15000);},end: function(data) {clearTimeout(this.timer);q('.op_webapp_refresh').removeClass('op_webapp_loading_animation');},timeout: function(data) {clearTimeout(this.timer);this.end(data);}});var sendLog = function(logData) {if (!logData) {return;}logData.fm = "alapp";logData.pj = 'appipad';logData.p1 = appP1;logData.appid = logAppId; logData.url = appUrl;window.ns_c(logData);};messageManager.reg('log', function(data) {if (data.al{%*i*%}a_app_mon) {if (hasMon) {return;}hasMon = true;var t = data.ala_app_mon.split('_');data.ala_app_mon = [appStime || t[0], t[1], t[2]].join('_');}sendLog(data);}, this);messageManager.listen();var resize = webapp.resize({start: function(data) {iframeHeight = data;if (data && ($(".op_webapp_sandbox_wrapper").css("height") != data + "px")) {$(".op_webapp_sandbox_wrapper").css("height", data);$('.op_webapp_sandbox').css("height", data);}}});var transferData = webapp.transferData({start: function(data{%*i*%}) {this.success();}});var collect = webapp.collect({start: function(data) {clearTimeout(this.timer);var _this = this;this.timer = setTimeout(function() {_this.timeout(data);}, 15000);},end: function(data) {clearTimeout(this.timer);},timeout: function(data) {clearTimeout(this.timer);this.end(data);}});var getLocation = webapp.getLocation({start: function(data) {var _this = this;A.use('gpsApi', function() {A.ui.gpsApi({onSuccess: function(location) {_this.success(location.baidu.addr);},onError: fu{%*i*%}nction(err) {_this.error(err);}});});}});var newIframe = function(container, data) {appUrl = data.appAddress;targetOrigin = getUrlDomain(appUrl) || '*';logAppId = data.appId;hasMon = false;iframeHeight = parseInt(data.height);var sandboxWrapper = $('<div class="op_webapp_sandbox_wrapper" style="height:250px;"></div>');var frameLoading = $(".op_webapp_loading_wrapper");if (!frameLoading[0]) {frameLoading = $('<div class="op_webapp_loading_wrapper" style="height:250px;max-height:1000px;"><div clas{%*i*%}s="op_webapp_loading_inner"><div class="op_webapp_loading op_webapp_loading_animation"></div><div class="op_webapp_loading_text">' + data.appName + '正在努力为您加载，请耐心等候</div></div></div></div>');sandboxWrapper.append(frameLoading);}var frame = $('<iframe class="op_webapp_sandbox" frameborder="0" style="position:relative;left:-10000px;height:' + data.height + 'px;max-height:1000px;" src="' + data.appAddress + '"></iframe>');appStime = +new Date();frame.bind('load', function() {clearTimeout(loadingTime{%*i*%}out);if (loaded) {return;}webapp.init();frame.css({"position": "static","left": 0});sandboxWrapper.css("height", iframeHeight);frameLoading.hide();loaded = 1;});sandboxWrapper.append(frame);container.append(sandboxWrapper);var loaded = 0,lostTime = 120000,loadTimeOut = function() {if (loaded == 1) {return;};loaded = 2;$(".op_webapp_loading_text").html(data.appName + '加载出错，请点击<span class="op_webapp_refresh_src">刷新</span>再试一遍 :)');$('.op_webapp_loading').removeClass('op_webapp_loading_animation');{%*i*%}$('.op_webapp_refresh_src').bind('click', function() {$(".op_webapp_loading_text").html(data.appName + '正在努力为您加载，请耐心等候');frame.attr("src", data.appAddress);$('.op_webapp_loading').addClass('op_webapp_loading_animation');loadingTimeout = setTimeout(loadTimeOut, lostTime);loaded = 0;});};var loadingTimeout = setTimeout(loadTimeOut, lostTime);};var getAppData = function(appId) {var data = me.data.appdata;if (!appId) {return data[0];}for (var d = 0, len = data.length; d < len; d++) {if (data[d].appI{%*i*%}d == appId) {return data[d];}}return data[0];};var backToList = function() {$webappWrapper.children().show();$(".op_webapp_framework").remove();};var bindDefault = function() {$('.op_webapp_collect').on('click', function() {collect.start();});$('.op_webapp_refresh').on('click', function() {refresh.start();});};var bindDetail = function() {$('.op_webapp_back').on('touchstart', function() {$(this).addClass('op_webapp_light'); }).on('touchmove',function(e){$(this).removeClass('op_webapp_light');}).{%*i*%}on('touchend',function(e){$(this).removeClass('op_webapp_light');backToList();});bindDefault();};var renderFrame = function(appId, isdetail) {var data = getAppData(appId);var html = [];var iconCount = 0;$webappWrapper.children().hide();html.push('<div class="op_webapp_framework"><div class="op_webapp_head">');if (data.supportRefresh == "1") {html.push('<div class="op_webapp_refresh OP_LOG_BTN"></div>' +'<div class="op_webapp_separator"></div>');iconCount += 1;}if (data.supportCollect == "1") {ht{%*i*%}ml.push('<div class="op_webapp_collect OP_LOG_BTN" data-click="{fm:alapp}"></div>' +'<div class="op_webapp_separator"></div>');iconCount += 1;}if (isdetail) {html.push('<div class="op_webapp_back OP_LOG_BTN" style="float:left;"></div>');}html.push('<div class="op_webapp_title" style="padding-left:' + iconCount * 50 + 'px">' + data.appName + '</div>');html.push("</div>");html.push('<div class="op_webapp_body"></div>');html.push("</div>");$(html.join('')).appendTo($webappWrapper);newIframe($('.op_{%*i*%}webapp_body'), data);if (isdetail) {bindDetail();} else {bindDefault();}};var readerDiv = function() {var html = ['<div class="op_webapp_head">','<div class="op_webapp_query">{%$tplData.Query|escape:"html"%}相关应用</div>','</div>','<div class="op_webapp_item_set" style="border:none;position: relative;">','<div style="float:left;width:100%;" class="op_webapp_item op_webapp_event_play OP_LOG_BTN" data-appid="{%$tplData.result[0].appId|escape:none%}">','<div class="op_webapp_appicon">','<img src="{%$tplData.result[0].appLogo%}" class="op_webapp_logo" alt="logo" width="57px" height="57px"/>','</div>','<div style="float:left;">','<p class="op_webapp_appname">{%$tplData.result[0].appName|escape:"html"|limitlen:20%}</p>','<p class="op_webapp_usetime"><span style="color:#fbbc00;margin-right:5px;">{%$tplData.result[0].useTimes|escape:none%}</span>次使用</p>','</div>','</div>','<div class="op_webapp_go_play op_webapp_event_play OP_LOG_BTN" data-appid="{%$tplData.result[0].appId|escape:none%}">点击展开</div>','</div>'];$(html.join('')).appendTo($webappWrapper);};if ((me.data.resNum == 1) && (me.data.rankExpand >= appP1)) { renderFrame(me.data.appdata[0]);} else {var moreItem = $('.op_webapp_more_item'),scrolltop = $webappWrapper.offset().top;if (me.data.resNum == 1) { readerDiv();}$('.op_webapp_event_play').on('touchstart',function(e){$(this).addClass('op_webapp_light');}).on('touchmove',function(e){$(this).removeClass('op_webapp_light');}).on('touchend',function(e){$(this).removeClass({%*i*%}'op_webapp_light');renderFrame($(this).attr('data-appid'), true);if (appP1 > 1) {document.body.scrollTop = scrolltop - 22;}});if (moreItem) {var itemHeight = $('.op_webapp_item_wrapper').height(),listWrapper = $('.op_webapp_item_lists'),remainNum = 0,curHeight,addItem;remainNum = me.data.resNum - 4;var openItem = function(){curHeight = listWrapper.height();addItem = (remainNum > 10) ? 10 : remainNum;remainNum = (remainNum - 10) > 0 ? (remainNum - 10) : 0;addItem = Math.ceil(addItem / 2);listWrap{%*i*%}per.css('max-height', addItem * 96 + curHeight);if (remainNum <= 0) {moreItem.remove();}};moreItem.on('touchstart',function(e){$(this).addClass('op_webapp_light');}).on('touchmove',function(e){$(this).removeClass('op_webapp_light');}).on('touchend',function(e){$(this).removeClass('op_webapp_light');openItem();});}$(document.body).on("touchstart",function(e){var target = $('.op_webapp_light');if (target) {setTimeout(function(){target.removeClass('op_webapp_light');},600);}});}}); </script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}