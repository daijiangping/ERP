<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--新增线路弹出框--%>
<div id="add_win" class="layui-form" style="display: none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right" class="t_t">发起人:</td>
            <td>
                代江平
            </td>
            <td align="right" class="t_t">稽查时间:</td>
            <td>
                20171212
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">车牌号:</td>
            <td>
                陕A5623
            </td>
            <td align="right" class="t_t">车辆编号:</td>
            <td>
                8491523
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">线路名称:</td>
            <td>
                706
            </td>
            <td align="right" class="t_t">分组:</td>
            <td>
                diyizu
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">驾驶员:</td>
            <td>
                张三
            </td>

            <td align="right" class="t_t">电话:</td>
            <td>
                17868802602
            </td>

        </tr>

        <tr>
            <td align="right">违规内容:</td>
            <td colspan="4">
                酒后驾驶机动车,逃逸,驶营运客车(不包括公共汽车)、校车载人超过核定人数20%以上；
            </td>
        </tr>
        <tr>
            <td align="right">违规图片:</td>
            <td colspan="100">
                <img src="${pageContext.request.contextPath}/resources/images/wizhang.jpg">
                <img src="${pageContext.request.contextPath}/resources/images/wizhang.jpg">
                <img src="${pageContext.request.contextPath}/resources/images/wizhang.jpg">
                <img src="${pageContext.request.contextPath}/resources/images/wizhang.jpg">
                <img src="${pageContext.request.contextPath}/resources/images/wizhang.jpg">
                <img src="${pageContext.request.contextPath}/resources/images/wizhang.jpg">
                <img src="${pageContext.request.contextPath}/resources/images/wizhang.jpg">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">核实时间:</td>
            <td>
                <input type="text" placeholder="核实时间" class="layui-input">
            </td>

            <td align="right" class="t_t">是否属实:</td>
            <td>
                <select name="">
                    <option value="1">情况属实</option>
                    <option value="2">情况不符</option>
                    <option value="3">情况造假</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <textarea    class="layui-textarea">核实内容简述</textarea>
            </td>
        </tr>
        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存</button>

            </td>
        </tr>
    </table>
</div>

<blockquote class="layui-elem-quote layui-quote-nm">
    <div class="layui-form layui-form-pane">
        <div class="layui-form-item">

            <label class="layui-form-label">稽查时间区间:</label>
            <div class="layui-input-inline">
                <input type="text" placeholder="请选择稽查时间" class="layui-input">
            </div>
            <label class="layui-form-label">分组</label>
            <div class="layui-input-inline">
                <input type="text" placeholder="分组" class="layui-input">
            </div>
            <label class="layui-form-label">线路</label>
            <div class="layui-input-inline">
                <input type="text" placeholder="请输入线路" class="layui-input">
            </div>
            <label class="layui-form-label">车牌号</label>
            <div class="layui-input-inline">
                <input type="text" placeholder="请输入车牌号" class="layui-input">
            </div>

            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <div class="layui-btn-group">
        <button class="layui-btn" onclick="fun.add()">
            <i class="layui-icon">&#xe608;</i> 稽查核实(审核)
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
        , url: '${pageContext.request.contextPath}/data/cheliangList1' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox'}
            , {
                field: 'dabh', title: '发起人', templet: function (d) {
                    return "张三";
                }
            }
            , {
                field: 'dabh', title: '稽查时间', templet: function (d) {
                    return "20171212";
                }
            }
            , {
                field: 'dabh', title: '车牌号', templet: function (d) {
                    return "陕A5623";
                }
            }, {
                field: 'dabh', title: '车辆编号', templet: function (d) {
                    return "陕A5623";
                }
            }
            , {
                field: 'cph', title: '线路名称', templet: function (d) {
                    return "706无人空调车";
                }
            }
            , {
                field: 'jsy', title: '分组', templet: function (d) {
                    return "第一组";
                }
            }
            , {
                field: 'cx', title: '驾驶员', templet: function (d) {
                    return "代江平";
                }
            }
            , {
                field: 'cx', title: '违规内容简述', templet: function (d) {
                    return "私自收乘客钱";
                }
            }
            , {
                field: 'cx', title: '违规图片1', templet: function (d) {
                    return "1";
                }
            }, {
                field: 'cx', title: '违规图片2', templet: function (d) {
                    return "2";
                }
            }
            , {
                field: 'cx', title: '违规视频', templet: function (d) {
                    return "a.mp4";
                }
            }, {
                field: 'cx', title: '核实时间', templet: function (d) {
                    return "今天早上";
                }
            }, {
                field: 'cx', title: '是否属实', templet: function (d) {
                    return "情况属实";
                }
            }, {
                field: 'cx', title: '核实人', templet: function (d) {
                    return "张大有";
                }
            }, {
                field: 'cx', title: '稽查核实简述', templet: function (d) {
                    return "查看了下确实违规了.";
                }
            }

        ]]
    });
    var fun = {
        detail: function () {

        }, add: function () {
            common.open("新增", "add_win", ['80%', '80%']);
        }
    }
</script>