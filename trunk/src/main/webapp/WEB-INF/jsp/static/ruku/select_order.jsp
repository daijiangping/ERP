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
<div class="layui-btn-group" style="margin-left: 20px">
    <button class="layui-btn  layui-btn-normal">
        <i class="layui-icon">&#xe605;</i> 选好了
    </button>

</div>
<table id="demo"></table>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    //第一个实例
    //
    table.render({
        elem: '#demo'
        , height: 315
        , url: '${pageContext.request.contextPath}/data/selectProduct' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type:'checkbox', fixed: 'left'}
            ,{field: 'no', title: '单据编号', sort: true,}
            , {field: '订货日期', title: '订货日期', sort: true,}
            , {field: '送货日期', title: '送货日期', sort: true,}
            , {field: '供应商', title: '供应商 ', sort: true,}
            , {field: '自定义单号', title: '自定义单号', sort: true,}
            , {field: '经手人', title: '经手人', sort: true,}
            , {field: '产品编号', title: '物资编号 ', sort: true,}
            , {field: '条码', title: '条码 ', sort: true,}
            , {field: '名称', title: '名称 ', sort: true,}
            , {field: '单位', title: '单位 ', sort: true,}
            , {field: '规格', title: '规格 ', sort: true,}
            , {field: '颜色', title: '颜色 ', sort: true,}
            , {field: '品牌', title: '品牌 ', sort: true,}
            , {field: '数量', title: '数量', sort: true,}
            , {field: '已完成', title: '已完成', sort: true,}
            , {field: '单价', title: '单价', sort: true,}
            , {field: '金额', title: '金额', sort: true,}
        ]]
    });
    var fun = {
        detail: function () {
            common.openHtml("详情", "${pageContext.request.contextPath}/page/caigou_shenqing", ['95%', '95%'])
        }
    }
</script>
