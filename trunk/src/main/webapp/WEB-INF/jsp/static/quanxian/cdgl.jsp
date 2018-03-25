<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="layui-table" lay-skin="nob">
    <tr>

        <td align="left">
            <button class="layui-btn" onclick="fun.tzkc()">
                <i class="layui-icon">&#xe608;</i> 新增菜单
            </button>
            <button class="layui-btn  layui-btn-normal" onclick="fun.tzdj()">
                <i class="layui-icon">&#xe606;</i> 删除
            </button>
            <button class="layui-btn  layui-btn-primary" onclick="fun.tzjl()">
                <i class="layui-icon">&#xe631;</i> 刷新
            </button>
            <button class="layui-btn  layui-btn-primary" onclick="layer.msg('导出成功!')">
                <i class="layui-icon">&#xe632;</i> 导出EXCEL
            </button>

        </td>
        <td>
            <div class="layui-inline">
                <label class="layui-form-label"> &nbsp;查询: </label>
                <div class="layui-input-inline">
                    <input placeholder="请输入名称/编号" class="layui-input" style="width: 300px">
                </div>
                <input type="button" value="查询">
            </div>
        </td>
    </tr>

</table>
<table class="layui-table">
    <colgroup>
        <col width="150">
        <col width="200">
        <col>
    </colgroup>
    <thead>
    <tr>
        <th>菜单编号</th>
        <th>菜单名称</th>
        <th>URL</th>
        <th>停用</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>


    </tbody>
</table>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    var fun = {
        add: function () {

        }, hewei: function () {

        }
    }
</script>