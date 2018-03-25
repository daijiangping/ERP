<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--添加规则--%>
<div style="display: none" id="add_win">
    <div class="layui-form layui-form-pane">
        <table class="layui-table " lay-size="sm" lay-skin="nob">

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">车辆类型</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">客A</option>
                                <option value="2">客B</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">前轮使用公里</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入前轮使用公里" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">后轮使用公里</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入后轮使用公里" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">提前提醒公里</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入提前提醒公里" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td colspan="3">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">备注</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td colspan="3" align="center">
                    <hr>
                    <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                    <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                    <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>

                </td>
            </tr>

        </table>
    </div>
</div>

<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>

                    <td align="left">
                        <select name="">
                            <option value="1">大客ZK6127HA</option>
                            <option value="2">小巴士</option>
                        </select>
                    </td>
                    <td align="right">启用日期范围:</td>
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
    <%--table--%>
    <div class="layui-btn-group">
        <button class="layui-btn">
            <i class="layui-icon">&#xe605;</i> 批量导入
        </button>

        <button class="layui-btn" onclick="fun.add()">
            <i class="layui-icon">&#xe605;</i> 新增
        </button>
        <button class="layui-btn layui-btn-normal">
            <i class="layui-icon">&#xe631;</i> 修改
        </button>
        <button class="layui-btn  layui-btn-danger">
            <i class="layui-icon">&#xe609;</i> 删除
        </button>

    </div>
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
            {type: 'checkbox'}

            , {
                field: '', title: '车辆类型', templet: function (d) {
                    return "大客";
                }
            }

            , {
                field: 'cph', title: '前轮使用公里数(KM)', templet: function (d) {
                    return "200";
                }
            }, {
                field: 'cph', title: '后轮使用公里数(KM)', templet: function (d) {
                    return "400";
                }
            }, {
                field: 'cph', title: '提前提醒公里数(KM)', templet: function (d) {
                    return "20";
                }
            }

        ]]
    });
    var fun = {
        add: function () {
            common.open("添加规则", "add_win", ['1000px', '500px'])
        }
    }

</script>
<script type="text/html" id="menu">

</script>