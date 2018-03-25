<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="display: none" id="add_win">
    <div class="layui-form layui-form-pane">
        <table class="layui-table " lay-size="sm" lay-skin="nob">

            <tr>
                <td colspan="100">
                    <div class="layui-form-item">
                        <label class="layui-form-label">车牌号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入车牌号" class="layui-input">
                        </div>
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">年审日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入年审日期" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">年审费用</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入年审费用" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">车管所</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入车管所" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">经手人</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入经手人" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">到期日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入到期日期" class="layui-input">
                        </div>
                    </div>

                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">年审号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入年审号" class="layui-input">
                        </div>
                    </div>
                </td>


            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">备注</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入到期日期" class="layui-input">
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

<blockquote class="layui-elem-quote layui-quote-nm">
    <div class="layui-form layui-form-pane">
        <div class="layui-form-item">
            <label class="layui-form-label">车牌号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="车牌号">
            </div>
            <label class="layui-form-label">开始日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2017-01-01">
            </div>
            <label class="layui-form-label">结束日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2018-01-01">
            </div>


            <div class="layui-input-inline">
                <select>
                    <option value="1">最近30天</option>
                    <option value="4">今天</option>
                    <option value="2">本月</option>
                    <option value="3">今年</option>
                    <option value="3">全部</option>
                </select>
            </div>
            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn">
        <i class="layui-icon">&#xe605;</i> 新增
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe602;</i> 导出EXCEL
    </button>
    <button class="layui-btn  layui-btn-normal">
        <i class="layui-icon">&#xe609;</i> 删除
    </button>
    <button class="layui-btn  layui-btn-primary">
        <i class="layui-icon">&#xe631;</i> 修改
    </button>
    <button class="layui-btn ">
        <i class="layui-icon">&#xe632;</i> 轮胎报废
    </button>
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
        , url: '${pageContext.request.contextPath}/data/diaoboList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}

            , {
                field: '', title: '轮胎编号', sort: true, templet: function (d) {
                    return "LT0021558627";
                }
            }
            , {field: 'cph', title: '所属车牌', sort: true,}
            , {
                field: 'cph', title: '所在位置', sort: true, templet: function (d) {
                    return "左下";
                }
            }
            , {
                field: 'cph', title: '行驶公里', sort: true, templet: function (d) {
                    return "15000km";
                }
            }
            , {
                field: 'cph', title: '购买日期', sort: true, templet: function (d) {
                    return "2018-02-12";
                }
            }
            , {
                field: 'cph', title: '购买金额', sort: true, templet: function (d) {
                    return "500.00";
                }
            }
            , {
                field: 'cph', title: '使用日期', sort: true, templet: function (d) {
                    return "2018-02-12";
                }
            }
            , {field: 'ltxh', title: '轮胎型号', sort: true,}
            , {field: 'chehao', title: '上车车号', sort: true,}
            , {field: 'ydsj', title: '异动时间', sort: true,}
            , {
                field: 's3h', title: '现状', sort: true, templet: function (d) {
                    return "报废";
                }
            }
            , {
                field: 's3h', title: '品牌', sort: true, templet: function (d) {
                    return "德国马牌";
                }
            }
            , {
                field: 's3h', title: '规格', sort: true, templet: function (d) {
                    return "52X2s";
                }
            }
            , {
                field: 's3h', title: '花纹', sort: true, templet: function (d) {
                    return "SS";
                }
            }
            , {
                field: 's3h', title: '产地', sort: true, templet: function (d) {
                    return "北京";
                }
            }
            , {
                field: 's3h', title: '供应商', sort: true, templet: function (d) {
                    return "北京轮胎汽车城";
                }
            }
            , {field: 'bz', title: '备注', sort: true,}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        add: function () {
            common.open("新增年审", "add_win", ['1000px', '500px'])
        }
    }
</script>
<script type="text/html" id="menu">

</script>