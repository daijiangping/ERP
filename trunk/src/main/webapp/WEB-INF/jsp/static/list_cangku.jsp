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
<%--div--%>
<div id="add_win" style="display: none">
    <div class="layui-form layui-form-pane">
        <table class="layui-table" lay-skin="nob">
            <tr>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">仓库编号</label>
                        <div class="layui-input-inline"><input type="text" placeholder="请输入仓库编号" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">仓库简称</label>
                        <div class="layui-input-inline"><input type="text" placeholder="仓库简称" class="layui-input"></div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">电话</label>
                        <div class="layui-input-inline"><input type="text" placeholder="请输入电话" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">联系人</label>
                        <div class="layui-input-inline"><input type="text" placeholder="请输入联系人" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
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
                <td>
                    <div class="layui-form-item"><label class="layui-form-label">货位管理</label>
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
                    <div class="layui-form-item"><label class="layui-form-label">仓库地址</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" style="width: 590px" placeholder="请输入仓库地址">
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

    <%--货位号设置弹出框--%>
    <div id="add_set" style="display: none">
        <table class="layui-table">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th colspan="100">
                    <button class="layui-btn">添加货位</button>
                </th>
            </tr>
            <tr>
                <th>仓库</th>
                <th>货位号</th>
                <th>编码</th>
                <th>用途</th>
                <th>备注</th>
                <th>停用</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>长安分库</td>
                <td>0001货位号</td>
                <td>02222</td>
                <td>存放化学药品</td>
                <td>否</td>
                <td>否</td>
                <td>
                    <button class="layui-btn layui-btn-danger">删除</button>
                    <button class="layui-btn">修改</button>
                </td>
            </tr>


            </tbody>
        </table>

    </div>
    <table class="layui-table" lay-skin="nob">
        <tr>

            <td align="left"><div class="layui-btn-group">
                <button class="layui-btn" onclick="fun.add()">
                    <i class="layui-icon">&#xe608;</i> 新增仓库
                </button>
                <button class="layui-btn  layui-btn-normal" onclick="fun.tzdj()">
                    <i class="layui-icon">&#xe606;</i> 批量删除
                </button>
                <button class="layui-btn  layui-btn-primary" onclick="fun.tzjl()">
                    <i class="layui-icon">&#xe631;</i> 刷新
                </button>
            </div>
            </td>
            <td>
                <div class="layui-inline">
                    <label class="layui-form-label"> &nbsp;仓库查询: </label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入仓库名称/编号" class="layui-input" style="width: 300px">
                    </div>
                    <input type="button" value="查询" class="layui-btn layui-btn-sm">
                </div>
            </td>
        </tr>
    </table>
    <table class="layui-table" lay-size="sm">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>仓库编号</th>
            <th>仓库简称</th>
            <th>仓库地址</th>
            <th>电话</th>
            <th>联系人</th>
            <th>停用</th>
            <th>上级仓库</th>
            <th>货位管理</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>001</td>
            <td>分库001</td>
            <td>集团总部仓库大楼负一楼</td>
            <td>17868802602</td>
            <td>李仓管</td>
            <td>
                <div class="layui-form">
                    <input type="checkbox" name="zzz" lay-skin="switch" lay-text="是|否" checked>
                </div>
            </td>
            <td>长安分库</td>
            <th>是</th>
            <td>
                <button class="layui-btn layui-btn-danger">删除</button>
                <button class="layui-btn layui-btn-warm">编辑</button>
                <button class="layui-btn">停用</button>

            </td>
        </tr>
        <tr>
            <td>0011</td>
            <td>分库002</td>
            <td>集团总部仓库大楼负一楼</td>
            <td>17868802602</td>
            <td>张一览</td>
            <td>
                <div class="layui-form"><input type="checkbox" name="zzz" lay-skin="switch" lay-text="是|否"></div>
            </td>
            <td>长安分库</td>
            <th>是</th>
            <td>
                <button class="layui-btn layui-btn-danger">删除</button>
                <button class="layui-btn layui-btn-warm">编辑</button>
                <button class="layui-btn">停用</button>

            </td>
        </tr>
        <tr>
            <td>001</td>
            <td>分库003</td>
            <td>集团总部仓库大楼负一楼</td>
            <td>13571856254</td>
            <td>代江平</td>
            <td>
                <div class="layui-form"><input type="checkbox" name="zzz" lay-skin="switch" lay-text="是|否" checked>
                </div>
            </td>
            <td>长安分库</td>
            <th>是</th>
            <td>
                <button class="layui-btn layui-btn-danger">删除</button>
                <button class="layui-btn layui-btn-warm">编辑</button>
                <button class="layui-btn">停用</button>

            </td>
        </tr>
        <tr>
            <td>001</td>
            <td>分库004</td>
            <td>集团总部仓库大楼负一楼</td>
            <td>18856225511</td>
            <td>代江平</td>
            <td>
                <div class="layui-form"><input type="checkbox" name="zzz" lay-skin="switch" lay-text="是|否" checked>
                </div>
            </td>
            <td>长安分库</td>
            <th>是</th>
            <td>
                <button class="layui-btn layui-btn-danger">删除</button>
                <button class="layui-btn layui-btn-warm">编辑</button>
                <button class="layui-btn">停用</button>

            </td>
        </tr>
        <tr>
            <td>001</td>
            <td>分库005</td>
            <td>集团总部仓库大楼负一楼</td>
            <td>15525628871</td>
            <td>刘仓管</td>
            <td>
                <div class="layui-form"><input type="checkbox" name="zzz" lay-skin="switch" lay-text="是|否" checked>
                </div>
            </td>
            <td>长安分库</td>
            <th>否</th>
            <td>
                <button class="layui-btn layui-btn-danger">删除</button>
                <button class="layui-btn layui-btn-warm">编辑</button>
                <button class="layui-btn">停用</button>

            </td>
        </tr>

        </tbody>
    </table>

</div>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>


    var fun = {
        hewei: function () {
            common.open("西安长安分库货位号设置", "add_set", ['1000px', '90%']);
        }, add: function () {
            common.open("长安分库--添加分库", "add_win", ['800px', '500px']);
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
                    name: '上海普通长安分库',
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