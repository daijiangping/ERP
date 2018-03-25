<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--win--%>
<div id="add_win" style="display: none">
    <div class="layui-form layui-form-pane">
        <table class="layui-table " lay-size="sm" lay-skin="nob">

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">供应商</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">南田修理厂</option>
                                <option value="2">西安汽车服务中心</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">付款日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="2017-02-15" class="layui-input">
                        </div>
                    </div>
                </td>
                <td colspan="100">
                    单据编号: <span class="a_old">系统自动生成 </span></label>
                </td>

            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">付款金额</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入付款金额" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">付款账户</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入付款账户" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">制单人</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="管理员" readonly class="layui-input">
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
            <label class="layui-form-label">供应商名称</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="供应商名称">
            </div>
            <label class="layui-form-label">起止时间</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="起止时间">
            </div>
            <label class="layui-form-label">结束时间</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="结束时间">
            </div>
            <label class="layui-form-label">审核</label>
            <div class="layui-input-inline">
                <select name="">
                    <option value="1">已审</option>
                    <option value="2">未审</option>
                </select>
            </div>

            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px" onclick="fun.add()">
    <button class="layui-btn">
        <i class="layui-icon">&#xe608;</i> 新增预付款单
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
        , url: '${pageContext.request.contextPath}/data/cheliangList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox'}
            , {
                field: 'djbh', title: '单据编号', templet: function (d) {
                    return "DJ002152";
                }
            }
            , {
                field: 'cx', title: '订单编号', templet: function (d) {
                    return "201750251221";
                }
            }
            , {
                field: 'xl', title: '供应商', templet: function (d) {
                    return "轮胎售卖厂";
                }
            }
            , {
                field: 'xl', title: '付款日期', templet: function (d) {
                    return "2017-02-01";
                }
            }
            , {
                field: 'xl', title: '金额', templet: function (d) {
                    return "200.00";
                }
            }
            , {
                field: 'xl', title: '余额', templet: function (d) {
                    return "50.00";
                }
            }
            , {
                field: 'xl', title: '付款账户', templet: function (d) {
                    return "622848XXXX";
                }
            }
            , {
                field: 'xl', title: '制单人', templet: function (d) {
                    return "管理员";
                }
            }
            , {
                field: 'xl', title: '经手人', templet: function (d) {
                    return "张三";
                }
            }
            , {
                field: 'xl', title: '审核', templet: function (d) {
                    return "审核中";
                }
            }
            , {field: 'xl', title: '备注',}
        ]]
    });
    var fun = {
        detail: function () {

        }, add: function () {
            common.open("新增预付款单", "add_win", ['1000px', '500px'])
        }
    }
</script>

