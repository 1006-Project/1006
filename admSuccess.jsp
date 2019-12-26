<%--
  Created by IntelliJ IDEA.
  User: 白开水
  Date: 2019/12/26
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Navigation Package</title>
    <link rel="stylesheet" href="css/nheader.css">
    <link rel="stylesheet" href="css/nstyle.css">

</head>
<body>
<div class="header">
    <ul class="nav_list">
        <li class="nav_li">
            <a href="javascript:;" class="btn_nav" id="nav_more"><i class="ic_more png"></i>更多</a>
            <div class="more_nav" id="more_nav">
                <!--[if lt IE 9]>
                <span class="opc_bg"></span>
                <![endif]-->
                <i class="ic_bdot png" id="h_bdot"></i>
                <ul id="h_nav">
                    <li><a href="checkAccount.jsp" class="btn_snav">审核信息</a></li>
                    <li><a href="query.jsp" class="btn_snav">查询信息</a></li>
                    <li><a href="随便" class="btn_snav">系统维护</a></li>
                    <li><a href="welcome.html" class="btn_snav">退出登录</a></li>

                </ul>
            </div>
        </li>
    </ul>
</div>
<div class="wrap" id="wrap">
    <div class="wrapper">
        <div class="product_list" id="product_list">
            <div class="product_box shoulei show">
                <div class="bg_box"><img src="img/bg_shoulei.jpg"></div>
                <div class="content">
                    <div class="main_box">
                        <h2 class="hide_txt  png">
                            <span class="txt_1 png">炽</span>
                            <span class="txt_2 png">热</span>
                            <span class="txt_3 png">友</span>
                            <span class="txt_4 png">情</span>
                            <span class="txt_5 png">之</span>
                            <span class="txt_6 png">心</span>
                            <span class="txt_7 png">没</span>
                            <span class="txt_8 png">有</span>
                            <span class="txt_9 png">联系</span>
                            <span class="txt_10 png">也</span>
                            <span class="txt_11 png">挡</span>
                            <span class="txt_12 png">不</span>
                            <span class="txt_13 png">住</span>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="product_box xnet">
                <div class="bg_box"><img src="img/bg_xnet.jpg"></div>
                <div class="content">
                    <div class="main_box">
                        <h2 class="hide_txt  png">
                            <span class="txt_1 png">友</span>
                            <span class="txt_2 png">情</span>
                            <span class="txt_3 png">不</span>
                            <span class="txt_4 png">止</span>
                            <span class="txt_5 png">一</span>
                            <span class="txt_6 png">次</span>
                            <span class="txt_7 png">的</span>
                            <span class="txt_8 png">挑</span>
                            <span class="txt_9 png">战</span>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="product_box member">
                <div class="bg_box"><img src="img/bg_member.jpg"></div>
                <div class="content">
                    <div class="main_box">
                        <h2 class="hide_txt  png">
                            <span class="txt_1 png">快</span>
                            <span class="txt_2 png">让</span>
                            <span class="txt_3 png">生</span>
                            <span class="txt_4 png">活</span>
                            <span class="txt_5 png">慢</span>
                            <span class="txt_6 png">下</span>
                            <span class="txt_7 png">来</span>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="product_box xkn">
                <div class="bg_box"><img src="img/bg_xkn.jpg"></div>
                <div class="content">
                    <div class="main_box">
                        <h2 class="hide_txt png">
                            <span class="txt_1 png">最</span>
                            <span class="txt_2 png">好</span>
                            <span class="txt_3 png">的</span>
                            <span class="txt_4 png">朋</span>
                            <span class="txt_5 png">友</span>
                            <span class="txt_6 png">就</span>
                            <span class="txt_7 png">在</span>
                            <span class="txt_8 png">身</span>
                            <span class="txt_9 png">边</span>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="product_box xav">
                <div class="bg_box"><img src="img/bg_xav.jpg"></div>
                <div class="content">
                    <div class="main_box">
                        <h2 class="hide_txt png">
                            <span class="txt_1 png">时</span>
                            <span class="txt_2 png">常</span>
                            <span class="txt_3 png">联</span>
                            <span class="txt_4 png">系</span>
                            <span class="txt_5 png">乐</span>
                            <span class="txt_6 png">无</span>
                            <span class="txt_7 png">止</span>
                            <span class="txt_8 png">境</span>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="product_btns" id="product_btns">
            <div class="content">
                <div class="btns_area">
                    <div class="btns_box" id="control_box">
                        <a href="#" class="btn_ipr btn_shoulei cur" title="手机迅雷" ><span class="ic_shoulei hide_txt png">手机迅雷</span></a>
                        <a href="#" class="btn_xnet" title="迅雷7.9"><span class="ic_xnet hide_txt png">迅雷7.9</span></a>
                        <a href="#" class="btn_member" title="迅雷会员"><span class="ic_member hide_txt png">迅雷会员</span></a>
                        <a href="#" class="btn_xkn" title="迅雷快鸟"><span class="ic_xkn hide_txt png">迅雷快鸟</span></a>
                        <a href="#" class="btn_xav" title="迅雷影音"><span class="ic_xav hide_txt png">迅雷影音</span></a>
                        <span class="ic_line" id="ic_line"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="rpt_bg png" id="rpt_bg"></div>
    </div>
</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    (function(){
        var $wrap=$("#wrap"),
            $pages=$("#product_list").find(".product_box"),
            $controlBox=$("#control_box"),
            $productBtns=$("#product_btns"),
            $controls=$controlBox.find("a"),
            $icLine=$("#ic_line"),
            $listTops=$("#list_top").find("li"),
            $hNav=$("#h_nav"),
            $hNavli=$hNav.find("li"),
            $hSubnav=$("#h_subnav"),
            $hSubDD=$hSubnav.find("dd"),
            $hBdot=$("#h_bdot"),
            $hSdot=$("#h_sdot"),
            $footer=$("#footer"),
            $bgs=$pages.find(".bg_box img"),
            $mainBoxs=$pages.find(".main_box"),
            $moreNav=$("#more_nav"),
            $rptBg=$("#rpt_bg");
        var data={
            pLength:$pages.length,
            curP:0,
            isCan:true,
            isOnbtn:false,
            fColor:[2,2,1,1,1],
            dur: 3500,
            cNum:0
        };
        var aDD=$controls.eq(0).width()+parseInt($controls.eq(0).css("margin-right").slice(0,-2))*2;
        var cId;
        var isCss3=function(){
            var style=document.createElement("div").style;
            for(var k in style){
                if(k.toLowerCase().indexOf("animation")>0){
                    return true;
                }
            }
            return false;
        }();
        var isIE6=navigator.userAgent.indexOf("MSIE 6.0") > 0;
        //页面自缩放
        var resize=function(){
            var w=$(window).width(),
                h=$(window).height();
            $wrap.height(h);
            $moreNav.height(h);
            if(w/h<1920/1080){
                $bgs.height(h).css({width:"auto",margin:-.5*h+"px 0 0 "+-.5*1920/1080*h+"px"});
            }else{
                $bgs.width(w).css({height:"auto",margin:-.5*w*1080/1920+"px 0 0 "+-.5*w+"px"});
            }
            var imgH=$bgs.height();
            $mainBoxs.height(imgH).css("margin-top",-.5*imgH+"px");
            var cls;
            if(isCss3){
                document.getElementById("wrap").className="wrap big_view xbig";
                switch(true){
                    case w>=1920:{cls="";break;}
                    case w<1920&&w>=1680:{cls="small9";break;}
                    case w<1680&&w>=1600:{cls="small8";break;}
                    case w<1600&&w>=1536:{cls="small7";break;}
                    case w<1536&&w>=1440:{cls="small6";break;}
                    case w<1440&&w>=1366:{cls="small5";break;}
                    case w<1366&&w>=1280:{cls="small4";break;}
                    case w<1280&&w>=1024:{cls="small3";break;}
                    case w<1024:{cls="small2";break;}
                }
                for(var i=0;i<data.pLength;i++){
                    $pages.eq(i).find(".content").attr("class","content "+cls);
                }
                $productBtns.find(".content").attr("class","content "+cls);
            }else{
                switch(true){
                    case w>=1600:{cls="big_view";break;}
                    case w<1600&&w>=1440:{cls="mid_view";break;}
                    case w<1440:{cls="small_view";break;}
                }
                var ws=$wrap[0].className;
                if(isIE6&&(ws.indexOf("big")!=-1||ws.indexOf("mid")!=-1||ws.indexOf("small")!=-1)&&ws.indexOf(cls)==-1)
                    location.reload();
                wrap.className="wrap "+cls;
            }
            aDD=$controls.eq(0).width()+parseInt($controls.eq(0).css("margin-right").slice(0,-2))*2;
        };
        $(window).resize(resize);
        resize();

        var pageChange=function(idx){
            if(data.isOnbtn)
                return;
            if(idx>=-1&&idx<data.pLength&&idx!=data.curP&&data.isCan){
                data.isCan=false;
                data.cNum++;
                clearInterval(cId);
                idx=idx==-1?data.pLength-1:idx;
                $controls.removeClass("cur").eq(idx).addClass("cur");
                $pages.eq(data.curP).css({zIndex:0});
                $icLine.css({left:aDD*idx});
                // $footer.attr("class","footer f_color"+data.fColor[idx]);
                $pages.eq(idx).addClass("show").css({opacity:0,zIndex:1}).animate({opacity:1},400,function(){
                    $pages.eq(data.curP).removeClass("show");
                    $(this).addClass("show");
                    data.isCan=true;
                    data.curP=idx;
                    data.cNum--;
                    if(data.cNum==0){
                        cId=setInterval(function(){
                            pageChange((data.curP+1)%data.pLength);
                        },data.dur);
                    }
                });
            }
        }
        $controls.on("mouseenter",function(){
            data.isCan=true;
            pageChange($controls.index(this));
            $icLine.css({left:aDD*$controls.index(this)});
            data.isOnbtn=true;
        });
        $controls.on("mouseleave",function(){
            data.isOnbtn=false;
        });

        var isBottom=false;
        var bAni;
        var bottomHide=function(){
            if(isBottom){
                isBottom=false;
                if(bAni)
                    clearTimeout(bAni),bAni=null;
                $footer.removeClass("show");
                $productBtns.removeClass("show");
                $rptBg.removeClass("show");
            }
        }
        var bottomShow=function(){
            if(!isBottom){
                isBottom=true;
                $footer.addClass("show");
                $productBtns.addClass("show");
                $rptBg.addClass("show");
                if(bAni)
                    clearTimeout(bAni);
                bAni=setTimeout(bottomHide,2000);
            }
        }
        $footer.on("mouseenter",function(){
            if(bAni)
                clearTimeout(bAni),bAni=null;
        });
        $footer.on("mouseleave",function(){
            if(bAni)
                clearTimeout(bAni);
            bAni=setTimeout(bottomHide,2000);
        });
        $(document).on("mousewheel DOMMouseScroll",function(event){
            var sd=event.originalEvent.wheelDelta||event.originalEvent.detail*-1;
            if(sd>0){
                bottomHide();
            }
            else{
                bottomShow();
            }
        });
        cId=setInterval(function(){
            pageChange((data.curP+1)%data.pLength);
        },data.dur);

        //导航事件

        $("#nav_more").on("mouseenter",function(){
            $moreNav.addClass("show");
        });
        $moreNav.on("mouseleave",function(){
            $moreNav.removeClass("show");
            $hBdot.css({left:-9999,top:106});
        })
        $hNavli.on("mouseenter",function(){
            $hBdot.css({left:18,top:106+$hNavli.index(this)*69});
        });
        $hNav.on("mouseleave",function(){
            $hBdot.css({left:-9999});
        });
        $hSubnav.find("dt").on("mouseenter",function(){
            $hBdot.css({left:18});
            $hSdot.css({left:-9999});
        });
        $hSubDD.on("mouseenter",function(){
            $hSdot.css({left:18,top:53+$hSubDD.index(this)*44});
            $hBdot.css({left:-9999});
        });
        $hSubnav.on("mouseleave",function(){
            $hSdot.css({left:-9999});
        });
    })();
</script>
<div style="text-align:center;">
</div>

</body>
</html>