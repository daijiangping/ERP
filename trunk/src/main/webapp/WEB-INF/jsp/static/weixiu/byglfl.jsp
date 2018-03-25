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
        <th>保养类型</th>
        <th>里程下限</th>
        <th>里程上限</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>一级保养</td>
        <td>5500km</td>
        <td>6800km</td>
        <td>
            <button class="layui-btn layui-btn-sm">设置</button>
        </td>
    </tr>
    <tr>
        <td>二级保养</td>
        <td>22000km</td>
        <td>27000km</td>
        <td>
            <button class="layui-btn layui-btn-sm">设置</button>
        </td>
    </tr>
    <tr>
        <td>三级保养</td>
        <td>66000km</td>
        <td>67000km</td>
        <td>
            <button class="layui-btn layui-btn-sm">设置</button>
        </td>
    </tr>



    </tbody>
</table>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>