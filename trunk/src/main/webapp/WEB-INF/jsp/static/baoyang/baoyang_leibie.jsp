<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--新增弹框开始--%>
<div id="add_win" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right">编码:</td>
            <td>
                <input type="text" placeholder="请输入编码" class="layui-input">
            </td>
            <td align="right">类别名称:</td>
            <td>
                <input type="text" placeholder="请输入类别名称" class="layui-input">
            </td>
        </tr>

        <tr>
            <td colspan="100">
                <table class="layui-table" lay-size="sm">
                    <thead>
                    <tr>
                        <td colspan="10">
                            <div class="layui-btn-group">
                                <button class="layui-btn"><i class="layui-icon">&#xe654;</i>新增行</button>
                                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe642;</i>删除行
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>排序号</td>
                        <td>项目名称</td>
                        <td>检验标准</td>
                        <td>标准工时(H)</td>
                    </tr>
                    </thead>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>01</td>
                        <td>检测发动机</td>
                        <td>查看无损坏</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>01</td>
                        <td>检测轮胎</td>
                        <td>无损坏</td>
                        <td>0.5</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>01</td>
                        <td>保养滤清器</td>
                        <td>重新清洗</td>
                        <td>0.3</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>01</td>
                        <td>清洗座椅</td>
                        <td>清洗</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td>05</td>
                        <td>更换刹车片</td>
                        <td>更换完成</td>
                        <td>2</td>
                    </tr>
                    <tr>

                        <td colspan="10" align="center">
                            <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                            <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                            <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                            <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
                        </td>
                    </tr>
                </table>
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
                    <td align="right">编码:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入编码"></td>
                    <td align="right">类别名称:</td>
                    <td align="left"><input class="layui-input" placeholder="请输入类别名称"></td>
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
    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe642;</i>修改</button>
    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe643;</i>查看</button>
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
                field: '', title: '编码', sort: true, templet: function (d) {
                    return "LT0021558627";
                }
            }
            , {
                field: 'cph', title: '类别', sort: true, templet: function (d) {
                    return "一级保养";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.open("新增类别", "add_win", ['1200px', '90%'])
        }
    }

</script>
<script type="text/html" id="menu">

</script>