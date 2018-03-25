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
    <button class="layui-btn"  >
        <i class="layui-icon">&#xe608;</i> 导出报表
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
            , {field: 'djbh', title: '车牌号',}
            , {field: 'cx', title: '车型',}
            , {field: 'xl', title: '线路',}
            , {field: 'gsf', title: '工时费',}
            , {field: 'pjf', title: '配件费',}
            , {field: 'zje', title: '总金额',}
            , {field: 'qssj', title: '起始时间',}
            , {field: 'jzrq', title: '截止日期',}
        ]]
    });
    var fun = {
        detail: function () {
        }
    }
</script>
