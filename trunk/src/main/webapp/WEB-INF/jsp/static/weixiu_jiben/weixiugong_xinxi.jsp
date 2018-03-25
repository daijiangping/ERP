<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--新增弹框开始--%>
<div id="add_win" class="layui-form" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right">工号:</td>
            <td>
                <input type="text" value="001251" class="layui-input">
            </td>
            <td align="right">姓名:</td>
            <td>
                <input type="text" value="代江平" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">性别:</td>
            <td>
                <select name="">
                    <option value="1">男</option>
                    <option value="2">女</option>
                    <option value="2">保密</option>
                </select>
            </td>
            <td align="right">所属车间:</td>
            <td>
                <select name="">
                    <option value="1">第1车间</option>
                    <option value="2">第2车间</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">所属班组:</td>
            <td>
                <select name="">
                    <option value="1">机修组</option>
                    <option value="2">组装组</option>
                    <option value="33">拆分组</option>
                </select>
            </td>
            <td align="right">状态:</td>
            <td>
                <select name="">
                    <option value="1">在职</option>
                    <option value="2">离职</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">联系电话:</td>
            <td>
                <input type="text" placeholder="联系电话" class="layui-input">
            </td>
           <td colspan="2"></td>
        </tr>

        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
            </td>
        </tr>
    </table>
</div>
<%--新增弹框结束--%>
<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob" style="width: 800px">
                <tr>
                    <td align="right">名称:</td>
                    <td align="left"><input class="layui-input" placeholder="名称"></td>
                    <td align="right">编码:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入编码"></td>
                    <td>
                        <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询
                        </button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</fieldset>

<div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.add()"><i class="layui-icon">&#xe654;</i>新增</button>
    <button class="layui-btn "><i class="layui-icon">&#xe642;</i>修改</button>
    <button class="layui-btn "><i class="layui-icon">&#xe643;</i>导入</button>
    <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe641;</i>删除</button>
</div>
<table id="demo"></table>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    //第一个实例

    table.render({
        elem: '#demo'
        , height: 315
        , url: '${pageContext.request.contextPath}/data/cheliangList1' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}

            , {
                field: '', title: '员工号', sort: true, templet: function (d) {
                    return "LT0021558627";
                }
            }
            , {
                field: 'cph', title: '员工姓名', sort: true, templet: function (d) {
                    return "代江平";
                }
            }, {
                field: 'cph', title: '性别', sort: true, templet: function (d) {
                    return "男";
                }
            }, {
                field: 'cph', title: '所属车间', sort: true, templet: function (d) {
                    return "第一车间";
                }
            }, {
                field: 'cph', title: '维修班组', sort: true, templet: function (d) {
                    return "机修组";
                }
            }, {
                field: 'cph', title: '联系电话', sort: true, templet: function (d) {
                    return "38552515114";
                }
            }, {
                field: 'cph', title: '状态', sort: true, templet: function (d) {
                    return "在职";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.open("新增维修工信息", "add_win", ['1200px', '600px'])
        }
    }

</script>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-sm" onclick="fun.add()">提成方式</button>
</script>