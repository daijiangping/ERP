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
            <label class="layui-form-label">订单编号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="单号/供应商/备注">
            </div>
            <label class="layui-form-label">开始日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2017-01-01">
            </div>
            <label class="layui-form-label">结束日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2018-01-01">
            </div>

            <label class="layui-form-label">审核状态</label>
            <div class="layui-input-inline">
                <select>
                    <option value="1">(空)</option>
                    <option value="4">待审</option>
                    <option value="2">已审</option>
                    <option value="3">审核中</option>
                </select>
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
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <div class="layui-btn-group">
    <button class="layui-btn" onclick="location.href='${pageContext.request.contextPath}/page/caigou_jinhuo_order'">
        <i class="layui-icon">&#xe608;</i> 新增
    </button>
    <button class="layui-btn  layui-btn-danger">
        <i class="layui-icon">&#xe605;</i> 删除
    </button>
    <button class="layui-btn  layui-btn-normal">
        <i class="layui-icon">&#xe631;</i> 修改
    </button></div>
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
        , url: '${pageContext.request.contextPath}/data/caigouOrderList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            , {field: 'no', title: '单据编号', sort: true,}
            , {field: '订货日期', title: '进货日期', sort: true,}
            , {field: '送货日期', title: '付款期限', sort: true,}
            , {field: '供应商', title: '供应商 ', sort: true,}
            , {field: '应付金额', title: '自定义单号 ', sort: true,}
            , {field: '1', title: '付款银行', sort: true,}
            , {field: '1', title: '应付金额', sort: true,}
            , {field: '1', title: '预付金额 ', sort: true,}
            , {field: '1', title: '预付款单号', sort: true,}
            , {field: '1', title: '运费', sort: true,}
            , {field: '1', title: '杂费', sort: true,}
            , {field: '1', title: '制单', sort: true,}
            , {field: '1', title: '经手', sort: true,}
            , {field: '1', title: '部门', sort: true,}
            , {field: '1', title: '状态', sort: true,}

            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        detail: function () {
            common.openHtml("详情", "${pageContext.request.contextPath}/page/caigou_jinhuo_order", ['95%', '95%'])
        }
    }
</script>
<script type="text/html" id="menu">
    <div class="layui-btn-group">
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-sm" onclick="fun.detail()">
                <i class="layui-icon">&#xe60a;</i>
            </button>
            <button class="layui-btn layui-btn-sm">
                <i class="layui-icon">&#xe642;</i>
            </button>
            <button class="layui-btn layui-btn-sm">
                <i class="layui-icon">&#xe640;</i>
            </button>

        </div>
    </div>
</script>