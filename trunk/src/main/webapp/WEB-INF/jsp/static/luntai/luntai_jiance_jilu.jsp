<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>


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

                    <td align="right">车牌号:</td>
                    <td align="left"><input class="layui-input" placeholder="车牌号"></td>
                    <td align="right">轮胎位置:</td>
                    <td align="left"><input class="layui-input" placeholder="轮胎位置"></td>
                    <td align="right">检测日期范围:</td>
                    <td align="left"><input class="layui-input" placeholder="2017-01-21~2018-04-19"></td>
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
    <button class="layui-btn layui-btn-normal">
        <i class="layui-icon">&#xe603;</i>导出
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
                    return "K201";
                }
            }
            , {
                field: 'cph', title: '轮胎位置', templet: function (d) {
                    return "前左";
                }
            }, {
                field: 'cph', title: '品牌', templet: function (d) {
                    return "米其林";
                }
            }, {
                field: 'cph', title: '检测人', templet: function (d) {
                    return "代江平";
                }
            }, {
                field: 'cph', title: '累计公里数', templet: function (d) {
                    return "500";
                }
            }, {
                field: 'cph', title: '检测公里数', templet: function (d) {
                    return "20";
                }
            }, {
                field: 'cph', title: '上次检测日期', templet: function (d) {
                    return "2017-02-20";
                }
            }, {
                field: 'cph', title: '本次检测日期', templet: function (d) {
                    return "2017-09-20";
                }
            }


        ]]
    });

    //  fun.add();
</script>
<script type="text/html" id="menu">

</script>