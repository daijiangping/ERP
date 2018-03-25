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
            <td align="right">验收人:</td>
            <td>
                <input type="text" value="陕A22512" class="layui-input">
            </td>

        </tr>
        <tr>
            <td align="right">验收日期:</td>
            <td>
                <input type="text" value="0251321" class="layui-input">
            </td>

        </tr>

        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 确认验收</button>
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
                    <td align="right">开始日期:</td>
                    <td align="left"><input class="layui-input" placeholder="开始日期"></td>
                    <td align="right">结束日期:</td>
                    <td align="left"><input class="layui-input" placeholder="开始日期"></td>

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
    <button class="layui-btn"><i class="layui-icon">&#xe654;</i>导出</button>

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
                field: '', title: '派工单位', templet: function (d) {
                    return "公交一公司";
                }
            }
            , {
                field: 'cph', title: '工号', templet: function (d) {
                    return "89456230";
                }
            }, {
                field: 'cph', title: '维修工姓名', templet: function (d) {
                    return "200";
                }
            }, {
                field: 'cph', title: '维修工时合计', templet: function (d) {
                    return "200";
                }
            }, {
                field: 'cph', title: '维修金额合计', templet: function (d) {
                    return "300";
                }
            }, {
                field: 'cph', title: '按维修工时提成', templet: function (d) {
                    return "1203";
                }
            }, {
                field: 'cph', title: '按维修金额提成', templet: function (d) {
                    return "20.00";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.open("验收", "add_win", ['1200px', '300px'])
        }
    }

</script>
