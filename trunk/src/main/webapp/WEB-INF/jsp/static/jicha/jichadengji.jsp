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
                <input type="text" value="代江平" class="layui-input">
            </td>
            <td align="right" class="t_t">稽查时间:</td>
            <td>
                <input type="text" value="20171212" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">车牌号:</td>
            <td>
                <input type="text" value="陕A5623" class="layui-input">
            </td>
            <td align="right" class="t_t">车辆编号:</td>
            <td>
                <input type="text" value="8491523" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">线路名称:</td>
            <td>
                <input type="text" value="706" class="layui-input">
            </td>
            <td align="right" class="t_t">分组:</td>
            <td>
                <input type="text" value="diyizu" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">驾驶员:</td>
            <td>
                <input type="text" value="张三" class="layui-input">
            </td>

            <td align="right" class="t_t">电话:</td>
            <td>
                <input type="text" value="电话" class="layui-input">
            </td>

        </tr>

        <tr>
            <td colspan="4">
                <textarea    class="layui-textarea">违规内容简述</textarea>
            </td>
        </tr>


        <tr>
            <td colspan="10">
            </td>
        </tr>
        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存登记</button>

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
            <i class="layui-icon">&#xe608;</i> 违规登记
        </button>
        <button class="layui-btn">
            <i class="layui-icon">&#xe601;</i> 修改
        </button>
        <button class="layui-btn layui-btn-danger">
            <i class="layui-icon">&#xe604;</i> 批量删除
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