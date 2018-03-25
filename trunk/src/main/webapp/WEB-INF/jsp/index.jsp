<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./include.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>公交ERP</title>
    <meta name="description" content="升级layui为2.45"/>
    <meta name="keywords" content="3e基础平台2.0"/>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <!-- load css -->
    <link rel="stylesheet" id="theme" type="text/css"
          href="${contextPath }/resources/css/black/jqadmin.css?v=2.0.0-simple" media="all">
    <style>
        .user {
            color: #ffffff;
            display: block;
            width: 100%;
            height: 25px;
            text-align: center;
            font-size: 12px;
            white-space: nowrap;
            line-height: 38px;
            overflow: hidden;
        }
    </style>
</head>

<body>
<ul class='right-click-menu'>
    <li><a href='javascript:;' data-event='fresh'>刷新</a></li>
    <li><a href='javascript:;' data-event='close'>关闭</a></li>
    <li><a href='javascript:;' data-event='other'>关闭其它</a></li>
    <li><a href='javascript:;' data-event='all'>全部关闭</a></li>
</ul>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <!-- logo区域 -->
        <%--        <div class="jqadmin-logo-box" >
                   &lt;%&ndash; <a class="logo" href="http://jqadmin.jqcool.net" title="jQAdmin"><img src="images/logo.png" alt=""></a>&ndash;%&gt;
                    <a class="logo" href="http://jqadmin.jqcool.net" title="nuopls"><img height="35" width="130" src="${contextPath}/resources/images/xglog.png"></a>
                    <div class="menu-type" data-type="2"><i class="iconfont">&#xe61a;</i></div>
                </div>--%>
        <%--        <div class="jqadmin-logo-box">
                    <a class="logo" href="http://jqadmin.jqcool.net" title="jQAdmin">
                        <h1>3e基础平台</h1>
                    </a>
                </div>--%>
        <!-- logo区域 -->
        <div class="jqadmin-logo-box">
            <a class="logo" title="nuoplus">
                <h1>公交ERP</h1>
            </a>
        </div>

        <!-- 主菜单区域 -->
        <div class="jqadmin-main-menu">
            <ul class="layui-nav clearfix" id="menu" lay-filter="main-menu">

            </ul>
        </div>

        <!-- 头部右侧导航 -->
        <div class="header-right">

            <%--         <button type="button" class="layui-btn  layui-btn-small my-tips" style="position: absolute; top: 14px; right:220px;"> <i class="iconfont">&#xe60c;</i> 打赏作者</button>
                     <a class="layui-btn  layui-btn-small  layui-btn-danger" style="position: absolute; top: 14px; right:340px;" href="http://www.kancloud.cn/jqcool/jqadmin" target="_blank">使用手册</a>--%>
            <ul class="layui-nav jqadmin-header-item right-menu">
                <li class="layui-nav-item" style="height: 60px;position: absolute;margin-left:-40px">
                    <a class="msg" title="修改密码" onclick="updatePassword(${user.id});" href="javascript:;">
                        <img style="margin-top: 20px;width: 20px;height: 20px;"
                             src="${contextPath}/resources/images/password.png">
                    </a>
                </li>
                <li class="layui-nav-item first">
                    <a href="javascript:;">
                        <cite> 主题 </cite>
                        <span class="layui-nav-more"></span>
                    </a>

                    <dl class="layui-nav-child theme">
                        <dd>
                            <a href="javascript:;" data-href="${contextPath }/resources/css/blue/jqadmin.css">蓝色</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-href="${contextPath }/resources/css/black/jqadmin.css">黑色</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-href="${contextPath }/resources/css/gray/jqadmin.css">灰色</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item first">
                    <a href="javascript:;">
                        <cite>${user.realname}</cite>
                        <span class="layui-nav-more"></span>
                    </a>

                    <dl class="layui-nav-child">
                        <%--                        <dd class="tab-menu">
                                                    <a href="javascript:;" data-url="user-info.html" data-title="个人信息"> <i class="iconfont " data-icon='&#xe672;'>&#xe672; </i><span>个人信息</span></a>
                                                </dd>--%>
                        <dd>
                            <a href="javascript:;" onclick="(
                                    location.href='${contextPath}/logout',
                                    window.sessionStorage.removeItem('curMenu'),
                                    window.sessionStorage.removeItem('menu')
                                    )" ;><i class="iconfont ">&#xe64b; </i>退出
                            </a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item tab-menu"><a class="msg" href="javascript:;" data-url="msg.html"
                                                       data-title="站内信息"><i class="iconfont" data-icon='&#xe63c;'>
                    &#xe63c; </i><span class="msg-num">1</span></a></li>
            </ul>
            <button title="刷新" class="layui-btn layui-btn-normal fresh-btn"><i class="iconfont">&#xe62e; </i></button>
        </div>
    </div>

    <!-- 左侧导航-->
    <div class="layui-side layui-bg-black jqamdin-left-bar">
        <div class="layui-side-scroll">
            <!--子菜单项-->
            <div class="user-photo" style="    width: 200px;
    height: 120px;
    padding-top: 15px;
    padding-bottom: 5px;">
                <a class="img" title="我的头像" style="display: block;
    width: 76px;
    height: 76px;
    margin: 0 auto;
    margin-bottom: -2px;">
                    <img src="${contextPath}/resources/images/user.jpg" class="userimg1" style="display: block;
    border: none;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border: 4px solid #44576b;"></a>
                <p class="user">你好！${user.realname}, 欢迎登录</p>
            </div>
            <%--            <p class="jqadmin-home tab-menu">
                            <a href="javascript:;" data-url="${contextPath}/welcome" data-title="后台首页">
                                <i class="layui-icon" data-icon='&#xe600;'>&#xe630;</i>
                                <span>后台首页</span>
                            </a>
                        </p>--%>
            <div id="submenu"></div>
        </div>
    </div>

    <!-- 左侧侧边导航结束 -->
    <!-- 右侧主体内容 -->
    <div class="layui-body jqadmin-body" style="bottom: 0px;">

        <div class="layui-tab layui-tab-card jqadmin-tab-box" id="jqadmin-tab" lay-filter="tabmenu" lay-notAuto="true">
            <div class="menu-type"><i class="iconfont">&#xe61a;</i></div>
            <ul class="layui-tab-title">
                <li class="layui-this" id="admin-home" lay-id="0" fresh=1><i class="iconfont">&#xe622;</i><em>后台首页</em>
                </li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe class="jqadmin-iframe" data-id='0' src="${contextPath}/welcome"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部区域 -->
    <%--    <div class="layui-footer jqadmin-foot">
            <div class="layui-mian">
                <p class="jqadmin-copyright">
                    <span class="layui">2017 &copy;</span> Write by Paco,<a href="http://www.nuoplus.com">nuoplus</a>. 版权所有 <span class="layui">西安久诺网络有限公司</span>
                </p>
            </div>
        </div>--%>
</div>
<%--<div class="my-tip">
    <img src="images/my-tip.jpg" alt="" />
</div>--%>
<ul class="menu-list" id="menu-list"></ul>
</body>
<%@ include file="./menu.jsp" %>
<%@ include file="user/changePassword.jsp" %>
<script>
    $(function () {
        if (window.history && window.history.pushState) {
            $(window).on('popstate', function () {
                var hashLocation = location.hash;
                var hashSplit = hashLocation.split("#!/");
                var hashName = hashSplit[1];

                if (hashName !== '') {
                    var hash = window.location.hash;
                    if (hash === '') {
                        layer.msg("不可回退");
                    }
                }
            });
            window.history.pushState('forward', null, './#forward');
        }
        /*        if(window !=top){
         top.location.href="
        ${contextPath }/index";
         }*/
    })
    $.ajaxSetup({
        complete: function (XMLHttpRequest, textStatus) {
            if (textStatus == "parsererror") {
                $.messager.alert('提示信息', "登陆超时！请重新登陆！", 'info', function () {
                    window.location.href = 'login';
                });
            } else if (textStatus == "error") {
                $.messager.alert('提示信息', "请求超时！请稍后再试！", 'info');
            }
        }
    })
</script>
<script>
    var global = {};
    layui.use('index');
</script>
</html>