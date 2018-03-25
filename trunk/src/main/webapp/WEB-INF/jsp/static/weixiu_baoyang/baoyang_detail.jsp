<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fieldset class="layui-elem-field">
    <legend>陕A55235 - 保养详情</legend>
    <div class="layui-field-box">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">保养信息</h2>
                <div class="layui-colla-content layui-show">
                    <table class="layui-table" style="color: black" lay-skin="nob">
                        <tr>


                            <td align="right" class="t_t">保养单号:</td>
                            <td align="left" class="t_blue">894512232</td>

                            <td align="right" class="t_t">保养类型:</td>
                            <td align="left" class="t_blue">一保</td>

                            <td align="right" class="t_t">车辆编号:</td>
                            <td align="left" class="t_blue">CAR001</td>

                            <td align="right" class="t_t">车牌号:</td>
                            <td align="left" class="t_blue">陕A55235</td>

                            <td align="right" class="t_t">线路:</td>
                            <td align="left" class="t_blue">706</td>

                            <td align="right" class="t_t">厂牌型号:</td>
                            <td align="left" class="t_blue">TDD-5523521</td>

                        </tr>
                        <tr>
                            <td align="right" class="t_t">报修人工号:</td>
                            <td align="left" class="t_blue">001</td>

                            <td align="right" class="t_t">姓名:</td>
                            <td align="left" class="t_blue">代江平</td>

                            <td align="right" class="t_t">所属单位:</td>
                            <td align="left" class="t_blue">公交集团第一分公司</td>

                            <td align="right" class="t_t">联系电话:</td>
                            <td align="left" class="t_blue">029-8456123</td>

                            <td align="right" class="t_t">保养时间:</td>
                            <td align="left" class="t_blue">2017-12-25 11:55</td>
                            <td align="right" class="t_t">保养状态:</td>
                            <td align="left" class="t_blue">已完工</td>

                        </tr>

                    </table>
                </div>
            </div>
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">派工信息</h2>
                <div class="layui-colla-content layui-show">
                    <table class="layui-table" style="color: black" lay-skin="nob">
                        <tr>
                            <td align="right" class="t_t">派工单号:</td>
                            <td align="left" class="a_old">PG001</td>

                            <td align="right" class="t_t">派工负责人:</td>
                            <td align="left" class="t_blue">黄森</td>

                            <td align="right" class="t_t">派工单位:</td>
                            <td align="left" class="t_blue">公交下属维修公司</td>

                            <td align="right" class="t_t">派工时间:</td>
                            <td align="left" class="t_blue">2017-01-25</td>

                            <td align="right" class="t_t">内检员:</td>
                            <td align="left" class="t_blue">马欢</td>

                            <td align="right" class="t_t">内检时间:</td>
                            <td align="left" class="t_blue">2017-01-25</td>

                        </tr>
                        <tr>
                            <td align="right" class="t_t">外检员:</td>
                            <td align="left" class="t_blue">毛良伟</td>

                            <td align="right" class="t_t">外检时间:</td>
                            <td align="left" class="t_blue">2017-01-25</td>

                            <td align="right" class="t_t">竣工时间:</td>
                            <td align="left" class="t_blue">2017-01-25</td>

                            <td align="right" class="t_t">额定工时合计:</td>
                            <td align="left" class="t_blue">12H</td>

                            <td align="right" class="t_t">维修工时合计:</td>
                            <td align="left" class="t_blue">52H</td>

                            <td align="right" class="t_t">工时费用:</td>
                            <td align="left" class="t_blue">5000.00</td>


                        </tr>
                        <tr>

                            <td align="right" class="t_t">材料费用:</td>
                            <td align="left" class="t_blue">56.00</td>

                            <td align="right" class="t_t">费用合计:</td>
                            <td align="left" class="t_blue" style="color: #2931ff">5056.00</td>

                            <td align="right" class="t_t">派工状态:</td>
                            <td align="left" class="t_blue" style="color: red">已派工</td>

                            <td align="right" class="t_t"></td>
                            <td align="left" class="t_blue"></td>

                            <td align="right" class="t_t"></td>
                            <td align="left" class="t_blue"></td>

                            <td align="right" class="t_t"></td>
                            <td align="left" class="t_blue"></td>
                        </tr>

                    </table>
                </div>
            </div>

        </div>

    </div>
    <div class="layui-tab layui-tab-brief">
        <ul class="layui-tab-title">
            <li class="layui-this">保养项目</li>
            <li>派工人员信息</li>
            <li>物资领用单</li>
        </ul>
        <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
                <table class="layui-table" lay-size="sm">

                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>保养项目</th>
                        <th>检验标准</th>
                        <th>标准工时</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>1</td>
                        <td>清洗发动机</td>
                        <td>清洗干净即可</td>
                        <td>1h</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>清洗空调</td>
                        <td>清洗干净即可</td>
                        <td>1h</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>更换机油</td>
                        <td>更换完成即可</td>
                        <td>1h</td>
                    </tr>

                    </tbody>
                </table>
            </div>
            <div class="layui-tab-item">
                <table class="layui-table" lay-size="sm">

                    <thead>
                    <tr>
                        <th>维修工工号</th>
                        <th>姓名</th>
                        <th>车间</th>
                        <th>维修班组</th>
                        <th>维修项目</th>
                        <th>额定工时</th>
                        <th>维修工时</th>
                        <th>内检合格</th>
                        <th>内检备注</th>
                        <th>外检合格</th>
                        <th>外检备注</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>001</th>
                        <th>代江平</th>
                        <th>第一车间</th>
                        <th>机修组</th>
                        <th>维修发动机</th>
                        <th>5</th>
                        <th>6</th>
                        <th>合格</th>
                        <th>无</th>
                        <th>不合格</th>
                        <th>无</th>
                    </tr>
                    <tr>
                        <th>002</th>
                        <th>黄森</th>
                        <th>第三车间</th>
                        <th>机修组</th>
                        <th>维修空调</th>
                        <th>11</th>
                        <th>15</th>
                        <th>合格</th>
                        <th>无</th>
                        <th>不合格</th>
                        <th>无</th>
                    </tr>

                    </tbody>
                </table>
            </div>
            <div class="layui-tab-item">
                <table class="layui-table" lay-size="sm">

                    <thead>
                    <tr>
                        <th>审批状态</th>
                        <th>单据类型</th>
                        <th>单号</th>
                        <th>关联出库单</th>
                        <th>申请人</th>
                        <th>申请日期</th>
                        <th>用途</th>
                        <th>领料总金额</th>
                        <th>司机工号</th>
                        <th>姓名</th>
                        <th>车辆编号</th>
                        <th>车牌号</th>
                        <th>制单人</th>
                        <th>制单日期</th>
                        <th>派工单号</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>未审批</th>
                        <th>维修领料单</th>
                        <th>894561203</th>
                        <th>2156153123</th>
                        <th>代江平</th>
                        <th>2017-01-12</th>
                        <th>车辆保养</th>
                        <th>500.00</th>
                        <th>00012</th>
                        <th>黄森</th>
                        <th>DW51</th>
                        <th>陕A55232</th>
                        <th>管理员</th>
                        <th>2017-02-12</th>
                        <th>561230111</th>
                    </tr>

                    </tbody>
                </table>
            </div>

        </div>
    </div>
</fieldset>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>