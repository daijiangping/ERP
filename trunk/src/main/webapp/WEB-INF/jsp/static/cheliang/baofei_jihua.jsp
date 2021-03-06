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
        <legend style="color: #4466c7">报废计划单</legend>
        <div class="layui-field-box">
            <%--top--%>
            <div class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">报废日期:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="2018-10-12">
                    </div>

                    <label class="layui-form-label" style="width: 200px">单据编号: <span class="a_old">系统自动生成 </span> <i
                            class="layui-icon">
                        &#xe642;</i></label>
                    <label class="layui-form-label"><span class="layui-badge">未审核</span></label>
                </div>

                <div class="layui-form-item">


                    <label class="layui-form-label">联系人:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="代江平">
                    </div>


                    <label class="layui-form-label">联系手机:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="18825235471">
                    </div>

                </div>


            </div>
            <hr class="layui-bg-blue">
            <%--table--%>
            <div class="layui-form layui-form-pane">


                <div class="layui-form-item">

                    <button class="layui-btn" style="background: #393D49" onclick="fun.select()">选择预报废车辆</button>
                </div>
            </div>
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
                    <i class="layui-icon">&#xe608;</i> 保存
                </button>
                <button class="layui-btn  layui-btn-normal">
                    <i class="layui-icon">&#xe605;</i> 提交审核
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
                <button class="layui-btn  layui-btn-normal" onclick="fun.sh()">
                    <i class="layui-icon">&#xe614;</i> 审核
                </button>
            </div>

        </div>

    </fieldset>
</div>
<%--审核框--%>
<div style="display:none;text-align: center;margin-left: 10px" id="sh_win">
    <div class="layUi-form layui-form-pane">
        <br>
        <div class="layui-form-item">
            <label class="layui-form-label">审核结果</label>
            <div class="layui-input-inline">
                <select>
                    <option value="1">通过</option>
                    <option value="2">驳回</option>
                    <option value="3">不通过</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item layui-form-text" style="width: 300px">
            <label class="layui-form-label">审核意见</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入审核意见" class="layui-textarea"></textarea>
            </div>
        </div>
        <button class="layui-btn"><i class="layui-icon">&#xe618;</i> 提交</button>
    </div>
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
            {field: 'no1', title: '车牌号', sort: true, edit: true}
            , {field: '1name', title: '预报废日期', sort: true, edit: true}
            , {field: 'dw1', title: '发动机号', sort: true, edit: true,}
            , {field: '1guig1', title: '车辆类型', sort: true, edit: true,}
            , {field: '1color1', title: '燃料种类', sort: true, edit: true}
            , {field: '1weal2th', title: '操作', templet: "#menu"}
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
<script type="text/html" id="batch">
    混批
    <button class="a_old">选择</button>
</script>