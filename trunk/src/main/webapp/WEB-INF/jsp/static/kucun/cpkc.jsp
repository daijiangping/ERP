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
                <label class="layui-form-label">物资信息</label>
                <div class="layui-input-inline">
                    <input type="text" name="username" class="layui-input" placeholder="名称/编号/条形码">
                </div>

                <label class="layui-form-label">选择仓库</label>
                <div class="layui-input-inline">
                    <select>
                        <option value="1">西安仓库</option>
                        <option value="4">南京仓库</option>
                        <option value="2">北京仓库</option>
                        <option value="3">Aviclicodeing</option>
                    </select>
                </div>
                <label class="layui-form-label">选择货位</label>
                <div class="layui-input-inline">
                    <select>
                        <option value="1">#0021</option>
                        <option value="4">#0022</option>
                        <option value="2">#0023</option>
                        <option value="3">#0024</option>
                    </select>
                </div>
                <label class="layui-form-label">零库存</label>
                <div class="layui-input-inline">
                    <select>
                        <option value="1">显示</option>
                        <option value="4">隐藏</option>
                    </select>
                </div>


                <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
            </div>
        </div>
    </blockquote>
    <hr>
    <div class="layui-btn-group">
        <button class="layui-btn" onclick="fun.tzkc()">
            <i class="layui-icon">&#xe608;</i> 调整库存
        </button>
        <button class="layui-btn  " onclick="fun.tzdj()">
            <i class="layui-icon">&#xe606;</i> 调整单价
        </button>
        <button class="layui-btn  " onclick="fun.tzjl()">
            <i class="layui-icon">&#xe631;</i> 调整记录
        </button>
        <button class="layui-btn  layui-btn-normal" onclick="layer.msg('导出成功!')">
            <i class="layui-icon">&#xe632;</i> 导出EXCEL
        </button>
        <button class="layui-btn layui-btn-danger" onclick="fun.yjsz()">
            <i class="layui-icon">&#xe633;</i> 预警设置
        </button>
        <button class="layui-btn  " onclick="fun.cplx()">
            <i class="layui-icon">&#xe634;</i> 物资流向
        </button>
        <button class="layui-btn  layui-btn-normal" onclick="fun.jhls()">
            <i class="layui-icon">&#xe635;</i> 进货历史
        </button>
    </div>
    <table id="table"></table>
</div>
<%--弹出框--%>
<div id="tz_win" style="display: none">

    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <td colspan="100">
                <button class="layui-btn">
                    <i class="layui-icon">&#xe635;</i> 保存调整
                </button>
            </td>
        </tr>
        <tr>
            <th>物资编号</th>
            <th>物资名称</th>
            <th>仓库</th>
            <th>货位</th>
            <th>批次</th>
            <th>库存数量</th>
            <th>采购在途</th>
            <th>运单预占数</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>00252</td>
            <td>汽车香水</td>
            <td>西安仓库</td>
            <td>#0021</td>
            <td>BAT2011202</td>
            <td><input type="text" value="200" class="layui-input" style="width: 50px"></td>
            <td><input type="text" value="200" class="layui-input" style="width: 50px"></td>
            <td><input type="text" value="200" class="layui-input" style="width: 50px"></td>
        </tr>
        </tbody>
    </table>
</div>
<%--弹出框--%>
<div id="dj_win" style="display: none">

    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <td colspan="100">
                <button class="layui-btn">
                    <i class="layui-icon">&#xe635;</i> 保存调整
                </button>
            </td>
        </tr>
        <tr>
            <th>物资编号</th>
            <th>物资名称</th>
            <th>仓库</th>
            <th>货位</th>
            <th>批次</th>
            <th>库存数量</th>
            <th>成本价</th>
            <th>库存金额</th>
            <th>采购在途</th>
            <th>运单预占数</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>00252</td>
            <td>汽车香水</td>
            <td>西安仓库</td>
            <td>#0021</td>
            <td>BAT2011202</td>
            <td>500</td>
            <th><input type="text" value="20" class="layui-input" style="width: 50px"></th>
            <th><input type="text" value="35" class="layui-input" style="width: 50px"></th>
            <td>5</td>
            <td>7</td>
        </tr>
        </tbody>
    </table>
</div>
<%--弹出框--%>
<div id="jl_win" style="display: none">
    <div class="layui-tab">
        <ul class="layui-tab-title">
            <li class="layui-this">库存调整</li>
            <li>价格调整</li>

        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <table class="layui-table">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <td colspan="100">
                            <div class="layui-form-item">
                                <label class="layui-form-label">物资信息</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="username" class="layui-input" placeholder="名称/编号/条形码">
                                </div>
                                <button class="layui-btn">
                                    <i class="layui-icon">&#xe635;</i> 查询
                                </button>
                                <a href="" class="a_old">导出记录</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>调整日期</th>
                        <th>调整类型</th>
                        <th>仓库</th>
                        <th>货位</th>
                        <th>批次</th>
                        <th>操作员</th>
                        <th>商品编号</th>
                        <th>名称</th>
                        <th>单位</th>
                        <th>原始数量</th>
                        <th>调整后数量</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>2017-10-10</th>
                        <th>调整库存-增加</th>
                        <th>第一库</th>
                        <th>0012</th>
                        <th>20181012批</th>
                        <th>管理员</th>
                        <th>00332</th>
                        <th>扶手箱</th>
                        <th>套</th>
                        <th>20</th>
                        <th>22</th>
                    </tr>
                    <tr>
                        <th>2017-10-10</th>
                        <th>调整库存-增加</th>
                        <th>第一库</th>
                        <th>0012</th>
                        <th>20181012批</th>
                        <th>管理员</th>
                        <th>00332</th>
                        <th>汽车车衣</th>
                        <th>套</th>
                        <th>20</th>
                        <th>22</th>
                    </tr>
                    <tr>
                        <th>2017-10-10</th>
                        <th>调整库存-增加</th>
                        <th>第一库</th>
                        <th>0012</th>
                        <th>20181012批</th>
                        <th>管理员</th>
                        <th>00332</th>
                        <th>玻璃防爆隔热膜</th>
                        <th>套</th>
                        <th>20</th>
                        <th>22</th>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="layui-tab-item">
                <table class="layui-table">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <td colspan="100">
                            <div class="layui-form-item">
                                <label class="layui-form-label">物资信息</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="username" class="layui-input" placeholder="名称/编号/条形码">
                                </div>
                                <button class="layui-btn">
                                    <i class="layui-icon">&#xe635;</i> 查询
                                </button>
                                <a href="" class="a_old">导出记录</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>调整日期</th>
                        <th>调整类型</th>
                        <th>仓库</th>
                        <th>货位</th>
                        <th>批次</th>
                        <th>操作员</th>
                        <th>商品编号</th>
                        <th>名称</th>
                        <th>单位</th>
                        <th>原始单价</th>
                        <th>调整后单价</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>2017-10-10</th>
                        <th>调整单价-增加</th>
                        <th>第一库</th>
                        <th>0012</th>
                        <th>20181012批</th>
                        <th>管理员</th>
                        <th>00332</th>
                        <th>扶手箱</th>
                        <th>套</th>
                        <th>20.00</th>
                        <th>22.00</th>
                    </tr>
                    <tr>
                        <th>2017-10-10</th>
                        <th>调整单价-增加</th>
                        <th>第一库</th>
                        <th>0012</th>
                        <th>20181012批</th>
                        <th>管理员</th>
                        <th>00332</th>
                        <th>汽车车衣</th>
                        <th>套</th>
                        <th>20</th>
                        <th>50.00</th>
                    </tr>
                    <tr>
                        <th>2017-10-10</th>
                        <th>调整单价-减少</th>
                        <th>第一库</th>
                        <th>0012</th>
                        <th>20181012批</th>
                        <th>管理员</th>
                        <th>00332</th>
                        <th>玻璃防爆隔热膜</th>
                        <th>套</th>
                        <th>20</th>
                        <th>22.20</th>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>

</div>
<%--弹出框--%>
<div id="yjsz_win" style="display: none">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <td colspan="100">
                <button class="layui-btn">
                    <i class="layui-icon">&#xe635;</i> 保存
                </button>
            </td>
        </tr>
        <tr>
            <th>商品编号</th>
            <th>名称</th>
            <th>单位</th>
            <th>库存下限</th>
            <th>库存上限</th>
            <th>建议采购</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>00332</th>
            <th>扶手箱</th>
            <th>套</th>
            <th><input type="text" value="15" class="layui-input" style="width: 50px"></th>
            <th><input type="text" value="500" class="layui-input" style="width: 50px"></th>
            <th><input type="text" value="500" class="layui-input" style="width: 50px"></th>
        </tr>
        <tr>
            <th>00332</th>
            <th>扶手箱1</th>
            <th>套</th>
            <th><input type="text" value="1" class="layui-input" style="width: 50px"></th>
            <th><input type="text" value="100" class="layui-input" style="width: 50px"></th>
            <th><input type="text" value="100" class="layui-input" style="width: 50px"></th>
        </tr>

        </tbody>
    </table>
</div>
<%--弹出框--%>
<div id="cplx_win" style="display: none">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <td colspan="100">
                <div class="layui-form-item">
                    <label class="layui-form-label">物资信息</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" placeholder="名称/编号/条形码">
                    </div>
                    <button class="layui-btn">
                        <i class="layui-icon">&#xe635;</i> 查询
                    </button>
                    <a href="" class="a_old">导出记录</a>
                </div>
            </td>
        </tr>
        <tr>
            <th>类型</th>
            <th>单据编号</th>
            <th>所属仓库</th>
            <th>所属货位</th>
            <th>发生日期</th>
            <th>物资编号</th>
            <th>条码</th>
            <th>物资名称</th>
            <th>规格</th>
            <th>批次</th>
            <th>数量</th>
            <th>单价</th>
            <th>金额</th>
            <th>备注</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>采购进货</th>
            <th>CJ2522352</th>
            <th>西安仓库</th>
            <th>#022522</th>
            <th>2018-01-01</th>
            <th>00026</th>
            <th>00553</th>
            <th>车用显示器</th>
            <th>大型规格</th>
            <th>2015年1月第一批</th>
            <th>200</th>
            <th>5</th>
            <th>3000</th>
            <th>测试</th>
        </tr>
        <tr>
            <th>物资领用</th>
            <th>CJ2522352</th>
            <th>西安仓库</th>
            <th>#022522</th>
            <th>2018-01-01</th>
            <th>00026</th>
            <th>00553</th>
            <th>车用显示器</th>
            <th>大型规格</th>
            <th>2015年1月第一批</th>
            <th>200</th>
            <th>5</th>
            <th>3000</th>
            <th>测试</th>
        </tr>
        <tr>
            <th>期初库存</th>
            <th>CJ2522352</th>
            <th>西安仓库</th>
            <th>#022522</th>
            <th>2018-01-01</th>
            <th>00026</th>
            <th>00553</th>
            <th>车用显示器</th>
            <th>大型规格</th>
            <th>2015年1月第一批</th>
            <th>200</th>
            <th>5</th>
            <th>3000</th>
            <th>测试</th>
        </tr>
        <tr>
            <th>采购进货</th>
            <th>CJ2522352</th>
            <th>西安仓库</th>
            <th>#022522</th>
            <th>2018-01-01</th>
            <th>00026</th>
            <th>00553</th>
            <th>车用显示器</th>
            <th>大型规格</th>
            <th>2015年1月第一批</th>
            <th>200</th>
            <th>5</th>
            <th>3000</th>
            <th>测试</th>
        </tr>
        </tbody>
    </table>
</div>
<%--弹出框--%>
<div id="jhls_win" style="display: none">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <td colspan="100">
                <div class="layui-form-item">
                    <label class="layui-form-label">物资信息</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" placeholder="名称/编号/条形码">
                    </div>
                    <button class="layui-btn">
                        <i class="layui-icon">&#xe635;</i> 查询
                    </button>
                    <a href="" class="a_old">导出记录</a>
                </div>
            </td>
        </tr>
        <tr>
            <th>类型</th>
            <th>单据编号</th>
            <th>所属仓库</th>
            <th>所属货位</th>
            <th>单据日期</th>
            <th>物资编号</th>
            <th>物资名称</th>
            <th>批次</th>
            <th>数量</th>
            <th>单价</th>
            <th>金额</th>
            <th>备注</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>采购进货</th>
            <th>CJ2522352</th>
            <th>西安仓库</th>
            <th>#022522</th>
            <th>2018-01-01</th>
            <th>00026</th>
            <th>车用显示器</th>
            <th>2015年1月第一批</th>
            <th>200</th>
            <th>5</th>
            <th>3000</th>
            <th>测试</th>
        </tr>
        <tr>
            <th>采购进货</th>
            <th>CJ2522352</th>
            <th>西安仓库</th>
            <th>#022522</th>
            <th>2018-01-01</th>
            <th>00026</th>
            <th>车用显示器</th>
            <th>2015年1月第一批</th>
            <th>200</th>
            <th>5</th>
            <th>3000</th>
            <th>测试</th>
        </tr>
        <tr>
            <th>采购进货</th>
            <th>CJ2522352</th>
            <th>西安仓库</th>
            <th>#022522</th>
            <th>2018-01-01</th>
            <th>00026</th>
            <th>车用显示器</th>
            <th>2015年1月第一批</th>
            <th>200</th>
            <th>5</th>
            <th>3000</th>
            <th>测试</th>
        </tr>

        </tbody>
    </table>
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
            {field: 'ck', title: '仓库', sort: true, width: '180'}
            , {field: 'hw', title: '货位号', sort: true, width: '100'}
            , {field: 'pc', title: '批次', sort: true, width: '120'}
            , {field: 'lb', title: '类别', sort: true, width: '100',templet:function (d) {
                            return "安全配件";
                        }}
            , {field: 'bh', title: '编号', sort: true, width: '100'}
            , {
                field: 'name', title: '物资名称', sort: true, width: '200', templet: function (d) {
                    return "刹车片";
                }
            }
            , {
                field: 'name', title: '适用车型', sort: true, width: '200', templet: function (d) {
                    return "长安";
                }
            }
            , {field: 'pym', title: '拼音码', sort: true, width: '150'}
            , {field: 'txm', title: '条形码', sort: true, width: '100'}
            , {field: 'dw', title: '单位', sort: true, width: '100',}
            , {field: 'guig', title: '规格', sort: true, width: '100',}
            , {field: 'color', title: '颜色', sort: true, width: '100'}
            , {field: 'pinpai', title: '品牌', sort: true, width: '100'}
            , {field: 'kcsl', title: '库存数量', sort: true, width: '100', templet: "#kcsl"}
            , {field: 'cgsl', title: '采购在途', sort: true, width: '100'}
            , {field: 'ddyj', title: '订单预占', sort: true, width: '100'}
            , {field: 'danjia', title: '库存单价', sort: true, width: '100'}
            , {field: 'jine', title: '金额 ', sort: true, width: '100'}
            , {field: 'weal2th1', title: '备注 ', sort: true, width: '100'}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
        , page: true
    });
    var fun = {
        tzkc: function () {
            common.openTop("调整库存", "tz_win", ['1000px', '700px'])
        }, tzdj: function () {
            common.openTop("调整单价", "dj_win", ['1000px', '700px'])
        }, tzjl: function () {
            common.open("调整记录", "jl_win", ['80%', '700px'])
        }, yjsz: function () {
            common.openTop("库存预警设置", "yjsz_win", ['800px', '700px'])
        }, cplx: function () {
            common.open("物资流向", "cplx_win", ['100%', '700px'])
        }, jhls: function () {
            common.open("进货历史", "jhls_win", ['100%', '700px'])
        }
    }

    layui.tree({
        elem: '#demo'
        , skin: 'shihuang'
        , nodes: [{ //节点数据
            name: '全部物资',
            spread: true
            , children: [{
                name: '车镜',
                spread: false,
                children: [{
                    name: '后视镜',
                    spread: true
                }, {
                    name: '遮阳板',
                    spread: true
                }]
            }, {
                name: '车门&车窗',
                spread: true,
                children: [{
                    name: '玻璃升降器',
                    spread: true
                }, {
                    name: '车窗',
                    spread: true
                }, {
                    name: '车门',
                    spread: true
                }]
            }, {
                name: '车内饰&外饰件',
                spread: true,
                children: [{
                    name: '包围',
                    spread: true
                }, {
                    name: '车顶架',
                    spread: true
                }, {
                    name: '车用窗帘',
                    spread: true
                }, {
                    name: '车罩',
                    spread: true
                }, {
                    name: '导流板',
                    spread: true
                }, {
                    name: '地胶',
                    spread: true
                }, {
                    name: '汽车香水',
                    spread: true
                }, {
                    name: '行李架',
                    spread: true
                }]
            }, {
                name: '车身&车顶',
                spread: true,
                children: [{
                    name: '保险杠',
                    spread: true
                }, {
                    name: '车标',
                    spread: true
                }, {
                    name: '挡泥板',
                    spread: true
                }, {
                    name: '顶盖&内饰板',
                    spread: true
                }, {
                    name: '驾驶室',
                    spread: true
                }, {
                    name: '天窗',
                    spread: true
                }, {
                    name: '叶子板',
                    spread: true
                }]
            }, {
                name: '电子&电器',
                spread: true,
                children: [{
                    name: '车载空气净化器',
                    spread: true
                }, {
                    name: '车载蓝牙',
                    spread: true
                }]
            }, {
                name: '电子防盗系统',
                spread: true,
                children: [{
                    name: '车载摄像头',
                    spread: true
                }, {
                    name: '倒车雷达',
                    spread: true
                }, {
                    name: '防盗器及配件',
                    spread: true
                }, {
                    name: '跟踪器',
                    spread: true
                }]
            }, {
                name: '汽车防护',
                spread: true,
                children: [{
                    name: '玻璃防爆隔热膜',
                    spread: true
                }, {
                    name: '汽车密封胶条',
                    spread: true
                }]
            }, {
                name: '汽车影音',
                spread: true,
                children: [{
                    name: '车用显示器',
                    spread: true
                }, {
                    name: '车载CD机',
                    spread: true
                }]
            }, {
                name: '随车工具',
                spread: true,
                children: [{
                    name: '千斤顶',
                    spread: true
                }, {
                    name: '三角警示牌',
                    spread: true
                }]
            }, {
                name: '座椅&安全带',
                spread: true,
                children: [{
                    name: '安全带',
                    spread: true
                }, {
                    name: '泡沫塑料',
                    spread: true
                }, {
                    name: '汽车头枕 ',
                    spread: true
                }, {
                    name: '汽车座椅',
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