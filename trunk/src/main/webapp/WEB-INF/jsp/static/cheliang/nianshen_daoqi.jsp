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

            <div class="layui-form-item">
                <label class="layui-form-label">提醒天数</label>
                <div class="layui-input-inline">
                    <input type="text" placeholder="100" class="layui-input">
                </div>
                <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
            </div>

        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn"  >
        <i class="layui-icon">&#xe608;</i> 批量处理
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
        , url: '${pageContext.request.contextPath}/data/diaoboList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            , {field: 'djbh1', title: '车牌号', sort: true,}
            , {field: 'dbrq', title: '年审日期', sort: true,}
            , {field: '1', title: '年审号', sort: true,}
            , {field: 'db2bm', title: '年审费用', sort: true,}
            , {field: 'sh1', title: '车管所', sort: true,}
            , {field: 'dbrq', title: '到期日期', sort: true,}
            , {field: 'time', title: '剩余天数', sort: true, templet: "#time"}
            , {field: 'bz', title: '经手人', sort: true,}
            , {field: 'bz2', title: '备注', sort: true,}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        add: function () {
            common.open("新增年审", "add_win", ['1000px', '500px'])
        }
    }
</script>
<script type="text/html" id="menu">
    <div class="layui-btn-group">
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-sm">
                <i class="layui-icon">&#xe60a;</i>不再提醒
            </button>
        </div>
    </div>
</script>
<script type="text/html" id="time">
    <span style="color: red"> 35天</span>
</script>