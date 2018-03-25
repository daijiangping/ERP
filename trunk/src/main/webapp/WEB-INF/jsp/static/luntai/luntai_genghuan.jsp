<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>


<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>

                    <td align="right">分组:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </td>
                    <td align="right">线路:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">706|706无人空调车</option>
                            <option value="2">708|707无人空调车</option>
                            <option value="3">708|707普通空调车</option>
                        </select>
                    </td>

                    <td align="right">车牌号:</td>
                    <td align="left"><input class="layui-input" placeholder="车牌号"></td>
                    <td align="right">更换方式:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">新胎更换</option>
                            <option value="2">旧胎倒换</option>
                        </select>
                    </td>
                    <td align="right">更换日期范围:</td>
                    <td align="left"><input class="layui-input" placeholder="2017-01-21~2018-04-19"></td>
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
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe605;</i> 轮胎更换
    </button>

    <button class="layui-btn" >
        <i class="layui-icon">&#xe601;</i> 生成出库单
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
        , url: '${pageContext.request.contextPath}/data/cheliangList1' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            , {
                field: '', title: '出库单',  width: 150, templet: function (d) {
                    return "0001";
                }
            }
            , {
                field: '', title: '车辆编号',  width: 150, templet: function (d) {
                    return "LT0021558627";
                }
            }

            , {
                field: 'cph', title: '车牌号',  width: 150, templet: function (d) {
                    return "陕K552SS";
                }
            }
            , {
                field: 'cph', title: '线路',  width: 150, templet: function (d) {
                    return "K201";
                }
            }
            , {
                field: 'cph', title: '更换方式',  width: 150, templet: function (d) {
                    return "更换新胎";
                }
            }
            , {
                field: 'cph', title: '更换日期',  width: 150, templet: function (d) {
                    return "2017-01-25";
                }
            }
            , {
                field: 'cph', title: '更换前轮胎位置',  width: 150, templet: function (d) {
                    return "左前";
                }
            }, {
                field: 'cph', title: '更换前品牌',  width: 150, templet: function (d) {
                    return "米其林";
                }
            }, {
                field: 'cph', title: '累计公里数',  width: 150, templet: function (d) {
                    return "5222km";
                }
            }, {
                field: 'cph', title: '更换后轮胎位置',  width: 150, templet: function (d) {
                    return "左前";
                }
            }, {
                field: 'cph', title: '更换后品牌',  width: 150, templet: function (d) {
                    return "德国轮胎";
                }
            }, {
                field: 'cph', title: '初始里程',  width: 150, templet: function (d) {
                    return "10km";
                }
            }, {
                field: 'cph', title: '更换处理',  width: 150, templet: function (d) {
                    return "报废";
                }
            }, {
                field: 'cph', title: '处理时间',  width: 150, templet: function (d) {
                    return "2017-02-25";
                }
            }, {
                field: 'cph', title: '处理说明',  width: 150, templet: function (d) {
                    return "已报废.";
                }
            }, {
                field: 'cph', title: '负责人',   width: 150, templet: function (d) {
                    return "张小梦";
                }
            }, {
                field: 'cph', title: '备注',  width: 150, templet: function (d) {
                    return "";
                }
            }


        ]]
    });
    var fun = {
        add: function () {
            common.openHtml("轮胎更换", "${pageContext.request.contextPath}/page/add_luntaigenghuan", ['97%', '97%'])
        }
    }
    //  fun.add();
</script>
<script type="text/html" id="menu">

</script>