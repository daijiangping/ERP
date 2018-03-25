<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="sh_win" style="display: none">
    <div class="layui-form layui-form-pane">
        <table class="layui-table" lay-size="sm" lay-skin="nob">
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">审核</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">通过</option>
                                <option value="2">不通过</option>
                                <option value="3">驳回</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">审核意见</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <button class="layui-btn">审核</button>
                    <button class="layui-btn">关闭</button>
                </td>
            </tr>
        </table>
    </div>
</div>

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
        <button class="layui-btn" onclick="location.href='${pageContext.request.contextPath}/page/wuzhi_linyong'">
            <i class="layui-icon">&#xe608;</i> 新增
        </button>
        <button class="layui-btn  layui-btn-danger">
            <i class="layui-icon">&#xe606;</i> 删除
        </button>
        <button class="layui-btn  layui-btn-normal">
            <i class="layui-icon">&#xe631;</i> 修改
        </button>
        <button class="layui-btn " onclick="fun.shenhe()">
            <i class="layui-icon">&#xe631;</i> 审核
        </button>

    </div>
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
            , {field: '订货日期', title: '退库日期', sort: true,}
            , {field: '', title: '退库部门', sort: true, templet: "#bumen"}
            , {field: '应付金额', title: '退库人 ', sort: true,}
            , {field: '预付定金', title: '备注 ', sort: true,}
            , {field: '制单', title: '制单 ', sort: true,}
            , {field: '经手人', title: '经手人 ', sort: true,}
            , {field: '审核', title: '审核 ', sort: true,}
            , {field: '进度', title: '状态', sort: true,}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        detail: function () {
            common.openHtml("详情", "${pageContext.request.contextPath}/page/wuzhi_linyong", ['95%', '95%'])
        }, shenhe: function () {
            common.open("审核", "sh_win", ['400px', '400px']);

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
<script type="text/html" id="bumen">
    后勤部
</script>