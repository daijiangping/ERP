<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
    <style>
        td {
            width: 100px;
            text-align: center;
        }

        .yello {
            background: #FFF8DC;
        }

        table {

        }

        .hd_top {
            border: 0;
        }

        .txm {
            background: #F4F4F4;
            color: #525252;

        }

        input[type=text] {
            border: 1px solid #4F94CD;
        }

        #p_list {
            height: 50%;
            border: 1px solid red;
        }

    </style>
</head>
<body>
<fieldset class="layui-elem-field">
    <legend>操作栏</legend>
    <div class="layui-field-box">
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-sm" onclick="fun.add()">
                <i class="layui-icon">&#xe654;</i>保存入库
            </button>
            <button class="layui-btn layui-btn-sm">
                <i class="layui-icon">&#xe642;</i>采购单导入
            </button>
            <button class="layui-btn layui-btn-sm" onclick="window.print()">
                <i class="layui-icon">&#xe640;</i>打印
            </button>
        </div>
    </div>
</fieldset>
<table style="width: 100%">
    <tr class="yello">
        <td align="center" rowspan="2" style="font-weight: bold">入库单</td>
        <td align="center" rowspan="2"></td>
        <td>入库日期</td>
        <td>自定义单号</td>
        <td>单据编号</td>
    </tr>
    <tr class="yello">

        <td>2017-10-12</td>
        <td><input type="text" placeholder="请输入"></td>
        <td>RK20181012</td>
    </tr>
    <tr class="hd_top">
        <td style="text-align: right"> 采购单据编号:552284561231</td>
        <td>联系人: <input type="text"></td>
        <td style="text-align: left">电话号码: <input type="text"></td>
        <td style="text-align: left"></td>
        <td colspan="100"></td>
    </tr>
    <tr class="hd_top">
        <td style="text-align: right">入库仓库:<input type="text" value="第一仓库">
            <button>+选择</button>
        </td>
        <td>经手人: <input type="text"></td>
        <td style="text-align: left"> 部门: <select>
            <option value="1">采购部</option>
            <option value="2">研发部</option>
        </select></td>
        <td style="text-align: left">单据类型:<select>
            <option value="1">采购入库</option>
            <option value="3">生产入库</option>
            <option value="2">其他入库</option>
        </select>
        </td>
        <td colspan="100"></td>
    </tr>
    <tr class="txm">
        <td colspan="100" style="text-align: left">
            <br>
            <fieldset class="layui-elem-field">
                <legend>条码输入框</legend>
                <div class="layui-field-box">
                    批次: <select name="" id="">
                    <option value="">20524651326511</option>
                    <option value="">2018-10-12</option>
                    <option value="">+自定义批次+</option>
                </select>
                    数量: <input value="1" style="width: 80px">
                    &nbsp;&nbsp;条形码/产品编号/拼音码: <input type="text" placeholder="条形码">
                    <button>立即查询</button>
                    <span style="color: red">可采用回车键查询,还可以</span>
                    <button onclick="fun.selectProduct()">选择商品</button>
                </div>
            </fieldset>
        </td>
    </tr>
</table>
<%--产品列表--%>
<div style="height: 50%;overflow-y: auto;border: 1px solid #FFE4C4">
    <table border="1" class="layui-table" lay-size="sm">
        <thead>
        <tr>
            <td>产品编号</td>
            <td>产品名称</td>
            <td>单位</td>
            <td>规格</td>
            <td>颜色</td>
            <td>品牌</td>
            <td>批次</td>
            <td>数量</td>
            <td>单价</td>
            <td>金额</td>
            <td>备注</td>
        </tr>
        </thead>

        <tbody id="product_list"></tbody>
    </table>
</div>
<div>

</div>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/data.jsp"></jsp:include>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    var fun = {
        init: function () {
            $("#product_list").html($("#product_list_tpl").html());
        }, selectProduct: function () {
            layer.msg(1)
            common.openHtmlTop("选择商品", "${pageContext.request.contextPath}/page/product_list", ['80%', '80%'])
        }
    }
    fun.init();
</script>