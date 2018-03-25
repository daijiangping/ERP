<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--新增弹框开始--%>
<div id="add_win" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right">档案编号:</td>
            <td>
                <input type="text" placeholder="请输入档案编号" class="layui-input">
            </td>
            <td align="right">车牌号:</td>
            <td>
                <input type="text" placeholder="请输入车牌号" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">线路:</td>
            <td>
                <input type="text" placeholder="线路" class="layui-input">
            </td>
            <td align="right">分组:</td>
            <td>
                <input type="text" placeholder="分组" class="layui-input">
            </td>
        </tr>

        <tr>
            <td colspan="100">
                <table class="layui-table" lay-size="sm">
                    <thead>
                    <tr>
                        <td colspan="10">
                            <div class="layui-btn-group">
                                <button class="layui-btn"><i class="layui-icon">&#xe654;</i>新增行</button>
                                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe642;</i>删除行
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>品牌</td>
                        <td>轮胎位置</td>
                        <td>上次检测时间</td>
                        <td>当前检测公里数</td>
                        <td>累计公里数</td>
                    </tr>
                    </thead>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>米其林</td>
                        <td>左内</td>
                        <td>2017-02-15</td>
                        <td>50</td>
                        <td>4025</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>米其林</td>
                        <td>左外</td>
                        <td>2017-02-15</td>
                        <td>50</td>
                        <td>4025</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>米其林</td>
                        <td>右外</td>
                        <td>2017-02-15</td>
                        <td>50</td>
                        <td>4025</td>
                    </tr>

                    <tr>

                        <td colspan="10" align="center">
                            <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                            <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                            <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                            <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
                        </td>
                    </tr>
                </table>
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
    <button class="layui-btn">
        <i class="layui-icon">&#xe605;</i> 批量导入
    </button>
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe605;</i> 新增
    </button>
    <button class="layui-btn layui-btn-normal">
        <i class="layui-icon">&#xe631;</i> 修改
    </button>
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe634;</i> 查看
    </button>
    <button class="layui-btn  layui-btn-danger">
        <i class="layui-icon">&#xe609;</i> 删除
    </button>
    <button class="layui-btn layui-btn-normal">
        <i class="layui-icon">&#xe632;</i> 打印
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
            }, {
                field: 'cph', title: '分组', templet: function (d) {
                    return "K201";
                }
            }, {
                field: 'cph', title: '上次检测日期', templet: function (d) {
                    return "2017-02-12";
                }
            }


        ]]
    });

    var fun = {
        add: function () {
            common.open("新增", "add_win", ['1200px', '90%'])
        }
    }
</script>
<script type="text/html" id="menu">

</script>