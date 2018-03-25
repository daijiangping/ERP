<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>

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
    <button class="layui-btn" onclick="location.href='${pageContext.request.contextPath}/page/jtsgdj'">
        <i class="layui-icon">&#xe608;</i> 事故登记
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe601;</i> 导出记录
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe605;</i> 批量删除
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

        }
    }
</script>