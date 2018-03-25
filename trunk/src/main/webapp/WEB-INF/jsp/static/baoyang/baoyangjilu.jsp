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
                    <td align="right">车辆编号:</td>
                    <td align="left"><input class="layui-input" placeholder="车辆编号"></td>
                    <td align="right">车牌号:</td>
                    <td align="left"><input class="layui-input" placeholder="车牌号"></td>
                    <td align="right">计划保养日期范围:</td>
                    <td align="left"><input class="layui-input" placeholder="计划保养日期"></td>
                    <td align="right">线路:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">706|706无人空调车</option>
                            <option value="2">708|707无人空调车</option>
                            <option value="3">708|707普通空调车</option>
                        </select>
                    </td>
                    <td align="right">分组:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">A组</option>
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
    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe654;</i>导出EXCEL</button>
    <button class="layui-btn"><i class="layui-icon">&#xe644;</i>打印</button>
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
                field: '', title: '车辆编号', sort: true, templet: function (d) {
                    return "LT0021558627";
                }
            }
            , {
                field: 'cph', title: '车牌号', sort: true, templet: function (d) {
                    return "蒙A55251";
                }
            }, {
                field: 'cph', title: '所属组织', sort: true, templet: function (d) {
                    return "公交总公司";
                }
            }
            , {
                field: 'cph', title: '线路', sort: true, templet: function (d) {
                    return "706";
                }
            }


            , {
                field: 'cph', title: '计划保养时间', sort: true, templet: function (d) {
                    return "2017-01-02";
                }
            }
            , {
                field: 'cph', title: '保养类型', sort: true, templet: function (d) {
                    return "一级保养";
                }
            }
            , {
                field: 'cph', title: '是否执行', sort: true, templet: function (d) {
                    return "10次";
                }
            }
            , {
                field: 'cph', title: '经办人', sort: true, templet: function (d) {
                    return "管理";
                }
            }
            , {
                field: 'cph', title: '来源', sort: true, templet: function (d) {
                    return "";
                }
            }
            , {
                field: 'cph', title: '备注', sort: true, templet: function (d) {
                    return "";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.open("车辆变更", "add_win", ['1000px', '600px'])
        }
    }
    //  fun.add();
</script>
<script type="text/html" id="menu">

</script>