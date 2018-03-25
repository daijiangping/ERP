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
            <label class="layui-form-label">仓库</label>
            <div class="layui-input-inline">
                <select name="">
                    <option value="1">仓库1</option>
                    <option value="2">仓库2</option>
                    <option value="3">仓库3</option>
                </select>
            </div>

            <label class="layui-form-label">物资类别</label>
            <div class="layui-input-inline">
                <select name="">
                    <option value="1">轮胎类</option>
                    <option value="2">内饰类</option>
                    <option value="3">其他类型</option>
                </select>
            </div>

            <label class="layui-form-label">订单状态</label>
            <div class="layui-input-inline">
                <select>
                    <option value="1">未入库</option>
                    <option value="2">部分入库</option>
                    <option value="3">全部入库</option>
                </select>
            </div>
            <label class="layui-form-label">物资</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" placeholder="物资名称/编码/条形码">
            </div>

            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn" onclick="location.href='${pageContext.request.contextPath}/page/caigou_shenqing'">
        <i class="layui-icon">&#xe608;</i> 生成采购计划单
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
        , url: '${pageContext.request.contextPath}/data/zhinengbuhuo' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            , {
                field: '商品', title: '商品编码', sort: true, templet: function (d) {
                    return "000152";
                }
            }
            , {field: '商品', title: '商品名称', sort: true,}
            , {
                field: '', title: '适用车型', sort: true, templet: function (d) {
                    return "大众捷达";
                }
            }

            , {field: '属性', title: '属性', sort: true,templet:function (d) {
                            return "大众专用";
                        }}
            , {field: '单位', title: '单位', sort: true,}
            , {field: '当前库存', title: '当前库存 ', sort: true,}
            , {field: '采购在定量', title: '采购在订量 ', sort: true,}
            , {field: '最低库存', title: '最低库存', sort: true,}
            , {field: '建议采购量', title: '建议采购量', sort: true,}
        ]]
    });
    var fun = {
        detail: function () {
            common.openHtml("详情", "${pageContext.request.contextPath}/page/caigou_shenqing", ['95%', '95%'])
        }
    }
</script>
