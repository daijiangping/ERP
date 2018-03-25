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
                    <td align="right">实际检测日期:</td>
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
    <button class="layui-btn layui-btn-danger">
        <i class="layui-icon">&#xe605;</i>批量报废
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
                field: '', title: '车辆编号', width: 200, templet: function (d) {
                    return "LT0021558627";
                }
            }

            , {
                field: 'cph', title: '车牌号', width: 100, templet: function (d) {
                    return "陕K552SS";
                }
            }, {
                field: 'cph', title: '所属公司', width: 100, templet: function (d) {
                    return "公交一公司";
                }
            }, {
                field: 'cph', title: '线路', width: 200, templet: function (d) {
                    return "K201";
                }
            }
            , {
                field: 'cph', title: '气瓶类型', width: 200, templet: function (d) {
                    return "钢瓶";
                }
            }, {
                field: 'cph', title: '气瓶状态', width: 200, templet: function (d) {
                    return "<span style='color: red'>报废|装配</span>     ";
                }
            }
            , {
                field: 'cph', title: '填充介质', width: 200, templet: function (d) {
                    return "天然气";
                }
            }
            , {
                field: 'cph', title: '制造编号', width: 200, templet: function (d) {
                    return "4512313211";
                }
            }, {
                field: 'cph', title: '制造日期', width: 200, templet: function (d) {
                    return "2017-02-12";
                }
            }, {
                field: 'cph', title: '使用登记证编号', width: 200, templet: function (d) {
                    return "2018-01-02";
                }
            }, {
                field: 'cph', title: '气瓶安装单位', width: 200, templet: function (d) {
                    return "XX气瓶厂";
                }
            }
            , {
                field: 'cph', title: '分组', width: 200, templet: function (d) {
                    return "运营组";
                }
            }
            , {
                field: 'cph', title: '计划报废日期', width: 200, templet: function (d) {
                    return "2017-02-12";
                }
            }
            , {
                field: 'cph', title: '气瓶注册代码', width: 200, templet: function (d) {
                    return "0101001";
                }
            }
            , {
                field: 'cph', title: '安装日期', width: 200, templet: function (d) {
                    return "2017-02-12";
                }
            }


        ]]
    });

    //  fun.add();
</script>
<script type="text/html" id="menu">

</script>