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
            <label class="layui-form-label">车辆编号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="车辆编号">
            </div>
            <label class="layui-form-label">开始日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2017-01-01">
            </div>
            <label class="layui-form-label">结束日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2018-01-01">
            </div>

            <div class="layui-input-inline">
                <select>
                    <option value="1">最近30天</option>
                    <option value="4">今天</option>
                    <option value="2">本月</option>
                    <option value="3">今年</option>
                    <option value="3">全部</option>
                </select>
            </div>
            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>


<table id="demo"></table>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    //第一个实例
    table.render({
        elem: '#demo'
        , height: 315
        , url: '${pageContext.request.contextPath}/data/caigouOrderList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type:'checkbox', fixed: 'left'}
            ,{field: 'no1', title: '上报部门', sort: true,}
            , {field: '登记日期', title: '上报人', sort: true,}
            , {field: '运营公司', title: '修复件数', sort: true,}
            , {field: '车型', title: '报废数量 ', sort: true,}
            , {field: '开工时间', title: '上报日期 ', sort: true,}
            , {field: '作业人', title: '机损文件 ', sort: true,}
            , {field: '完工时间', title: '备注 ', sort: true,}
        ]]
    });
    var fun = {
        detail: function () {

        }
    }
</script>
