<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--货位号设置弹出框--%>
<div id="add_set" style="display: none">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th colspan="100"><button class="layui-btn">添加货位</button></th>
        </tr>
        <tr>
            <th>仓库</th>
            <th>货位号</th>
            <th>编码</th>
            <th>用途</th>
            <th>备注</th>
            <th>停用</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>大清盛世西北仓储配送中心</td>
            <td>0001货位号</td>
            <td>02222</td>
            <td>存放化学药品</td>
            <td>否</td>
            <td>否</td>
            <td>
                <button class="layui-btn">删除</button>
                <button class="layui-btn">修改</button>
            </td>
        </tr>


        </tbody>
    </table>

</div>
<table class="layui-table" lay-skin="nob">
    <tr>

        <td align="left">
            <button class="layui-btn" onclick="fun.tzkc()">
                <i class="layui-icon">&#xe608;</i> 新增角色
            </button>
            <button class="layui-btn  layui-btn-normal" onclick="fun.tzdj()">
                <i class="layui-icon">&#xe606;</i> 删除
            </button>
            <button class="layui-btn  layui-btn-primary" onclick="fun.tzjl()">
                <i class="layui-icon">&#xe631;</i> 刷新
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
        <th>角色编号</th>
        <th>角色名称</th>
        <th>描述</th>
        <th>停用</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>0056233456</th>
        <th>厂长</th>
        <th>厂长</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233675</th>
        <th>厂长</th>
        <th>厂长</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233987</th>
        <th>一般管理人员</th>
        <th>一般管理人员</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233778</th>
        <th>副厂长</th>
        <th>副厂长</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233665</th>
        <th>物资人员</th>
        <th>物资人员</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233556</th>
        <th>胎管员</th>
        <th>胎管员</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233222</th>
        <th>资料员</th>
        <th>资料员</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233432</th>
        <th>车间主任</th>
        <th>车间主任</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>
    <tr>
        <th>0056233211</th>
        <th>修理工</th>
        <th>修理工</th>
        <th>否</th>
        <td>
            <button class="layui-btn">删除</button>
            <button class="layui-btn">配置权限</button>
            <button class="layui-btn">停用</button>
            <button class="layui-btn" onclick="fun.hewei()">修改</button>
        </td>
    </tr>


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