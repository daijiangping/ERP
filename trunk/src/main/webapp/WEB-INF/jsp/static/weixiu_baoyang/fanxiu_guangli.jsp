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
            <td align="right">车牌号:</td>
            <td>
                <input type="text" value="陕A22512" class="layui-input">
            </td>
            <td align="right">车辆编号:</td>
            <td>
                <input type="text" value="0251321" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">线路:</td>
            <td>
                <input type="text" value="706" class="layui-input">
            </td>
            <td align="right">分组:</td>
            <td>
                <select name="">
                    <option value="1">第一组</option>
                    <option value="2">第二组</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">返修项目名称:</td>
            <td>
                <input type="text" value="更换发动机" class="layui-input">
            </td>
            <td align="right">上次维修单号:</td>
            <td>
                <input type="text" value="985623" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">本次维修单号:</td>
            <td>
                <input type="text" placeholder="本次维修单号" class="layui-input">
            </td>
            <td align="right">返修类型:</td>
            <td>
                <select name="">
                    <option value="1">返修</option>
                    <option value="2">非返修</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">返修原因:</td>
            <td>
                <select name="">
                    <option value="1">产品问题</option>
                    <option value="2">驾驶员问题</option>
                    <option value="3">维修工问题</option>
                </select>
            </td>
            <td align="right">返修类型:</td>
            <td>
                <select name="">
                    <option value="1">返修</option>
                    <option value="2">非返修</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">项目保质期:</td>
            <td>
                <input type="text" placeholder="项目保质期" class="layui-input">
            </td>
          <td colspan="2"></td>

        </tr>
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
            <table class="layui-table" lay-size="sm" lay-skin="nob" style="width: 800px">
                <tr>
                    <td align="right">维修单号:</td>
                    <td align="left"><input class="layui-input" placeholder="维修单号"></td>
                    <td align="right">车牌号:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入车牌号"></td>
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
                field: '', title: '上次维修单号', templet: function (d) {
                    return "LT0021558627";
                }
            }
            , {
                field: 'cph', title: '本次维修单号', templet: function (d) {
                    return "LT0021558629";
                }
            }, {
                field: 'cph', title: '车辆编号', templet: function (d) {
                    return "DW0001";
                }
            }, {
                field: 'cph', title: '车牌号', templet: function (d) {
                    return "陕A55210";
                }
            }, {
                field: 'cph', title: '线路', templet: function (d) {
                    return "706";
                }
            }, {
                field: 'cph', title: '分组', templet: function (d) {
                    return "第一组";
                }
            }, {
                field: 'cph', title: '项目维修名称', templet: function (d) {
                    return "第一组";
                }
            }, {
                field: 'cph', title: '项目保质期', templet: function (d) {
                    return "7";
                }
            }, {
                field: 'cph', title: '类型', templet: function (d) {
                    return "返修";
                }
            }, {
                field: 'cph', title: '返修原因', templet: function (d) {
                    return "产品问题";
                }
            }, {
                field: 'cph', title: '备注', templet: function (d) {
                    return "";
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
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-sm" onclick="fun.add()">提成方式</button>
</script>