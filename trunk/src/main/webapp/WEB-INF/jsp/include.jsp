<%@ page language="java"  pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/js/layui/css/layui.css?v=2.2.2" media="all">
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/font/iconfont.css?v=1.0.0" media="all">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/layui/layui.js?v=2.2.2"></script>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<style>
    td{
        color: black;
    }
    .layui-form-radio{
        font-size: 16px!important;
    }
</style>
<%--<script>
    var layer = layui.layer, $ =jQuery =layui.jquery, laypage = layui.laypage, laydate = layui.laydate;
    var form = layui.form, layedit = layui.layedit;
</script>--%>
<script>
    layui.config({
        base: '${contextPath}/resources/js/'
    }).extend({
        jqajax: 'jqmodules/jqajax',
        jqelem: 'jqmodules/jqelem',
        jqmenu: 'jqmodules/jqmenu',
        tabmenu: 'jqmodules/tabmenu',
        jqbind: 'jqmodules/jqbind',
        jqtags: 'jqmodules/jqtags',
        jqform: 'jqmodules/jqform',
        echarts: 'lib/echarts',
        webuploader: 'lib/webuploader',
        jqcitys: "jqmodules/jqcitys"
    })
</script>




