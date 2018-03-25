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
                    <div class="layui-form-item"><label class="layui-form-label">货位编号</label>
                        <div class="layui-input-inline"><input type="text" placeholder="请输入货位编号" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">货位简称</label>
                        <div class="layui-input-inline"><input type="text" placeholder="货位简称" class="layui-input"></div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">助记码</label>
                        <div class="layui-input-inline"><input type="text" placeholder="请输入助记码" class="layui-input">
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
    <hr>
    <div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe608;</i> 新增货位
    </button>
    <button class="layui-btn  layui-btn-danger" onclick="fun.tzdj()">
        <i class="layui-icon">&#xe606;</i> 删除货位
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
            {field: 'ck', title: '对应仓库',}
            , {field: 'hw', title: '货位名称'}
            , {field: 'bh', title: '货位编号'}
            , {field: 'bh', title: '助记码'}
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
            common.open("长安分库--添加货位", "add_win", ['800px', '500px']);
        }
    }

    layui.tree({
        elem: '#demo'
        , skin: 'shihuang'
        , nodes: [{ //节点数据
            name: '全部仓库',
            spread: true
            , children: [{
                name: '西安仓库',
                spread: false,
                children: [{
                    name: '西本地区分库1号',
                    spread: true
                }, {
                    name: '西本地区分库2号',
                    spread: true
                }]
            }, {
                name: '上海仓库',
                spread: true,
                children: [{
                    name: '上海普通第一仓库',
                    spread: true
                }, {
                    name: '陆家嘴第二仓库',
                    spread: true
                }, {
                    name: '北大街分库',
                    spread: true
                }]
            }, {
                name: '长安分库',
                spread: true,
                children: [{
                    name: '分库001',
                    spread: true
                }, {
                    name: '分库002',
                    spread: true
                }, {
                    name: '分库003',
                    spread: true
                }, {
                    name: '分库004',
                    spread: true
                }, {
                    name: '分库005',
                    spread: true
                }, {
                    name: '分库006',
                    spread: true
                }, {
                    name: '分库007',
                    spread: true
                }, {
                    name: '分库008',
                    spread: true
                }]
            }, {
                name: '贵州分仓',
                spread: true,
                children: [{
                    name: '集团六盘水分仓',
                    spread: true
                }, {
                    name: '集团遵义分仓',
                    spread: true
                }, {
                    name: '凯里分仓',
                    spread: true
                }, {
                    name: '贵阳分仓',
                    spread: true
                }, {
                    name: '黔西南分仓',
                    spread: true
                }, {
                    name: '黔东南分仓',
                    spread: true
                }, {
                    name: '惠水分仓',
                    spread: true
                }]
            }, {
                name: '六盘水分仓',
                spread: true,
                children: [{
                    name: '六盘水1号库',
                    spread: true
                }, {
                    name: '老城2号库',
                    spread: true
                }]
            }, {
                name: '0021北京库',
                spread: true,
                children: [{
                    name: '北库1',
                    spread: true
                }, {
                    name: '北库2',
                    spread: true
                }, {
                    name: '北库3',
                    spread: true
                }, {
                    name: '北库4',
                    spread: true
                }]
            }, {
                name: '天津仓库',
                spread: true,
                children: [{
                    name: '天津仓库1号',
                    spread: true
                }, {
                    name: '天津仓库2号',
                    spread: true
                }]
            }, {
                name: '浙江库',
                spread: true,
                children: [{
                    name: '浙江2库',
                    spread: true
                }, {
                    name: '浙江3库',
                    spread: true
                }]
            }, {
                name: '绍兴仓库',
                spread: true,
                children: [{
                    name: '绍兴仓库1',
                    spread: true
                }, {
                    name: '绍兴仓库2',
                    spread: true
                }]
            }, {
                name: '越城1号',
                spread: true,
                children: [{
                    name: '越城1号11维',
                    spread: true
                }, {
                    name: '越城1号14维',
                    spread: true
                }, {
                    name: '越城1号12维 ',
                    spread: true
                }, {
                    name: '越城1号13维',
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