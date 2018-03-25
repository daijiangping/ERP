<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="layui-table">
    <colgroup>
        <col width="150">
        <col width="200">
        <col>
    </colgroup>
    <thead>
    <tr>
        <th>类别名称</th>
        <th>上级类别</th>
        <th>排序码</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>所有客户</td>
        <td>TOP</td>
        <td>111</td>
        <td>
            <button class="layui-btn layui-btn-sm">添加子类</button>
            <button class="layui-btn layui-btn-sm">删除</button>
            <button class="layui-btn layui-btn-sm">修改</button>
        </td>
    </tr>
    <tr>
        <td>大客户</td>
        <td>所有客户</td>
        <td>255</td>
        <td>
            <button class="layui-btn layui-btn-sm">添加子类</button>
            <button class="layui-btn layui-btn-sm">删除</button>
            <button class="layui-btn layui-btn-sm">修改</button>
        </td>
    </tr>
    <tr>
        <td>重点客户</td>
        <td>所有客户</td>
        <td>255</td>
        <td>
            <button class="layui-btn layui-btn-sm">添加子类</button>
            <button class="layui-btn layui-btn-sm">删除</button>
            <button class="layui-btn layui-btn-sm">修改</button>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>