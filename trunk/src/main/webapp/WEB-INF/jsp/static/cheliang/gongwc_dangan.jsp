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

            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn">
        <i class="layui-icon">&#xe609;</i> 导出EXCEL
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
            , {field: 'hw', title: '厂牌型号',}
            , {field: 'djbh', title: '车牌号',}
            , {field: 'bm', title: '部门',}
            , {field: 'lx', title: '车辆类型',}
            , {field: 'sylx', title: '使用类型',}
            , {field: 'rlzl', title: '燃料种类',}
            , {field: 'fdjh', title: '发动机号',}
            , {field: 'guig', title: '长宽高',}
            , {field: 'bz', title: '备注'},
            {fixed: 'right', width: 178, title: '操作', align: 'center', toolbar: '#barDemo'}
        ]]
    });
    var fun = {
        detail: function () {
        }
    }
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-sm" onclick="location.href='${pageContext.request.contextPath}/page/cheliang_detail'">详情</a>
    <a  class="layui-btn layui-btn-sm" onclick="location.href='${pageContext.request.contextPath}/page/add_cheliang'">修改</a>
</script>
