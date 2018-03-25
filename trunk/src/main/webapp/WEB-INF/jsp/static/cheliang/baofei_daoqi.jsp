<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn layui-btn-normal"
            onclick="location.href='${pageContext.request.contextPath}/page/baofei_jihua'">
        <i class="layui-icon ">&#xe608;</i> 生成报废计划
    </button>
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
            , {field: 'djbh', title: '车牌号',}
            , {field: 'bfrq', title: '到期时间',}
            , {field: 'lx', title: '车辆类型',}
            , {field: 'shrq', title: '发动机号',}
            , {field: 'hw', title: '厂牌型号',}
            , {field: 'fsrq', title: '长宽高',}
            , {field: 'sylb', title: '车辆使用类别',}
            , {field: 'dj', title: '车辆等级',}
            , {field: 'zt', title: '车辆状态',}
            , {field: 'pfbz', title: '车辆排放标准',}

        ]]
    });
    var fun = {
        detail: function () {
        }
    }
</script>

