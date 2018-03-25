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
    <button class="layui-btn" onclick="location.href='${pageContext.request.contextPath}/page/kucun_baoyi_order'">
        <i class="layui-icon">&#xe608;</i> 新增报溢
    </button>
    <button class="layui-btn  layui-btn-normal">
        <i class="layui-icon">&#xe605;</i> 删除
    </button>
    <button class="layui-btn  layui-btn-primary">
        <i class="layui-icon">&#xe631;</i> 修改
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
            , {field: 'djbh', title: '单据编号', sort: true,}
            , {field: 'dbrq', title: '报溢日期', sort: true,}
            , {field: 'dbbm', title: '报溢部门 ', sort: true,}
            , {field: 'zd', title: '制单 ', sort: true,}
            , {field: 'js1r', title: '经手人 ', sort: true,}
            , {field: 'sh1', title: '审核 ', sort: true,}
            , {field: 'b1z', title: '备注', sort: true,}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        detail: function () {
            common.openHtml("详情", "${pageContext.request.contextPath}/page/kucun_baoyi_order", ['90%', '95%'])
        }
    }
</script>
<script type="text/html" id="menu">
    <div class="layui-btn-group">
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-sm" onclick="fun.detail()">
                <i class="layui-icon">&#xe60a;</i>详情
            </button>

        </div>
    </div>
</script>