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
    <table class="layui-table" lay-size="sm" lay-skin="nob">
        <tr>
            <td align="right">报废日期:</td>
            <td>
                <input type="text" value="2017-01-20" class="layui-input">
            </td>
            <td align="right">购买方:</td>
            <td>
                <input type="text" value="陕西垃圾回收处理厂" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">物品名称:</td>
            <td>
                <input type="text" value="旧轮胎" class="layui-input">
            </td>
            <td align="right">数量:</td>
            <td>
                <input type="text" value="10" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">单价:</td>
            <td>
                <input type="text" value="50.00" class="layui-input">
            </td>
            <td align="right">金额:</td>
            <td>
                <input type="text" value="500.00" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">经手部门:</td>
            <td>
                <select name="">
                    <option value="1">采购部</option>
                    <option value="2">财务部</option>
                </select>
            </td>
            <td align="right">经手人:</td>
            <td>
                <input type="text" value="张三" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">审批领导:</td>
            <td>
                <input type="text" value="王金利" class="layui-input">
            </td>
            <td align="right">收款人:</td>
            <td>
                <input type="text" value="王金利" class="layui-input">
            </td>
        </tr>
        <tr>
        <tr>
            <td align="right">备注:</td>
            <td colspan="3">
                <textarea placeholder="请输入备注" class="layui-textarea"></textarea>
            </td>

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
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>
                    <td align="right">经手部门:</td>
                    <td align="left"><input class="layui-input" placeholder="经手部门"></td>
                    <td align="right">经手人:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入经手人"></td>
                    <td align="right">物品名称:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入物品名称"></td>
                    <td align="right">报废日期区间:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入报废日期区间"></td>
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
                field: '', title: '报废日期', templet: function (d) {
                    return "2017-01-01";
                }
            }
            , {
                field: '', title: '购买方', templet: function (d) {
                    return "垃圾回收公司";
                }
            }
            , {
                field: 'cph', title: '物品名称', templet: function (d) {
                    return "轮胎";
                }
            }, {
                field: 'cph', title: '数量', templet: function (d) {
                    return "1";
                }
            }, {
                field: 'cph', title: '单价', templet: function (d) {
                    return "10.00";
                }
            }, {
                field: 'cph', title: '金额', templet: function (d) {
                    return "10.00";
                }
            }, {
                field: 'cph', title: '经手部门', templet: function (d) {
                    return "采购部";
                }
            }, {
                field: 'cph', title: '经手人', templet: function (d) {
                    return "张三";
                }
            }, {
                field: 'cph', title: '审批领导', templet: function (d) {
                    return "王经理";
                }
            }, {
                field: 'cph', title: '收款人', templet: function (d) {
                    return "李财务";
                }
            }, {
                field: 'cph', title: '备注', templet: function (d) {
                    return "";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.open("新增", "add_win", ['1200px', '600px'])
        }
    }

</script>
