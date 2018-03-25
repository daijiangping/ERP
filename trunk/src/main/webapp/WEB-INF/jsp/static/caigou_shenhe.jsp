<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
    <style>

        input[type=text] {

        }
    </style>
</head>
<body>
<table class="layui-table">
    <thead>
    <tr style="color: black">
        <th colspan="210">
            仓库: <select>
            <option value="">城南第一库</option>
            <option value="">轮胎专用库</option>
            <option value="">南京第三库</option>
        </select>
            供应商名称: <input type="text" placeholder="供应商">
            开始日期: <input type="text" placeholder="yyyy-mm-dd">
            结束日期: <input type="text" placeholder="yyyy-mm-dd">
            <button class="layui-btn"> 查询订单</button>
        </th>
    </tr>
    <tr>
        <th>单据编号</th>
        <th>进货日期</th>
        <th>付款期限</th>
        <th>所属仓库</th>
        <th>供应商</th>
        <th>自定义单号</th>
        <th>付款银行</th>
        <th>应付金额</th>
        <th>预付定金</th>
        <th>预付款单号</th>
        <th>本单付款</th>
        <th>优惠</th>
        <th>最终欠款</th>
        <th>运费</th>
        <th>杂费</th>
        <th>制单</th>
        <th>经手人</th>
        <th>审核</th>
        <th>状态</th>
        <th>结款状态</th>
        <th>备注</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>GGD98451230</th>
        <th>20171212</th>
        <th>20185522</th>
        <th>公交集团第一仓库</th>
        <th>轮胎供应商</th>
        <th>89465213</th>
        <th>支付宝</th>
        <th>500.00</th>
        <th>200.00</th>
        <th>456213</th>
        <th>52.00</th>
        <th>200.00</th>
        <th>5000</th>
        <th>20.00</th>
        <th>200</th>
        <th>管理员</th>
        <th>代江平</th>
        <th></th>
        <th>未审</th>
        <th>已结完款</th>
        <th>--</th>
    </tr>
    <tr>
        <th>GGD98451230</th>
        <th>20171212</th>
        <th>20185522</th>
        <th>公交集团第一仓库</th>
        <th>轮胎供应商</th>
        <th>89465213</th>
        <th>支付宝</th>
        <th>500.00</th>
        <th>200.00</th>
        <th>456213</th>
        <th>52.00</th>
        <th>200.00</th>
        <th>5000</th>
        <th>20.00</th>
        <th>200</th>
        <th>管理员</th>
        <th>代江平</th>
        <th></th>
        <th>未审</th>
        <th>已结完款</th>
        <th>--</th>
    </tr>
    <tr>
        <th>GGD98451230</th>
        <th>20171212</th>
        <th>20185522</th>
        <th>公交集团第一仓库</th>
        <th>轮胎供应商</th>
        <th>89465213</th>
        <th>支付宝</th>
        <th>500.00</th>
        <th>200.00</th>
        <th>456213</th>
        <th>52.00</th>
        <th>200.00</th>
        <th>5000</th>
        <th>20.00</th>
        <th>200</th>
        <th>管理员</th>
        <th>代江平</th>
        <th></th>
        <th>未审</th>
        <th>已结完款</th>
        <th>--</th>
    </tr>
    <tr>
        <th>GGD98451230</th>
        <th>20171212</th>
        <th>20185522</th>
        <th>公交集团第一仓库</th>
        <th>轮胎供应商</th>
        <th>89465213</th>
        <th>支付宝</th>
        <th>500.00</th>
        <th>200.00</th>
        <th>456213</th>
        <th>52.00</th>
        <th>200.00</th>
        <th>5000</th>
        <th>20.00</th>
        <th>200</th>
        <th>管理员</th>
        <th>代江平</th>
        <th></th>
        <th>未审</th>
        <th>已结完款</th>
        <th>--</th>
    </tr>
    <tr>
        <th>GGD98451230</th>
        <th>20171212</th>
        <th>20185522</th>
        <th>公交集团第一仓库</th>
        <th>轮胎供应商</th>
        <th>89465213</th>
        <th>支付宝</th>
        <th>500.00</th>
        <th>200.00</th>
        <th>456213</th>
        <th>52.00</th>
        <th>200.00</th>
        <th>5000</th>
        <th>20.00</th>
        <th>200</th>
        <th>管理员</th>
        <th>代江平</th>
        <th></th>
        <th>未审</th>
        <th>已结完款</th>
        <th>--</th>
    </tr>
    <tr>
        <td colspan="200" align="right">
            合计:500.00
        </td>
    </tr>
    </tbody>
</table>

<table class="layui-table" lay-size="sm">
    <thead>
    <tr>
        <th colspan="100" style="text-align: left;font-weight: bold">
            <div class="layui-btn-group">
                <button class="layui-btn layui-btn-sm" onclick="fun.shenhe()">
                    <i class="layui-icon">&#xe654;</i>审核
                </button>
                <button class="layui-btn layui-btn-sm" onclick="location.reload()">
                    <i class="layui-icon">&#x1002;</i>刷新
                </button>
            </div>
            <span class="layui-badge layui-bg-blue">交总库已审</span>
            <span class="layui-badge layui-bg-blue">物资中心总计划已审</span>
            <span class="layui-badge">物资中心负责人待审</span>
            <span style="float: right">单据编号:YJHRTGBSXZ</span>
        </th>
    </tr>
    <tr>
        <th>产品编号</th>
        <th>名称</th>
        <th>单位</th>
        <th>规格</th>
        <th>颜色</th>
        <th>品牌</th>
        <th>批次</th>
        <th>数量</th>
        <th>单价</th>
        <th>金额</th>
        <th>订单编号</th>
        <th>备注</th>
        <th>操作</th>
    </tr>
    </thead>
    <tr>
        <th>0002</th>
        <th>火车车灯</th>
        <th>GE</th>
        <th>AS55W</th>
        <th>红色</th>
        <th>BBA</th>
        <th>2017-10-12第一批</th>
        <th><input type="text" value="200.00"></th>
        <th><input type="text" value="10"></th>
        <th><input type="text" value="2000.00"></th>
        <th></th>
        <th></th>
        <th><a class="a_old"><i class="layui-icon">&#x1006;</i> 删除</a></th>
    </tr>
    <tr>
        <th>0002</th>
        <th>火车车灯</th>
        <th>GE</th>
        <th>AS55W</th>
        <th>红色</th>
        <th>BBA</th>
        <th>2017-10-12第一批</th>
        <th><input type="text" value="200.00"></th>
        <th><input type="text" value="10"></th>
        <th><input type="text" value="2000.00"></th>
        <th></th>
        <th></th>
        <th><a class="a_old"><i class="layui-icon">&#x1006;</i> 删除</a></th>
    </tr>
    <tr>
        <th>0002</th>
        <th>火车车灯</th>
        <th>GE</th>
        <th>AS55W</th>
        <th>红色</th>
        <th>BBA</th>
        <th>2017-10-12第一批</th>
        <th><input type="text" value="200.00"></th>
        <th><input type="text" value="10"></th>
        <th><input type="text" value="2000.00"></th>
        <th></th>
        <th></th>
        <th><a class="a_old"><i class="layui-icon">&#x1006;</i> 删除</a></th>
    </tr>
    <tr>
        <th>0002</th>
        <th>火车车灯</th>
        <th>GE</th>
        <th>AS55W</th>
        <th>红色</th>
        <th>BBA</th>
        <th>2017-10-12第一批</th>
        <th><input type="text" value="200.00"></th>
        <th><input type="text" value="10"></th>
        <th><input type="text" value="2000.00"></th>
        <th></th>
        <th></th>
        <th><a class="a_old"><i class="layui-icon">&#x1006;</i> 删除</a></th>
    </tr>
    <tr>
        <th>0002</th>
        <th>火车车灯</th>
        <th>GE</th>
        <th>AS55W</th>
        <th>红色</th>
        <th>BBA</th>
        <th>2017-10-12第一批</th>
        <th><input type="text" value="200.00"></th>
        <th><input type="text" value="10"></th>
        <th><input type="text" value="2000.00"></th>
        <th></th>
        <th></th>
        <th><a class="a_old"><i class="layui-icon">&#x1006;</i> 删除</a></th>
    </tr>
    <tr>
        <th>0002</th>
        <th>火车车灯</th>
        <th>GE</th>
        <th>AS55W</th>
        <th>红色</th>
        <th>BBA</th>
        <th>2017-10-12第一批</th>
        <th><input type="text" value="200.00"></th>
        <th><input type="text" value="10"></th>
        <th><input type="text" value="2000.00"></th>
        <th></th>
        <th></th>
        <th><a class="a_old"><i class="layui-icon">&#x1006;</i> 删除</a></th>
    </tr>
    <tr>
        <th>0002</th>
        <th>火车车灯</th>
        <th>GE</th>
        <th>AS55W</th>
        <th>红色</th>
        <th>BBA</th>
        <th>2017-10-12第一批</th>
        <th><input type="text" value="200.00"></th>
        <th><input type="text" value="10"></th>
        <th><input type="text" value="2000.00"></th>
        <th></th>
        <th></th>
        <th><a class="a_old"><i class="layui-icon">&#x1006;</i> 删除</a></th>
    </tr>

</table>
</body>
<div id="sh_win" style="display: none">
    <div class="layui-form layui-form-pane">
        <table class="layui-table" lay-size="sm" lay-skin="nob">
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">审核</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">通过</option>
                                <option value="2">不通过</option>
                                <option value="3">驳回</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">审核意见</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <button class="layui-btn">审核</button>
                    <button class="layui-btn">关闭</button>
                </td>
            </tr>
        </table>
    </div>
</div>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    var fun = {
        shenhe: function () {
            common.open("审核", "sh_win", ['400px', '400px']);

        }
    }
</script>