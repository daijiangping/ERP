<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>采购申请</title>
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
        <legend style="color: #FF7F00">采购进货单(入库单)</legend>
        <div class="layui-field-box">
            <%--top--%>
            <div class="layui-form">
                <div class="layui-form-item">

                    <label class="layui-form-label">供应商:</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">北京供应商</option>
                            <option value="2">华为供应商</option>
                            <option value="3">其他供应商</option>
                        </select>
                    </div>


                    <label class="layui-form-label">入库日期:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="2018-10-12">
                    </div>

                    <label class="layui-form-label">付款期限:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="2018-12-01">
                    </div>


                    <label class="layui-form-label" style="width: 200px">单据编号: JH986523221 <i class="layui-icon">
                        &#xe642;</i></label>

                    <label class="layui-form-label"><span class="layui-badge">未审核</span></label>
                </div>

                <div class="layui-form-item">

                    <label class="layui-form-label">部门:</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">采购部</option>
                            <option value="2">研发部</option>
                            <option value="3">人事部</option>
                        </select>
                    </div>

                    <label class="layui-form-label">联系人:</label>
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


                </div>

                <div class="layui-form-item">

                    <label class="layui-form-label">经手人:</label>
                    <div class="layui-input-inline">
                        漾甜心 <img
                            src="${pageContext.request.contextPath}/resources/icon/emp.png" height="30">
                    </div>

                    <label class="layui-form-label">经手人手机:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="17868802602">
                    </div>

                    <label class="layui-form-label">付款账户:</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">现金</option>
                            <option value="2">支付宝</option>
                            <option value="3">微信</option>
                        </select>
                    </div>

                    <label class="layui-form-label">交易类型:</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">现结</option>
                            <option value="2">欠款</option>
                            <option value="3">当月结</option>
                            <option value="4">次月结</option>
                        </select>
                    </div>
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

                    <label class="layui-form-label"><span style="color: red">入库</span>数量</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" lay-verify="required" value="1" class="layui-input">
                    </div>

                    <label class="layui-form-label">入库仓库</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">1号库</option>
                            <option value="2">2号库</option>
                            <option value="3">3号库</option>
                        </select>
                    </div>
                    <label class="layui-form-label">选择货位</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">#001</option>
                            <option value="2">#002</option>
                            <option value="3">#003</option>
                        </select>
                    </div>

                    <label class="layui-form-label">选择批次</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">2018上半年</option>
                            <option value="2">2018下半年</option>
                            <option value="3">2019上</option>
                        </select>
                    </div>
                    <button class="layui-btn" style="background: #393D49">添加</button>
                    <button class="layui-btn" style="background: #393D49" onclick="fun.orderImport()">从订单导入</button>
                </div>
            </div>
            <table id="demo"></table>
            <div class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">应付金额:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="5000.00">
                    </div>

                    <label class="layui-form-label">预付金额:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="522.00">
                    </div>

                    <label class="layui-form-label">运费:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="50.00">
                    </div>

                    <label class="layui-form-label">杂费:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="0.00">
                    </div>

                    <label class="layui-form-label">优惠:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" class="layui-input" value="10.00">
                    </div>


                    <label class="layui-form-label" style="width: 200px">制单: 管理员<i class="layui-icon">
                        &#xe642;</i></label>
                </div>

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
        , height: 315
        , url: '${pageContext.request.contextPath}/data/productList' //数据接口
        , cols: [[ //表头
            {field: 'no', title: '物资编号', sort: true, edit: true}
            , {field: 'ck', title: '入库仓库 ', sort: true, edit: true}
            , {field: 'ckhw', title: '入库货位 ', sort: true, edit: true}
            , {field: 'name', title: '物资名称', sort: true, edit: true}
            , {field: 'sl', title: '数量', sort: true, edit: true}
            , {field: 'dw', title: '单位', sort: true, edit: true,}
            , {field: 'slf', title: '数量(辅)', sort: true, edit: true}
            , {field: 'dwf', title: '单位(辅)', sort: true, edit: true,}
            , {field: 'guig', title: '规格', sort: true, edit: true,}
            , {field: 'color', title: '颜色', sort: true, edit: true}
            , {field: 'pinpai', title: '品牌', sort: true, edit: true}
            , {field: 'danjia', title: '单价', sort: true, edit: true}
            , {field: 'jine', title: '金额 ', sort: true, edit: true}
            , {field: 'cgdno', title: '采购计划单编号'}
            , {field: 'pici', title: '批次', sort: true, edit: true}
            , {field: 'weal2th1', title: '适用车型 ', sort: true, edit: true,templet:function (d) {
                            return "丰田";
                        }}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });

    var fun = {
        sh: function () {
            common.open("审核", "sh_win", ['330px', '400px']);
        }, orderImport: function () {
            common.openHtml("选择物资", "${pageContext.request.contextPath}/page/select_order", ['100%', '100%'])
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