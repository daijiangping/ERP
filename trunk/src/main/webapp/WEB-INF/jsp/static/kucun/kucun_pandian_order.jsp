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
<div class="order">


    <fieldset class="layui-elem-field">
        <legend style="color: #FF7F00">库存盘点单</legend>
        <div class="layui-field-box">
            <%--top--%>
            <div class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">盘点日期:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="2018-10-12">
                    </div>

                    <label class="layui-form-label">部门:</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">研发部</option>
                            <option value="2">人事部</option>
                            <option value="3">生产中心</option>
                        </select>
                    </div>

                    <label class="layui-form-label" style="width: 200px">单据编号: JH986523221 <i class="layui-icon">
                        &#xe642;</i></label>
                    <label class="layui-form-label"><span class="layui-badge">未审核</span></label>
                </div>

                <div class="layui-form-item">


                    <label class="layui-form-label">经手人:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="代江平">
                    </div>

                    <label class="layui-form-label">联系电话:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="029-89456230">
                    </div>

                    <label class="layui-form-label">联系手机:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="18825235471">
                    </div>
                    <label class="layui-form-label">制单人:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="张晓明">
                    </div>
                    <label class="layui-form-label" style="width: 280px;color: red">盘点步骤:1.录入盘点数&nbsp;2.审核&nbsp;3.调整库存</label>
                </div>


            </div>
            <hr class="layui-bg-orange">
            <%--table--%>
            <div class="layui-form layui-form-pane">
                <div class="layui-form-item">

                    <label class="layui-form-label" style="width: 250px">
                       <img
                            src="${pageContext.request.contextPath}/resources/icon/cp.png" height="25">&nbsp;选择物资
                    </label>
                    <div class="layui-input-inline">

                        <input type="text" name="username" lay-verify="required" placeholder="物资编号/名称/条形码"
                               autocomplete="off" class="layui-input">

                    </div>
                    <label class="layui-form-label">盘点数量</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" lay-verify="required" value="1" class="layui-input">
                    </div>
                    <label class="layui-form-label">盘点仓库</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">西安第一仓库</option>
                            <option value="2">西安第二仓库</option>
                        </select>
                    </div>
                    <label class="layui-form-label">盘点货位</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">002</option>
                            <option value="2">003</option>
                            <option value="2">004</option>
                        </select>
                    </div>
                    <label class="layui-form-label">盘点批次</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">201701</option>
                            <option value="2">201702</option>
                            <option value="2">201703</option>
                        </select>
                    </div>
                    <button class="layui-btn" style="background: #393D49">添加</button>

                </div>


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
            <button class="layui-btn  layui-btn-normal" onclick="fun.tz()">
                <i class="layui-icon">&#xe614;</i> 调整库存
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
        , height: "full-250"
        , url: '${pageContext.request.contextPath}/data/AllProductList' //数据接口
        , cols: [[ //表头
            {field: 'no1', title: '物资编号', sort: true, edit: true,templet:function (d) {
                            return "001132";
                        }}
            , {field: 'name1', title: '物资名称', sort: true, edit: true,templet:function (d) {
                            return "蓄电池 ";
                        }}
            , {field: 'dw1', title: '单位', sort: true, edit: true,}
            , {field: 'guig1', title: '盘点仓库', sort: true, edit: true,}
            , {field: 'color1', title: '盘点货位', sort: true, edit: true}
            , {field: 'pinpai1', title: '盘点批次', sort: true, edit: true}
            , {field: 'sl1', title: '账存数量', sort: true, edit: true,templet:function (d) {
                            return "100";
                        }}
            , {field: 'sl1', title: '盘点数量', sort: true, edit: true,templet:function (d) {
                            return "110";
                        }}
            , {field: 'sl1', title: '差异', sort: true, edit: true,templet:function (d) {
                            return "+10";
                        }}
            , {field: 'danjia1', title: '单价', sort: true, edit: true}
            , {field: 'jine1', title: '金额 ', sort: true, edit: true}
            , {field: 'weal2th11', title: '备注 ', sort: true, edit: true}
            , {field: 'weal2th', title: '操作', templet: "#menu1"}
        ]]
    });

    var fun = {
        sh: function () {
            common.open("审核", "sh_win", ['330px', '400px']);
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