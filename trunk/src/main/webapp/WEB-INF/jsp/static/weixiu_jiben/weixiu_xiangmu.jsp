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
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right">编码:</td>
            <td>
                <input type="text" value="001" class="layui-input">
            </td>
            <td align="right">名称:</td>
            <td>
                <input type="text" placeholder="维修底盘" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">上级项目名称:</td>
            <td>
                <input type="text" value="机修" class="layui-input">
            </td>
            <td align="right">保质期:</td>
            <td>
                <input type="text" placeholder="5年" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right">技术要求:</td>
            <td>
                <input type="text" value="专业维修发动机人员,持有发动机维修证" class="layui-input">
            </td>
            <td align="right">标准工时:</td>
            <td>
                <input type="text" value="12小时" class="layui-input">
            </td>
        </tr>
        <tr>
            <td colspan="100">
                <textarea placeholder="请输入作业内容" value="" class="layui-textarea">作业内容:拆卸发动机、清洗并认识发动机零件、装配发动机、认识检修气缸体与曲柄连杆机构。</textarea>
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
            {field: 'gysflmc', title: '上级项目名称'}
            , {
                field: 'hw', title: '排序编码', templet: function (d) {
                    return "001";
                }
            }, {
                field: 'hw', title: '维修项目名称', templet: function (d) {
                    return "维修发动机";
                }
            }, {
                field: 'hw', title: '标准工时', templet: function (d) {
                    return "2";
                }
            }, {
                field: 'hw', title: '保质期(天)', templet: function (d) {
                    return "10";
                }
            }, {
                field: 'hw', title: '技术要求', templet: function (d) {
                    return "需要专业的汽车维修人员";
                }
            }, {
                field: 'hw', title: '作业内容', templet: function (d) {
                    return "更换发动机维修等";
                }
            }

        ]]
        , page: true
    });
    var fun = {
        add: function () {
            common.open("新增维修项目", "add_win", ['800px', '500px']);
        }
    }

    layui.tree({
        elem: '#demo'
        , skin: 'shihuang'
        , nodes: [{ //节点数据
            name: '全部维修项目',
            spread: true
            , children: [{
                name: '机修',
                spread: true,
                children: [{
                    name: '维修发动机',
                    spread: true
                }, {
                    name: '维修变速箱',
                    spread: true
                }, {
                    name: '维修底盘悬挂系统',
                    spread: true
                }, {
                    name: '维修油路',
                    spread: true
                }]
            }, {
                name: '其他维修',
                spread: true,
                children: [{
                    name: '四轮定位',
                    spread: true
                }, {
                    name: '动平衡',
                    spread: true
                }, {
                    name: '钣金喷漆',
                    spread: true
                }, {
                    name: '汽车电工',
                    spread: true
                }, {
                    name: '汽车美容',
                    spread: true
                }, {
                    name: '换油',
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