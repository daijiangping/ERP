<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ include file="../include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="${contextPath}/resources/css/error.css" rel="stylesheet" type="text/css" />

	<script>
        function xx() {
            top.location.href="${contextPath }/index";
            $(".jqadmin-tab-box .layui-tab-title .layui-this .layui-tab-close", window.parent.parent.document).trigger("click");
        }
        $(function () {
            setTimeout("xx()",3000)
        })
	</script>

<title>聚良机电</title>
</head>
<body>
<div>沒有授权，请检查权限后重新访问</div>
<div style=" width:300px; height:30px;margin:0 auto; font-size:18px; margin-top:30px;">3秒钟后返回或者<a href="javascript:;" style="color:#f00;" onclick="xx()">直接点击</a></div>
<div class="footerlogin">版权所有：聚良机电&nbsp;&nbsp;&nbsp;&nbsp;技术支持电话：029-88888888</div>
</body>
</html>
