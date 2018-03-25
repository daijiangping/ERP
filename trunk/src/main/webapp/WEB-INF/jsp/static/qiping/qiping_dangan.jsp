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
                        <label class="layui-form-label">变更车牌号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入变更车牌号" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">原自编号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="原自编号" readonly class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">新车牌号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入新车牌号" class="layui-input">
                        </div>
                    </div>
                </td>


            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">新自编号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入新自编号" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">原分组</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">1组</option>
                                <option value="2">2组</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">原线路</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">706</option>
                                <option value="2">707</option>
                                <option value="3">708</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">新线路</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">706</option>
                                <option value="2">707</option>
                                <option value="3">708</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">变更日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入变更日期" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">变更人</label>
                        <div class="layui-input-inline">
                            <input type="text" value="张三" class="layui-input">
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


<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>


                    <td align="left"><input class="layui-input" placeholder="关键字"></td>
                    <td align="right">线路:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">706|706无人空调车</option>
                            <option value="2">708|707无人空调车</option>
                            <option value="3">708|707普通空调车</option>
                        </select>
                    </td>
                    <td align="right">车辆类型:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">类型1</option>
                            <option value="2">类型2</option>
                            <option value="3">类型3</option>
                        </select>
                    </td>
                    <td align="right">车牌号:</td>
                    <td align="left"><input class="layui-input" placeholder="车牌号"></td>
                    <td align="right">车辆编号:</td>
                    <td align="left"><input class="layui-input" placeholder="车辆编号"></td>
                    <td>
                        <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询
                        </button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</fieldset>

<%--table--%>
<div class="layui-btn-group">
    <button class="layui-btn"  >
        <i class="layui-icon">&#xe605;</i> 批量导入
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe602;</i> 自定义检测提醒
    </button>
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe605;</i> 新增
    </button>
    <button class="layui-btn layui-btn-normal">
        <i class="layui-icon">&#xe631;</i> 修改
    </button>
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe634;</i> 查看
    </button>
    <button class="layui-btn  layui-btn-danger">
        <i class="layui-icon">&#xe609;</i> 删除
    </button>
    <button class="layui-btn layui-btn-normal">
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
                field: '', title: '车辆编号', sort: true, templet: function (d) {
                    return "LT0021558627";
                }
            }

            , {
                field: 'cph', title: '车牌号', sort: true, templet: function (d) {
                    return "陕K552SS";
                }
            }

            , {
                field: 'cph', title: '分组', sort: true, templet: function (d) {
                    return "运营组";
                }
            }
            , {
                field: 'cph', title: '线路', sort: true, templet: function (d) {
                    return "K201";
                }
            }
            , {
                field: 'cph', title: '气瓶类型', sort: true, templet: function (d) {
                    return "钢瓶";
                }
            }
            , {
                field: 'cph', title: '填充介质', sort: true, templet: function (d) {
                    return "天然气";
                }
            }
            , {
                field: 'cph', title: '下次检测时间', sort: true, templet: function (d) {
                    return "2017-01-02";
                }
            }   , {
                field: 'cph', title: '下次年审时间', sort: true, templet: function (d) {
                    return "2018-01-02";
                }
            } , {
                field: 'cph', title: '购入时间', sort: true, templet: function (d) {
                    return "2016-01-02";
                }
            }
            , {
                field: 'cph', title: '状态', sort: true, templet: function (d) {
                    return "";
                }
            }

            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        add: function () {
            common.openHtml("添加气瓶档案", "${pageContext.request.contextPath}/page/add_qiping", ['97%', '97%'])
        }
    }
    //  fun.add();
</script>
<script type="text/html" id="menu">

</script>