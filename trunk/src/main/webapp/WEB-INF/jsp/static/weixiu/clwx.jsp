<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>领料申请</title>
    <style>
        .order {
            margin: 10px 20px 20px 20px;
            box-shadow: 3px 0px 3px 3px #c9c9c9;
            background: white;
        }
    </style>
</head>
<body style="background: #eee">
<%--选择车辆--%>
<div id="car_win" style="display: none">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>车牌号</th>
            <th>报废时间</th>
            <th>车辆类型</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>陕A15523</td>
            <td>2016-11-29</td>
            <td>客车</td>
        </tr>
        <tr>
            <td>陕A15555</td>
            <td>2016-11-29</td>
            <td>客车</td>
        </tr>
        <tr>
            <td>陕A15555</td>
            <td>2016-11-29</td>
            <td>客车</td>
        </tr>
        </tbody>
    </table>

</div>
<div class="order">


    <fieldset class="layui-elem-field">
        <legend style="color: #4466c7">车辆维修单</legend>
        <div class="layui-field-box">
            <%--top--%>
            <div class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">维修日期:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="2018-10-12">
                    </div>

                    <label class="layui-form-label" style="width: 200px">维修单号: <span class="a_old">系统自动生成 </span> <i
                            class="layui-icon">
                        &#xe642;</i></label>

                </div>

                <div class="layui-form-item">

                    <label class="layui-form-label">车牌号:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="代江平">
                    </div>

                    <label class="layui-form-label">车型:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="18825235471">
                    </div>
                    <label class="layui-form-label">线路:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="102">
                    </div>

                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">作业类别:</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </div>

                    <label class="layui-form-label">开工时间:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="">
                    </div>
                    <label class="layui-form-label">完工时间:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="">
                    </div>
                    <label class="layui-form-label">作业人:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="">
                    </div>

                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">驾驶员:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="代江平">
                    </div>

                    <label class="layui-form-label">经手人:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="葛优">
                    </div>
                    <label class="layui-form-label">工时费:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="20">
                    </div>
                    <label class="layui-form-label">配件费:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="500">
                    </div>

                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">总金额:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="100">
                    </div>

                    <label class="layui-form-label">修理厂:</label>
                    <div class="layui-input-inline">
                        <select name="" >
                            <option value="XXXX汽车修理厂">XXXX汽车修理厂</option>
                        </select>
                    </div>

                </div>


            </div>
            <hr class="layui-bg-blue">

            <table id="demo"></table>
            <div class="layui-form">


                <div class="layui-form-item">
                    <label class="layui-form-label">备注:</label>
                    <div class="layui-input-inline">
                        <textarea class="layui-textarea" style="width: 500px" placeholder="请输入备注"></textarea>
                    </div>
                </div>
            </div>
            <hr>
            <div class="layui-form-item" style="text-align: center">
                <button class="layui-btn">
                    <i class="layui-icon">&#xe608;</i> 保存复制
                </button>

                <button class="layui-btn  layui-btn-primary">
                    <i class="layui-icon">&#xe631;</i> 保存新增
                </button>
                <button class="layui-btn layui-btn-primary">
                    <i class="layui-icon ">&#xe63c;</i> 单据查询
                </button>
                <button class="layui-btn" onclick="window.print()">
                    <i class="layui-icon ">&#xe632;</i> 单据打印
                </button>
                <button class="layui-btn layui-btn-primary">
                    <i class="layui-icon ">&#xe608;</i> 关闭
                </button>

            </div>

        </div>

    </fieldset>
</div>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    //第一个实例
    table.render({
        elem: '#demo'
        , height: "full-350"
        , url: '${pageContext.request.contextPath}/data/productList' //数据接口
        , cols: [[ //表头
            {field: '序号', title: '序号', sort: true, edit: true}
            , {
                field: '1name', title: '维修项目', sort: true, edit: true, templet: function (d) {
                    return "清洗发动机";
                }
            }
            , {field: 'dw1', title: '工时费', sort: true, edit: true,}
            , {
                field: '1guig1', title: '所需配件', sort: true, edit: true, templet: function (d) {
                    return "电喷专用高压油管";
                }
            }
            , {field: '1color1', title: '配件价格', sort: true, edit: true}
            , {field: '1weal2th', title: '单项金额', templet: "#menu"}
        ]]
    });

    var fun = {
        sh: function () {
            common.open("审核", "sh_win", ['330px', '400px']);
        }, select: function () {
            common.open("选车辆", "car_win", ['80%', '80%']);
        }
    }
</script>
<script type="text/html" id="menu">
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-primary layui-btn-sm">
            <i class="layui-icon">&#xe642;</i>
        </button>
        <button class="layui-btn layui-btn-primary layui-btn-sm">
            <i class="layui-icon">&#xe640;</i>
        </button>
    </div>
</script>
