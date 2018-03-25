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
            <td align="right">结束日期:</td>
            <td>
                <input type="text" placeholder="结束日期" class="layui-input">
            </td>
            <td align="right">启用日期:</td>
            <td>
                <input type="text" placeholder="启用日期" class="layui-input">
            </td>
            <td align="right">保养公里数:</td>
            <td>
                <input type="text" placeholder="请输入保养公里数" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">计划天数:</td>
            <td>
                <input type="text" placeholder="请输入计划天数" class="layui-input">
            </td>
            <td align="right">计划公里数:</td>
            <td>
                <input type="text" placeholder="计划公里数" class="layui-input">
            </td>
            <td align="right">最小公里数:</td>
            <td>
                <input type="text" placeholder="请输入最小公里数" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">保养间隔天数:</td>
            <td>
                <input type="text" placeholder="请输入保养间隔天数" class="layui-input">
            </td>
            <td align="right">计划名称:</td>
            <td>
                <input type="text" placeholder="计划名称" class="layui-input">
            </td>
            <td align="right">保养类别:</td>
            <td>
                <select name="">
                    <option value="1">一级保养</option>
                    <option value="2">二级保养</option>
                    <option value="3">三级保养</option>
                    <option value="4">高级保养</option>
                </select>
            </td>
        </tr>
        <tr>

            <td align="right">保养规则:</td>
            <td>
                <select name="">
                    <option value="1">按照天数</option>
                    <option value="2">按照公里</option>
                    <option value="3">按天数/公里</option>
                </select>
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
                                <button class="layui-btn"><i class="layui-icon">&#xe643;</i>导入保养明细
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>车牌号</td>
                        <td>车辆编号</td>
                        <td>线路</td>
                        <td>分组</td>
                        <td>上次保养日期</td>
                        <td>保养公里</td>
                        <td>保养公里日期</td>
                    </tr>
                    </thead>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5255</td>
                        <td>DW0001</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>5000</td>
                        <td>2018-12-05</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5273</td>
                        <td>DW0002</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>4000</td>
                        <td>2018-12-05</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5255</td>
                        <td>DW0001</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>5000</td>
                        <td>2018-12-05</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5273</td>
                        <td>DW0002</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>4000</td>
                        <td>2018-12-05</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5255</td>
                        <td>DW0001</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>5000</td>
                        <td>2018-12-05</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5273</td>
                        <td>DW0002</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>4000</td>
                        <td>2018-12-05</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5255</td>
                        <td>DW0001</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>5000</td>
                        <td>2018-12-05</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>陕Ak5273</td>
                        <td>DW0002</td>
                        <td>213</td>
                        <td>第一组</td>
                        <td>2017-12-05</td>
                        <td>4000</td>
                        <td>2018-12-05</td>
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
<%--新增弹框结束--%>
<%--查询框开始--%>
<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>
                    <td align="right">计划名称:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入计划名称"></td>
                    <td align="right">保养类别:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">一级保养</option>
                            <option value="2">二级保养</option>
                            <option value="3">三级保养</option>
                            <option value="4">高级保养</option>
                        </select>
                    </td>
                    <td align="right">启用日期区间:</td>
                    <td align="left"><input class="layui-input" placeholder="请选择启用日期区间"></td>
                    <td align="right">保养规则:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">按照天数</option>
                            <option value="2">按照公里</option>
                            <option value="3">按天数/公里</option>
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
<%--查询框结束--%>
<%--菜单栏开始--%>
<div class="layui-btn-group">
    <button class="layui-btn"><i class="layui-icon">&#xe659;</i>导入保养明细</button>
    <button class="layui-btn"><i class="layui-icon">&#xe658;</i>下载导入模板</button>
    <button class="layui-btn" onclick="fun.add()"><i class="layui-icon">&#xe654;</i>新增</button>
    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe642;</i>修改</button>
    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe643;</i>查看</button>
    <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe641;</i>删除</button>
</div>
<%--菜单栏结束--%>
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
                field: '', title: '计划名称', sort: true, templet: function (d) {
                    return "空调车保养计划模板";
                }
            }
            , {
                field: 'cph', title: '保养类别', sort: true, templet: function (d) {
                    return "一级保养";
                }
            }
            , {
                field: 'cph', title: '启用日期', sort: true, templet: function (d) {
                    return "2017-02-12";
                }
            }, {
                field: 'cph', title: '结束日期', sort: true, templet: function (d) {
                    return "2018-02-12";
                }
            }
            , {
                field: 'cph', title: '保养规则', sort: true, templet: function (d) {
                    return "按天数";
                }
            }, {
                field: 'cph', title: '保养间隔天数|公里', sort: true, templet: function (d) {
                    return "10";
                }
            }, {
                field: 'cph', title: '生成计划提前天数|公里', sort: true, templet: function (d) {
                    return "20";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.open("新增类别", "add_win", ['1200px', '90%'])
        }
    }

</script>
<script type="text/html" id="menu">

</script>