<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
    <style>
        #left {
            width: 13%;

            border-spacing: inherit;
            background: #F7F7F7;
            overflow-y: auto;
            height: 100%;
            font-weight: bold;
            float: left;
        }

        #right {
            width: 86%;
            float: left;
            margin-left: 2px;
            border-right: 2px solid #F4F4F4;
            height: 100%;

        }
    </style>
</head>
<body>
<%--新增弹窗--%>
<div id="add_win" style="display: none">
    <div class="layui-form layui-form-pane">
        <table class="layui-table" lay-skin="nob">
            <tr>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">分类名称</label>
                        <div class="layui-input-inline"><input type="text" placeholder="分类名称" class="layui-input"></div>
                    </div>
                </td>
                <td>

                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">排序编码</label>
                        <div class="layui-input-inline"><input type="text" placeholder="请输入排序编码" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">停用</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="2">否</option>
                                <option value="1">是</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">

                </td>


            </tr>
            <tr>
                <td colspan="2">
                    <div class="layui-form-item"><label class="layui-form-label">备注</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" style="width: 590px" placeholder="请输入备注">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <hr>
                    <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                    <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                    <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
                </td>
            </tr>
        </table>
    </div>
</div>
<div id="left">
    <ul id="demo" class="innerbox"></ul>
</div>

<div id="right">
    <br>
    <div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe608;</i> 新增
    </button>
    <button class="layui-btn  layui-btn-danger" onclick="fun.tzdj()">
        <i class="layui-icon">&#xe606;</i> 删除
    </button>
    <button class="layui-btn  layui-btn-normal" onclick="fun.tzjl()">
        <i class="layui-icon">&#xe631;</i> 修改
    </button>
    <button class="layui-btn  " onclick="layer.msg('导出成功!')">
        <i class="layui-icon">&#xe632;</i> 导出EXCEL
    </button>
    <button class="layui-btn   " onclick="fun.yjsz()">
        <i class="layui-icon">&#xe633;</i> 导入
    </button>
    </div>
    <table id="table"></table>
</div>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>

    //第一个实例
    table.render({
        elem: '#table'
        , height: '850'
        , url: '${pageContext.request.contextPath}/data/AllProductList' //数据接口
        , cols: [[ //表头
            {type: 'checkbox'},
            {field: 'gysflmc', title: '分类名称'}
            , {
                field: 'hw', title: '排序编码', templet: function (d) {
                    return "001";
                }
            }
            , {
                field: 'weal2th1', title: '停用 ', templet: function (d) {
                    return '<input type="checkbox" name="zzz" lay-skin="switch" lay-text="是|否" checked>';
                }
            }, {field: 'weal2th1', title: '备注 '}
        ]]
        , page: true
    });
    var fun = {
        add: function () {
            common.open("添加分类", "add_win", ['800px', '500px']);
        }
    }

    layui.tree({
        elem: '#demo'
        , skin: 'shihuang'
        , nodes: [{ //节点数据
            name: '全部分类',
            spread: true
            , children: [{
                name: '考察供应商',
                spread: false,
                children: [{
                    name: '消极淘汰供应商',
                    spread: true
                }, {
                    name: '积极淘汰供应商',
                    spread: true
                }]
            }, {
                name: '身份未定供应商',
                spread: true,
                children: [{
                    name: '1级',
                    spread: true
                }, {
                    name: '2级',
                    spread: true
                }, {
                    name: '3级',
                    spread: true
                }, {
                    name: '4级',
                    spread: true
                }, {
                    name: '5级',
                    spread: true
                }, {
                    name: '6级',
                    spread: true
                }, {
                    name: '7级',
                    spread: true
                }, {
                    name: '8级',
                    spread: true
                }, {
                    name: '9级',
                    spread: true
                }, {
                    name: '10级',
                    spread: true
                }, {
                    name: '11级',
                    spread: true
                }]
            }]
        }]
        , click: function (node) {
        }
    });
</script>
<script type="text/html" id="kcsl">
    <span style="color: red">{{d.kcsl}}</span>
</script>