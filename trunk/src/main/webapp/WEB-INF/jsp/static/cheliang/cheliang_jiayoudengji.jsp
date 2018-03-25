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
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">单据编号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入单据编号" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">单据日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入单据日期" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
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
                        <label class="layui-form-label">加油站</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入加油站" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">油料编号</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">93#油</option>
                                <option value="2">98#油</option>
                                <option value="3">95#油</option>
                                <option value="4">82#油</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">付款方式</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">现金加油</option>
                                <option value="2">油卡加油</option>
                                <option value="3">定点加油</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">加油日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入加油日期" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">加油量</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入加油量" value="10L" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">单价</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入单价" value="10L" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">金额</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入金额" class="layui-input">
                        </div>
                    </div>

                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">本次里程</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入本次里程" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">经手人</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入经手人" class="layui-input">
                        </div>
                    </div>
                </td>



            </tr>
            <tr>
                <td colspan="3">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">备注</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
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
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe605;</i> 新增
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe602;</i> 导出
    </button>
    <button class="layui-btn  layui-btn-danger">
        <i class="layui-icon">&#xe609;</i> 删除
    </button>
    <button class="layui-btn  layui-btn-primary">
        <i class="layui-icon">&#xe631;</i> 修改
    </button>
    <button class="layui-btn ">
        <i class="layui-icon">&#xe632;</i> 打印
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
                field: '', title: '单据编号', sort: true, templet: function (d) {
                    return "LT0021558627";
                }
            }
            , {
                field: 'cph', title: '单据日期', sort: true, templet: function (d) {
                    return "2017-02-15";
                }
            }
            , {
                field: 'cph', title: '车牌号', sort: true, templet: function (d) {
                    return "陕K552SS";
                }
            }
            , {
                field: 'cph', title: '加油站', sort: true, templet: function (d) {
                    return "杜城加气站";
                }
            }
            , {
                field: 'cph', title: '油料编号', sort: true, templet: function (d) {
                    return "93#油";
                }
            }
            , {
                field: 'cph', title: '付款方式', sort: true, templet: function (d) {
                    return "现金加油";
                }
            }
            , {
                field: 'cph', title: '加油日期', sort: true, templet: function (d) {
                    return "2018-02-12";
                }
            }
            , {
                field: 'ltxh', title: '加油量', sort: true, templet: function (d) {
                    return "200.00";
                }
            }
            , {
                field: 'chehao', title: '单价', sort: true, templet: function (d) {
                    return "500.00";
                }
            }
            , {
                field: 'ydsj', title: '金额', sort: true, templet: function (d) {
                    return "10000.00";
                }
            }
            , {
                field: 's3h', title: '本次里程', sort: true, templet: function (d) {
                    return "10km";
                }
            }
            , {
                field: 's3h', title: '经办人', sort: true, templet: function (d) {
                    return "管理员";
                }
            }, {field: 'bz1', title: '备注', sort: true,}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        add: function () {
            common.open("加油记录", "add_win", ['1000px', '600px'])
        }
    }
    fun.add();
</script>
<script type="text/html" id="menu">

</script>