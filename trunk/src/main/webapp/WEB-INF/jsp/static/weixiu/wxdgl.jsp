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
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn" onclick="location.href='${pageContext.request.contextPath}/page/clwx'">
        <i class="layui-icon">&#xe608;</i> 新增维修单
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
            , {field: 'hw', title: '维修单号',}
            , {field: 'djbh', title: '车牌号',}
            , {field: 'cx', title: '车型',}
            , {field: 'xl', title: '线路',}
            , {field: 'zylb', title: '作业类别',}
            , {field: 'kgsj', title: '开工时间',}
            , {field: 'wgsj', title: '完工时间',}
            , {field: 'zyy', title: '作业人',}
            , {field: 'gsf', title: '工时费',}
            , {field: 'pjf', title: '配件费',}
            , {field: 'zje', title: '总金额',}
            , {field: 'xlc', title: '修理厂',},
            {fixed: 'right', width: 178, title: '操作', align: 'center', toolbar: '#barDemo'}
        ]]
    });
    var fun = {
        detail: function () {
        }
    }
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-sm" onclick="location.href='${pageContext.request.contextPath}/page/clwx'">详情</a>
    <a class="layui-btn layui-btn-sm"
      >打印</a>
</script>
