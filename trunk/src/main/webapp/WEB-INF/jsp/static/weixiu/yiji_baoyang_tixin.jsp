<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--win--%>
<div id="by_win" style="display: none">
    1
</div>
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
            <label class="layui-form-label">提醒天数</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="5">
            </div>

            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<%--<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn">
        <i class="layui-icon">&#xe608;</i> 导出报表
    </button>
</div>--%>
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
            , {
                field: 'zylb', title: '座位', templet: function (d) {
                    return "12座";
                }
            }
            , {
                field: 'kgsj', title: '颜色', templet: function (d) {
                    return "白绿";
                }
            }
            , {field: 'fdj', title: '发动机',}
            , {field: '111', title: '车辆识别代码',}
            , {
                field: 'zyy', title: '驾驶员', templet: function (d) {
                    return "张师傅";
                }
            }
            , {field: 'kgsj', title: '一级保养时间',}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        detail: function () {

        }, baoyang: function () {
            layer.msg("未开放-");
        }
    }
</script>
<script type="text/html" id="menu">
    <button class="layui-btn layui-btn-sm" onclick="fun.baoyang()">保养提醒</button>
    <button class="layui-btn layui-btn-sm" onclick="fun.baoyang()">忽略本次</button>
</script>
