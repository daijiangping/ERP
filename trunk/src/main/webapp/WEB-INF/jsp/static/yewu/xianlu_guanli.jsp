<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--新增线路弹出框--%>
<div id="add_win" class="layui-form" style="display: none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right" class="t_t">线路编号:</td>
            <td>
                <input type="text" value="0001211" class="layui-input">
            </td>
            <td align="right" class="t_t">线路名称:</td>
            <td>
                <input type="text" value="K706无人空调车" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">线路代号:</td>
            <td>
                <input type="text" value="K706" class="layui-input">
            </td>
            <td align="right" class="t_t">起点站:</td>
            <td>
                <input type="text" value="陕西福利厂" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">终点站:</td>
            <td>
                <input type="text" value="杜城村" class="layui-input">
            </td>
            <td align="right" class="t_t">单程公里数(KM):</td>
            <td>
                <input type="text" value="11" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">单程油耗:</td>
            <td>
                <input type="text" value="20" class="layui-input">
            </td>
            <td align="right" class="t_t">基本营收:</td>
            <td>
                <input type="text" value="5000" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">发车间距:</td>
            <td>
                <input type="text" value="50" class="layui-input">
            </td>
            <td align="right" class="t_t">配车台数:</td>
            <td>
                <input type="text" value="4" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">线路开通时间:</td>
            <td>
                <input type="text" value="2017-01-21" class="layui-input">
            </td>
            <td colspan="2"></td>
        </tr>


        <tr>
            <td colspan="10">
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
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>出场次序</th>
                        <th>站点</th>
                        <th>默认转数</th>
                        <th>备注</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>1</th>
                        <th>1</th>
                        <th>吉祥村</th>
                        <th>2</th>
                        <th></th>

                    </tr>
                    <tr>
                        <th>2</th>
                        <th>2</th>
                        <th>鱼化寨</th>
                        <th>3</th>
                        <th></th>

                    </tr>
                    <tr>
                        <th>3</th>
                        <th>3</th>
                        <th>科技路</th>
                        <th>3</th>
                        <th></th>

                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存登记</button>

            </td>
        </tr>
    </table>
</div>

<blockquote class="layui-elem-quote layui-quote-nm">
    <div class="layui-form layui-form-pane">
        <div class="layui-form-item">

            <label class="layui-form-label">线路名称</label>
            <div class="layui-input-inline">
                <select name="">
                    <option value="1">706无烟空调车</option>
                    <option value="2">707无烟空调车</option>
                </select>
            </div>
            <label class="layui-form-label">开通日期</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="起止时间">
            </div>
            <label class="layui-form-label">开通日期</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="结束时间">
            </div>
            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <div class="layui-btn-group">
        <button class="layui-btn" onclick="fun.add()">
            <i class="layui-icon">&#xe608;</i> 新增线路
        </button>
        <button class="layui-btn">
            <i class="layui-icon">&#xe601;</i> 修改
        </button>
        <button class="layui-btn layui-btn-danger">
            <i class="layui-icon">&#xe604;</i> 批量删除
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
                field: 'dabh', title: '线路编号', templet: function (d) {
                    return "000001";
                }
            }
            , {
                field: 'cph', title: '线路名称', templet: function (d) {
                    return "706无人空调车";
                }
            }
            , {
                field: 'jsy', title: '线路代号', templet: function (d) {
                    return "706";
                }
            }
            , {
                field: 'cx', title: '起点站', templet: function (d) {
                    return "陕西老窑厂";
                }
            }
            , {
                field: 'cx', title: '终点站', templet: function (d) {
                    return "火车北站";
                }
            }, {
                field: 'cx', title: '单程公里数', templet: function (d) {
                    return "1000km";
                }
            }, {
                field: 'cx', title: '单程油耗', templet: function (d) {
                    return "5.00L";
                }
            }, {
                field: 'cx', title: '线路开通时间', templet: function (d) {
                    return "2017-01-01";
                }
            }, {
                field: 'cx', title: '排班人', templet: function (d) {
                    return "李国忠";
                }
            }, {
                field: 'cx', title: '配车台数', templet: function (d) {
                    return "4";
                }
            }

        ]]
    });
    var fun = {
        detail: function () {

        }, add: function () {
            common.open("新增线路", "add_win", ['80%', '80%']);
        }
    }
</script>