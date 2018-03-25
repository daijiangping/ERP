<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--新增弹框开始--%>
<div id="add_win" class="layui-form" style="display:none">
    <table class="layui-table" lay-size="sm" lay-skin="nob">
        <tr>
            <td align="right">合同名称:</td>
            <td>
                <input type="text" value="2018年安全组轮胎采购合同" class="layui-input">
            </td>
            <td align="right">合同编号:</td>
            <td>
                <input type="text" value="986523" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">开始日期:</td>
            <td>
                <input type="text" value="2017-01-01" class="layui-input">
            </td>
            <td align="right">截止日期 :</td>
            <td>
                <input type="text" value="2018-01-01" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">签订日期:</td>
            <td>
                <input type="text" value="2018-01-01" class="layui-input">
            </td>
            <td align="right">责任部门:</td>
            <td>
                <input type="text" value="采购部" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">责任人:</td>
            <td>
                <select name="">
                    <option value="1">张三</option>
                    <option value="2">历史</option>
                </select>
            </td>
            <td align="right">合同甲方:</td>
            <td>
                <input type="text" value="轮胎售卖中心" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">合同乙方
                :
            </td>
            <td>
                <input type="text" value="公交一公司" class="layui-input">
            </td>
            <td align="right">合同金额:</td>
            <td>
                <input type="text" value="5000.00" class="layui-input">
            </td>
        </tr>
        <tr>
        <tr>
            <td align="right">合同分类
                :
            </td>
            <td>
                <select name="">
                    <option value="1">采购合同</option>
                    <option value="2">其他合同</option>
                </select>
            </td>
            <td align="right">质保金:</td>
            <td>
                <input type="text" value="5000.00" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">质保提醒日期
                :
            </td>
            <td>
                <select name="">
                    <option value="1">A</option>
                    <option value="2">B</option>
                </select>
            </td>
            <td align="right">质保金:</td>
            <td>
                <input type="text" value="5000.00" class="layui-input">
            </td>
        </tr>
        <tr>
        <tr>
            <td align="right">备注:</td>
            <td colspan="3">
                <textarea placeholder="请输入备注" class="layui-textarea"></textarea>
            </td>

        </tr>

        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
            </td>
        </tr>
    </table>
</div>
<%--新增弹框结束--%>
<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>
                    <td align="right">合同分类:</td>
                    <td align="left"><select name="">
                        <option value="1">采购合同</option>
                        <option value="2">其他合同</option>
                    </select></td>
                    <td align="right">收付款类型:</td>
                    <td align="left"><select name="">
                        <option value="1">收款</option>
                        <option value="2">付款</option>
                        <option value="3">其他</option>
                    </select></td>
                    <td align="right">执行情况:</td>
                    <td align="left"><select name="">
                        <option value="1">未开始</option>
                        <option value="2">执行中</option>
                        <option value="3">搁置</option>
                        <option value="3">已完成</option>
                    </select></td>
                    <td align="right">业务员:</td>
                    <td align="left"><input type="text" class="layui-input"></td>

                    <td>
                        <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询
                        </button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</fieldset>

<div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.add()"><i class="layui-icon">&#xe654;</i>新增</button>
    <button class="layui-btn "><i class="layui-icon">&#xe642;</i>修改</button>
    <button class="layui-btn "><i class="layui-icon">&#xe643;</i>合同查看</button>
    <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe641;</i>删除</button>

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
        , url: '${pageContext.request.contextPath}/data/cheliangList1' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}

            , {
                field: '', title: '合同编码', width: 100, templet: function (d) {
                    return "8945623";
                }
            }
            , {
                field: '', title: '合同类型', width: 100, templet: function (d) {
                    return "采购合同";
                }
            }, {
                field: '', title: '合同名称', width: 220, templet: function (d) {
                    return "2018年安全组轮胎采购合同";
                }
            }, {
                field: '', title: '支付方式', width: 100, templet: function (d) {
                    return "现金";
                }
            }, {
                field: '', title: '合同金额', width: 100, templet: function (d) {
                    return "2000万";
                }
            }, {
                field: '', title: '收付款类型', width: 150, templet: function (d) {
                    return "付款";
                }
            }, {
                field: '', title: '币种', width: 100, templet: function (d) {
                    return "人民币";
                }
            }, {
                field: '', title: '签订日期', width: 150, templet: function (d) {
                    return "2017-01-21";
                }
            }, {
                field: '', title: '业务员', width: 100, templet: function (d) {
                    return "里斯坦";
                }
            }, {
                field: '', title: '责任部门', width: 100, templet: function (d) {
                    return "设备科";
                }
            }, {
                field: '', title: '开始时间', width: 150, templet: function (d) {
                    return "2017-01-01";
                }
            }, {
                field: '', title: '结束时间', width: 150, templet: function (d) {
                    return "2018-01-01";
                }
            }, {
                field: '', title: '执行情况', width: 150, templet: function (d) {
                    return "执行中";
                }
            }, {
                field: '', title: '合同甲方', width: 150, templet: function (d) {
                    return "轮胎供应商";
                }
            }, {
                field: '', title: '责任人', width: 100, templet: function (d) {
                    return "李小松";
                }
            }, {
                field: '', title: '合同乙方', width: 150, templet: function (d) {
                    return "公交一公司";
                }
            }, {
                field: '', title: '责任人', width: 100, templet: function (d) {
                    return "王凯军";
                }
            }, {
                field: '', title: '质保金', width: 100, templet: function (d) {
                    return "50万";
                }
            }, {
                field: '', title: '质保金提醒日期', width: 200, templet: function (d) {
                    return "20170002";
                }
            }, {
                field: '', title: '合同扫描件', width: 200, templet: function (d) {
                    return ".";
                }
            }, {
                field: '', title: '录入员', width: 200, templet: function (d) {
                    return "admin";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.open("新增", "add_win", ['1200px', '600px'])
        }
    }

</script>
