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

            <label class="layui-form-label">仓库</label>
            <div class="layui-input-inline">
                <select>
                    <option value="1">仓库1</option>
                    <option value="4">仓库2</option>
                    <option value="2">仓库3</option>
                    <option value="3">仓库4</option>
                </select>
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
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <div class="layui-btn-group">
        <button class="layui-btn"
                onclick="location.href='${pageContext.request.contextPath}/page/chanpin_zuzhuang_order'">
            <i class="layui-icon">&#xe608;</i> 新增组装
        </button>
        <button class="layui-btn">
            <i class="layui-icon">&#xe606;</i> 导出EXCEL
        </button>

        <button class="layui-btn  layui-btn-danger">
            <i class="layui-icon">&#xe605;</i> 删除
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
        , url: '${pageContext.request.contextPath}/data/liuxiangList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox'}
            , {field: 'djbh', title: '单据编号', sort: true,}
            , {field: 'fsrq', title: '组装日期', sort: true,}
            , {field: 'shrq', title: '所属仓库', sort: true,}
            , {field: 'hw', title: '货位', sort: true,}
            , {field: 'pc', title: '批次', sort: true,}
            , {field: '', title: '制单人', sort: true,}
            , {field: '', title: '经手人', sort: true,}
            , {field: '', title: '审核', sort: true,}
            , {field: 'cpbh', title: '产品编号', sort: true,}
            , {field: 'tm', title: '条码', sort: true,}
            , {field: 'c2pmc', title: '产品名称', sort: true,}
            , {field: 'd2w', title: '单位', sort: true,}
            , {field: 'g2g', title: '规格', sort: true,}
            , {field: 'ys2', title: '颜色', sort: true,}
            , {field: 'pp2', title: '品牌', sort: true,}
            , {field: 'sl2', title: '数量', sort: true,}
            , {field: 'dj1', title: '单价', sort: true,}
            , {field: 'je1', title: '金额', sort: true, templet: "#menu"}
        ]]
    });
    var fun = {
        detail: function () {
        }, shenhe: function () {
            common.open("审核", "sh_win", ['400px', '400px']);

        }
    }
</script>
<script type="text/html" id="menu">
    <button class="layui-btn layui-btn-xs"
            onclick="location.href='${pageContext.request.contextPath}/page/chanpin_zuzhuang_order'">详情
    </button>
</script>
