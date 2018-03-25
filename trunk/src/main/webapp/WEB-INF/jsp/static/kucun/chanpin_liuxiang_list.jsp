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
            <label class="layui-form-label">车牌号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="车牌号">
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
    <button class="layui-btn" onclick="location.href='${pageContext.request.contextPath}/page/caigou_jinhuo_order'">
        <i class="layui-icon">&#xe608;</i> 导出EXCEL
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
        , url: '${pageContext.request.contextPath}/data/liuxiangList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox'}
            , {
                field: 'je', title: '车牌号', sort: true, templet: function (d) {
                    return "陕A55263";
                }
            }   , {
                field: 'je', title: '线路', sort: true, templet: function (d) {
                    return "K106";
                }
            }
            , {field: 'lx', title: '类型', sort: true,}
            , {field: 'djbh', title: '单据编号', sort: true,}
            , {field: 'shrq', title: '所属仓库', sort: true,}
            , {field: 'hw', title: '货位', sort: true,}
            , {field: 'fsrq', title: '发生日期', sort: true,}
            , {field: 'cpbh', title: '物资编号', sort: true,}
            , {field: 'tm', title: '条码', sort: true,}
            , {field: 'cpmc', title: '物资名称', sort: true,}
            , {field: 'dw', title: '单位', sort: true,}
            , {field: 'gg', title: '规格', sort: true,}
            , {field: 'ys', title: '颜色', sort: true,}
            , {field: 'pp', title: '品牌', sort: true,}
            , {field: 'pc', title: '批次', sort: true,}
            , {field: 'sl', title: '数量', sort: true,}
            , {field: 'dj', title: '单价', sort: true,}
            , {field: 'je', title: '金额', sort: true,}

        ]]
    });
    var fun = {
        detail: function () {
        }
    }
</script>
