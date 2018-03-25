<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
    <style>
        #left {
            float: left;
            width: 12%;

            border-spacing: inherit;
            background: #F7F7F7;
            overflow-y: auto;
            height: 100%;
        }

        #right {
            float: left;
            width: 86%;
            margin-left: 1%;
        }

    </style>
</head>
<body>
<%--弹出框--%>
<div id="add_win" style="display: none;">
    <div class="layui-form layui-form-pane">
        <table class="layui-table " lay-size="sm" lay-skin="nob">
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">物资编号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入物资编号" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">物资名称</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入物资名称" class="layui-input">
                        </div>
                    </div>
                </td>
                <td rowspan="3" align="center">
                    <div class="layui-upload">
                        <div class="layui-upload-list" style="border: 1px solid #E3E3E3;width: 150px;height: 100px">
                            <img class="layui-upload-img" id="demo1"
                                 src="${pageContext.request.contextPath}/resources/icon/luntai.jpg"
                                 style="width: 150px;height: 100px">
                            <p id="demoText"></p>
                        </div>
                        <button type="button" class="layui-btn" id="test1">上传物资图片</button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">默认供应商</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">轮胎供应商</option>
                                <option value="2">西电公交集团</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">拼音码</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入拼音码" class="layui-input">
                        </div>
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">基本单位</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">kg</option>
                                <option value="2">mm</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">辅助单位</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">kg</option>
                                <option value="2">mm</option>
                            </select>
                        </div>
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">辅助数量</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入辅助数量" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">规格</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入规格" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">条形码</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入条形码" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">品牌</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">宝马</option>
                                <option value="2">奥迪</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">类别</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">轮胎类</option>
                                <option value="2">车灯类</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">颜色</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">黑色</option>
                                <option value="2">白色</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">预设进价</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入预设进价" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">最高进价</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入最高进价" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">库存上限</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入库存上限" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">库存下限</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入库存下限" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">仓库</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">第一仓库</option>
                                <option value="2">第一仓库-2号货位</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">批次</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">1批次</option>
                                <option value="2">2批次</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">排序码</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="排序码" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">停用</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">是</option>
                                <option value="2">否</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">物资类型</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">成品</option>
                                <option value="2">材料</option>
                                <option value="3">旧件</option>
                                <option value="3">总成件</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>


            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">期初库存</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="期初库存" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">成本价</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="成本价" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">库存金额</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="库存金额" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">适用车型</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">绿色公交车</option>
                                <option value="2">黄色公交</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">默认仓库</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="#第一仓库" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">默认货架</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="#852" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="layui-form-item">
                        <label class="layui-form-label">计价方式</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">先进先出</option>
                                <option value="2">加权平均法</option>
                                <option value="3">移动平均法</option>
                            </select>
                        </div>
                    </div>
                </td>

            </tr>
            <tr>
                <td colspan="3" align="center">
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
    <div>
        <table class="layui-table" lay-skin="nob">
            <tr>

                <td align="left">

                    <div class="layui-btn-group">
                        <button class="layui-btn" onclick="fun.add()">
                            <i class="layui-icon">&#xe631;</i> 新增
                        </button>
                        <button class="layui-btn layui-btn-normal">
                            <i class="layui-icon">&#xe632;</i> 修改
                        </button>
                        <button class="layui-btn  layui-btn-danger" onclick="fun.yjsz()">
                            <i class="layui-icon">&#xe633;</i> 删除
                        </button>
                        <button class="layui-btn  " onclick="fun.cplx()">
                            <i class="layui-icon">&#xe634;</i> 导入
                        </button>
                        <button class="layui-btn  " onclick="fun.jhls()">
                            <i class="layui-icon">&#xe635;</i> 导出
                        </button>
                        <button class="layui-btn  " onclick="location.reload()">
                            <i class="layui-icon">&#xe638;</i> 刷新
                        </button>
                    </div>

                </td>
                <td>
                    <div class="layui-inline">
                        <label class="layui-form-label"> &nbsp;物资查询: </label>
                        <div class="layui-input-inline">
                            <input placeholder="请输入物资名称/编码/规格查找物资" class="layui-input" style="width: 300px">
                        </div>
                        <input type="button" class="layui-btn" value="查询">
                    </div>
                </td>
            </tr>

        </table>
        <hr>
    </div>
    <table id="table"></table>
</div>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/data.jsp"></jsp:include>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    //第一个实例
    table.render({
        elem: '#table'
        , height: '850'
        , url: '${pageContext.request.contextPath}/data/AllWzProductList' //数据接口
        , cols: [[ //表头
            {type: 'checkbox'}
            , {field: 'hw2', title: '物资编号', sort: true, width: '100'}
            , {field: 'pc3', title: '物资名称', sort: true, width: '120'}
            , {field: 'pym', title: '拼音码', sort: true, width: '100'}
            , {field: 'txm', title: '条形码', sort: true, width: '100'}
            , {field: 'jbfz', title: '基本/辅助单位', sort: true, width: '130',}
            , {field: 'guig', title: '规格', sort: true, width: '100',}
            , {field: 'color', title: '颜色', sort: true, width: '100'}
            , {field: 'pinpai', title: '品牌', sort: true, width: '100'}
            , {field: 'mrgys', title: '默认供应商', sort: true, width: '130'}
            , {
                field: 'sycx', title: '适用车型', sort: true, width: '130', templet: function (d) {
                    return "大客车";
                }
            }
            , {field: 'fenlei', title: '分类', sort: true, width: '100'}
            , {field: 'leibie', title: '类别', sort: true, width: '100'}
            , {field: 'danjia', title: '预设进价', sort: true, width: '100'}
            , {field: 'jine', title: '最高进价', sort: true, width: '100'}
            , {field: 'cgzt', title: '采购在途', sort: true, width: '100'}
            , {field: 'stop', title: '停用', sort: true, width: '100'}
            , {field: 'sx', title: '库存上限', sort: true, width: '100'}
            , {field: 'xx', title: '库存下限', sort: true, width: '100'}
            , {
                field: 'xx', title: '计价方式', sort: true, width: '100', templet: function (d) {
                    return "先进先出";
                }
            }
            , {field: 'weal23th1', title: '备注 ', sort: true, width: '100'}
        ]]
        , page: true
    });
    layui.tree({
        elem: '#demo'
        , skin: 'shihuang'
        , nodes: [{ //节点数据
            name: '全部物资分类',
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
    var fun = {
        init: function () {
            $("#data_product_list").html($("#data_product_list_tpl").html());
        }, add: function () {
            common.open("新增物资信息", "add_win", ['1000px', '95%']);
        }
    }
    fun.init();
</script>
<script>
    //普通图片上传
    var uploadInst = upload.render({
        elem: '#test1'
        , url: '/upload/'
        , before: function (obj) {
            //预读本地文件示例，不支持ie8
            obj.preview(function (index, file, result) {
                $('#demo1').attr('src', result); //图片链接（base64）
            });
        }
        , done: function (res) {
            //如果上传失败
            if (res.code > 0) {
                return layer.msg('上传失败');
            }
            //上传成功
        }
        , error: function () {
            //演示失败状态，并实现重传
            var demoText = $('#demoText');
            demoText.html('<span style="color: #FF5722;">上传失败</span> ');
            demoText.find('.demo-reload').on('click', function () {
                uploadInst.upload();
            });
        }
    });
</script>