<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="jiance_win" style="display:none;">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right">检测日期:</td>
            <td>
                <input type="text" placeholder="" class="layui-input">
            </td>
            <td align="right">检测公里数:</td>
            <td>
                <input type="text" placeholder="请输入检测公里数" class="layui-input">
            </td>
        </tr>

        <tr>
            <td colspan="10" align="center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存检测</button>

            </td>
        </tr>
    </table>
</div>

<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>

                    <td align="right">分组:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </td>
                    <td align="right">线路:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">706|706无人空调车</option>
                            <option value="2">708|707无人空调车</option>
                            <option value="3">708|707普通空调车</option>
                        </select>
                    </td>
                    <td align="right">车辆类型:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">类型1</option>
                            <option value="2">类型2</option>
                            <option value="3">类型3</option>
                        </select>
                    </td>
                    <td align="right">车牌号:</td>
                    <td align="left"><input class="layui-input" placeholder="车牌号"></td>
                    <td align="right">车辆编号:</td>
                    <td align="left"><input class="layui-input" placeholder="车辆编号"></td>
                    <td align="right">轮胎位置:</td>
                    <td align="left"><input class="layui-input" placeholder="轮胎位置"></td>
                    <td align="right">检测日期范围:</td>
                    <td align="left"><input class="layui-input" placeholder="检测日期范围"></td>
                    <td>
                        <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询
                        </button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</fieldset>

<%--table--%>
<div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.jiance()">
        <i class="layui-icon">&#xe605;</i> 批量检测
    </button>
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
                field: '', title: '车辆编号', templet: function (d) {
                    return "LT0021558627";
                }
            }

            , {
                field: 'cph', title: '车牌号', templet: function (d) {
                    return "陕K552SS";
                }
            }, {
                field: 'cph', title: '线路', templet: function (d) {
                    return "已检测";
                }
            }, {
                field: 'cph', title: '所属公司', templet: function (d) {
                    return "已检测";
                }
            }, {
                field: 'cph', title: '左前', templet: function (d) {
                    return "已检测";
                }
            }, {
                field: 'cph', title: '右前', templet: function (d) {
                    return "已检测";
                }
            }, {
                field: 'cph', title: '左内后', templet: function (d) {
                    return "已检测";
                }
            }, {
                field: 'cph', title: '左外后', templet: function (d) {
                    return "已检测";
                }
            }, {
                field: 'cph', title: '右内后', templet: function (d) {
                    return "已检测";
                }
            }, {
                field: 'cph', title: '右外后', templet: function (d) {
                    return "已检测";
                }
            }


        ]]
    });

    var fun = {
        add: function () {
            common.open("新增", "add_win", ['1200px', '90%'])
        }, jiance: function () {
            common.open("批量检测", "jiance_win", ['1200px', '90%'])
        }
    }
</script>
<script type="text/html" id="menu">

</script>