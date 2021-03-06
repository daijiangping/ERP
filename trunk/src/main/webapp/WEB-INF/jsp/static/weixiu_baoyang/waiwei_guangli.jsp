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
                    <td align="right">关联报修单号:</td>
                    <td align="left"><input class="layui-input" placeholder="关联报修单号"></td>
                    <td align="right">验收人:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入验收人"></td>
                    <td align="right">维修类型:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">大修</option>
                            <option value="2">零件修理</option>
                        </select>
                    </td>
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
    <button class="layui-btn" onclick="fun.add()"><i class="layui-icon">&#xe655;</i>验收</button>

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
                field: '', title: '车牌号', templet: function (d) {
                    return "陕A8951";
                }
            }
            , {
                field: 'cph', title: '委外单号', templet: function (d) {
                    return "LT0021558629";
                }
            }, {
                field: 'cph', title: '关联报修单号', templet: function (d) {
                    return "DW000184956";
                }
            }, {
                field: 'cph', title: '维修类型', templet: function (d) {
                    return "中修";
                }
            }, {
                field: 'cph', title: '验收日期', templet: function (d) {
                    return "2017-01-20";
                }
            }, {
                field: 'cph', title: '验收人', templet: function (d) {
                    return "张大山";
                }
            }, {
                field: 'cph', title: '外委单位', templet: function (d) {
                    return "三公司";
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
