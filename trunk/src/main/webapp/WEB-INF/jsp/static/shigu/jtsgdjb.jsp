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
            <label class="layui-form-label">车牌号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="车牌号">
            </div>
            <label class="layui-form-label">单号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="单号">
            </div>
            <label class="layui-form-label">起止时间</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="起止时间">
            </div>
            <label class="layui-form-label">结束时间</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="结束时间">
            </div>
            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.dj()">
        <i class="layui-icon">&#xe608;</i> 事故登记
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe601;</i> 导出记录
    </button>
    <button class="layui-btn layui-btn-danger">
        <i class="layui-icon">&#xe509;</i> 批量删除
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
        , url: '${pageContext.request.contextPath}/data/cheliangList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox'}
            , {
                field: 'dabh', title: '档案编号', templet: function (d) {
                    return "<a class='a_old' href='${pageContext.request.contextPath}/page/jtsgdj'>" + d.dabh + "</a>";
                }
            }
            , {field: 'cph', title: '车牌号',}
            , {field: 'jsy', title: '驾驶员',}
            , {field: 'cx', title: '车型',}
            , {field: 'xl', title: '线路',}
            , {field: 'bfrq', title: '发生时间',}
            , {field: 'fsdd', title: '发生地点',}
            , {field: 'dfcp', title: '对方车牌',}
            , {field: 'lxfs', title: '联系方式',}
            , {field: 'sfbj', title: '是否报警',}
        ]]
    });
    var fun = {
        detail: function () {

        }, dj: function () {
            common.openHtml("登记", "${pageContext.request.contextPath}/page/jtsgdj", ['90%', '90%'])
        }
    }
</script>