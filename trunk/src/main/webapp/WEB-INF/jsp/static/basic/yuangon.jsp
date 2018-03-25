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
<div id="left">
    <ul id="demo" class="innerbox"></ul>
</div>
<div id="right">
    <blockquote class="layui-elem-quote ">

        <div class="layui-form layui-form-pane">


            <div class="layui-form-item">
                <label class="layui-form-label">员工姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="username" class="layui-input" placeholder="姓名/电话/编号">
                </div>
                <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
            </div>
        </div>
    </blockquote>
    <hr><div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.tzkc()">
        <i class="layui-icon">&#xe608;</i> 新增
    </button>
    <button class="layui-btn  layui-btn-normal" onclick="fun.tzdj()">
        <i class="layui-icon">&#xe606;</i> 修改
    </button>
    <button class="layui-btn  layui-btn-danger" onclick="fun.tzjl()">
        <i class="layui-icon">&#xe631;</i> 删除
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
            {field: 'n1o', title: '员工编号'}
            , {field: 'hw1', title: '员工名称'}
            , {field: 'pc1', title: '所属部门'}
            , {field: 'lb1', title: '性别'}
            , {field: 'bh1', title: '年龄'}
            , {field: 'bh1', title: '家庭住址'}
            , {field: 'bh1', title: '手机'}
            , {field: 'bh1', title: '邮箱'}
            , {field: 'bh1', title: '职称'}
            , {field: 'bh1', title: '岗位'}
            , {field: 'bh1', title: '类别'}
            , {field: 'bh1', title: '组别'}
            , {field: 'bh1', title: '机务检查证号'}
            , {field: 'bh1', title: '操作' ,templet:"#menu",fixed:"right"}

        ]]
        , page: true
    });
    var fun = {

    }

    layui.tree({
        elem: '#demo'
        , skin: 'shihuang'
        , nodes: [{ //节点数据
            name: '公交集团',
            spread: true
            , children: [{
                name: '公交集团西安分公司',
                spread: false,
                children: [{
                    name: '采购部',
                    spread: true
                }, {
                    name: '生成部门',
                    spread: true
                }, {
                    name: '后勤服务中心',
                    spread: true
                }]
            }, {
                name: '公交集团天津分公司',
                spread: true,
                children: [{
                    name: '001 财务部',
                    spread: true
                }, {
                    name: '001 GC部',
                    spread: true
                }, {
                    name: '002 财务部',
                    spread: true
                }]
            }, {
                name: '长安分公司',
                spread: true,
                children: [{
                    name: '221部',
                    spread: true
                }, {
                    name: '222部',
                    spread: true
                }, {
                    name: '223部',
                    spread: true
                }, {
                    name: '224部',
                    spread: true
                }, {
                    name: '225部',
                    spread: true
                }, {
                    name: '226部',
                    spread: true
                }, {
                    name: '227部',
                    spread: true
                }, {
                    name: '228部',
                    spread: true
                }]
            }, {
                name: '贵阳公司',
                spread: true,
                children: [{
                    name: '工程1部',
                    spread: true
                }, {
                    name: '工程2部',
                    spread: true
                }, {
                    name: '工程3部',
                    spread: true
                }, {
                    name: '工程4部',
                    spread: true
                }, {
                    name: '工程5部',
                    spread: true
                }, {
                    name: '工程6部',
                    spread: true
                }, {
                    name: '工程7部',
                    spread: true
                }]
            }, {
                name: '上海分公司',
                spread: true,
                children: [{
                    name: 'A区',
                    spread: true
                }, {
                    name: 'B区',
                    spread: true
                }]
            }, {
                name: '北京分部',
                spread: true,
                children: [{
                    name: '销售部',
                    spread: true
                }, {
                    name: '采购部',
                    spread: true
                }, {
                    name: '物管部',
                    spread: true
                }, {
                    name: '集1部',
                    spread: true
                }]
            }, {
                name: '美国达思佳总部',
                spread: true,
                children: [{
                    name: 'emp1.No',
                    spread: true
                }, {
                    name: 'emp2 .No',
                    spread: true
                }]
            }, {
                name: '江苏南京公交集团',
                spread: true,
                children: [{
                    name: 'Alicante 1',
                    spread: true
                }, {
                    name: 'Alicante 2',
                    spread: true
                }]
            }, {
                name: '贵州联合酒厂',
                spread: true,
                children: [{
                    name: 'A1',
                    spread: true
                }, {
                    name: 'A2',
                    spread: true
                }]
            }, {
                name: '物资中心',
                spread: true,
                children: [{
                    name: '物质负责组',
                    spread: true
                }, {
                    name: '物质采购部门',
                    spread: true
                }, {
                    name: '物质实施 ',
                    spread: true
                }, {
                    name: '物质报损部',
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
<script type="text/html" id="menu">
 <a class="a_old">电话设置</a>
</script>