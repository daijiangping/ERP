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
    <div class="layui-form layui-form-pane" >
        <table class="layui-table" lay-skin="nob">
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">分类名称</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入分类名称" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">排序码</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="排序码" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">是否停用</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="否">否</option>
                                <option value="是">是</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">描述</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="描述" class="layui-input">
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
                    <button class="layui-btn  " onclick="location.reload()">
                        <i class="layui-icon">&#xe638;</i> 刷新
                    </button>
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
        , url: '${pageContext.request.contextPath}/data/AllFenLeiList' //数据接口
        , cols: [[ //表头
            {type: 'checkbox'}
            , {field: 'bh', title: '编号', sort: true,}
            , {field: 'flmc', title: '分类名称', sort: true,}
            , {field: 'sjfl', title: '上级分类', sort: true,}
            , {field: 'flms', title: '分类描述', sort: true,}
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
            common.open("新增物资分类", "add_win", ['700px', '500px']);
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