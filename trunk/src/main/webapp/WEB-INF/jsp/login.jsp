<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<html>
<head>
    <title>登录</title>
    <meta charset="utf-8">
    <meta name="author" content="forework">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="msapplication-tap-highlight" content="no">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <!-- 页面基本设置禁止随意更改 -->
    <!-- 基础CSS类库可随意更改 -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/login.css" media="all">
</head>
<body>
<div class="layui-canvs"></div>
<div class="layui-layout layui-layout-login">
    <h1>
        <strong>包头公交ERP后台系统</strong>
    </h1>
    <section class="panel panel-padding login-pane">
        <form class="layui-form layui-form-pane" action=""  method="post">
            <div class="layui-form-item">
                <label class="layui-form-label"><i class="iconfont">&#xe672;</i> 帐号</label>
                <div class="layui-input-block">
                    <input type="text" name="username" value="<shiro:principal/>" required lay-verify="required" placeholder="登录帐号" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><i class="iconfont">&#xe609;</i> 密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password" required lay-verify="required" placeholder="登录密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-inline" style="margin-left: -10px;">
                    <input type="checkbox" name="rememberMe" lay-skin="switch" checked>
                    <span class="font-pt" style="display: block;margin-top: -28px;margin-left: 70px;color: #edfaff">记住我的登录</span>
                </div>
            </div>
            <span class="error_xinxi" id="error" style="color: red;font-size: 14px;font-weight: bold">${error}</span>
            <button class="layui-btn" onclick="document.getElementById('login').submit();return false" style="width: 100%;">立即登录</button>
        </form>
    </section>
    <div class="layui-login-text">
        <p>© 2017-2018  版权所有</p>
        <p>北京中航讯 <a   title="">www.xxx.com</a></p>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/common/bottom.jsp"></jsp:include>
<script type="text/javascript" src="${contextPath}/resources/js/login.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jparticle.jquery.js"></script>
<script type="text/javascript">
    $(function(){
        $(".layui-canvs").jParticle({
            background: "#141414",
            color: "#E6E6E6"
        });
    });
</script>
<script>
  $(function () {
      $('#error').show().delay(2000).hide(0);
      if(window !=top){
          alert('session失效，请重新登录')
          top.location.href="${contextPath }/login";
      }
  })
</script>
</body>
</html>