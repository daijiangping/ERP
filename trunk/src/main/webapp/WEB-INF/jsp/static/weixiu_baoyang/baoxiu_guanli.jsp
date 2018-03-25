<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--委外--%>
<div id="weiwai_win" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>

            <td align="right" class="t_t">关联报修单号:</td>
            <td>
                0295612301
            </td>
            <td align="right" class="t_t">报修类型:</td>
            <td>
                事故报修
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">车牌号:</td>
            <td>
                陕A8945
            </td>
            <td align="right" class="t_t">车辆编号:</td>
            <td>
                1235512
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">委外单号:</td>
            <td>
                CPXH_XX_001
            </td>
            <td align="right" class="t_t">报修人工号:</td>
            <td>
                0001
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">姓名:</td>
            <td>
                黄森
            </td>
            <td align="right" class="t_t">所属单位:</td>
            <td>
                公交集团总公司
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">联系电话:</td>
            <td>
                028-5623
            </td>
            <td align="right" class="t_t">报修时间:</td>
            <td>
                2017-01-11
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">检测员:</td>
            <td>
                张三
            </td>
            <td align="right" class="t_t">检测时间:</td>
            <td>
                2017-01-21
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">需要维修:</td>
            <td>
                需要
            </td>
            <td align="right" class="t_t">需要外修:</td>
            <td>
                需要
            </td>
        </tr>

        <tr>
            <td colspan="10">
                <table class="layui-table" lay-size="sm">
                    <thead>

                    <tr>
                        <td></td>
                        <td>维修项目</td>
                        <td>委外单位</td>
                        <td>操作</td>
                    </tr>
                    </thead>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px">维修发动机</td>
                        <td><input type="text" class="layui-input" value="南城维修公司"></td>

                        <td><button class="layui-btn layui-btn-sm layui-btn-danger">删除</button></td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px">维修发动机</td>
                        <td><input type="text" class="layui-input" value="南城维修公司"></td>

                        <td><button class="layui-btn layui-btn-sm layui-btn-danger">删除</button></td>
                    </tr>

                </table>
            </td>
        </tr>


        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 确认委外</button>

            </td>
        </tr>
    </table>
</div>
<%--结算--%>
<div id="jisuan_win" style="display: none" class="layui-form">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right" class="t_t">报修类型:</td>
            <td>
                事故报修
            </td>
            <td align="right" class="t_t">事故通知单号:</td>
            <td>
                0295612301
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">车牌号:</td>
            <td>
                陕A8945
            </td>
            <td align="right" class="t_t">车辆编号:</td>
            <td>
                1235512
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">厂牌型号:</td>
            <td>
                CPXH_XX_001
            </td>
            <td align="right" class="t_t">报修人工号:</td>
            <td>
                0001
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">姓名:</td>
            <td>
                黄森
            </td>
            <td align="right" class="t_t">所属单位:</td>
            <td>
                公交集团总公司
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">联系电话:</td>
            <td>
                028-5623
            </td>
            <td align="right" class="t_t">报修时间:</td>
            <td>
                2017-01-11
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">检测员:</td>
            <td>
                张三
            </td>
            <td align="right" class="t_t">检测时间:</td>
            <td>
                2017-01-21
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">需要维修:</td>
            <td>
                需要
            </td>
            <td align="right" class="t_t">需要外修:</td>
            <td>
                需要
            </td>
        </tr>

        <tr>
            <td colspan="10">
                <table class="layui-table" lay-size="sm">
                    <thead>

                    <tr>
                        <td></td>
                        <td>维修项目</td>
                        <td>维修人员</td>
                        <td>标准工时</td>
                        <td>实际工时</td>
                        <td style="width: 100px">工时单价</td>
                    </tr>
                    </thead>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px">维修发动机</td>
                        <td>代江平</td>
                        <td>12</td>
                        <td>11</td>
                        <td><input type="text" placeholder="请输入单价" class="layui-input"></td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px">维修空调</td>
                        <td>黄森</td>
                        <td>8</td>
                        <td>9</td>
                        <td><input type="text" placeholder="请输入单价" class="layui-input"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">额定工时合计:</td>
            <td>
                18
            </td>
            <td align="right" class="t_t">维修工时合计:</td>
            <td>
                20
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">工时费用:</td>
            <td>
                400.00
            </td>
            <td align="right" class="t_t">材料费用:</td>
            <td>
                4500.00
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">费用合计:</td>
            <td colspan="3" style="color: red;font-weight: bold">
                700.00
            </td>

        </tr>

        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 确认结算</button>

            </td>
        </tr>
    </table>
</div>
<%--完工检测--%>
<div id="wangongjiance_win" class="layui-form" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right" class="t_t">派工单号:</td>
            <td>
                35420
            </td>
            <td align="right" class="t_t">派工负责人:</td>
            <td>
                黄森
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">派工单位:</td>
            <td>
                维修公司
            </td>
            <td align="right" class="t_t">派工时间:</td>
            <td>
                2017-01-01
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">内检员:</td>
            <td>
                毛不易
            </td>
            <td align="right" class="t_t">内检时间:</td>
            <td>
                2017-01-01
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">外检员:</td>
            <td>
                黄大有
            </td>
            <td align="right" class="t_t">内检时间:</td>
            <td>
                2017-01-01
            </td>
        </tr>


        <tr>
            <td colspan="10">
                <table class="layui-table" lay-size="sm">
                    <thead>

                    <thead>
                    <tr>
                        <th>需要维修项目</th>
                        <th>派工员工</th>
                        <th>车间</th>
                        <th>维修班组</th>
                        <th>额定工时</th>
                        <th>实际维修工时</th>
                        <th>内检合格</th>
                        <th>内检备注</th>
                        <th>外检合格</th>
                        <th>外检备注</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>维修发动机</th>
                        <th>黄森</th>
                        <th>第一车间</th>
                        <th>机修组</th>
                        <th>5</th>
                        <th><input type="text" class="layui-input" value="5" style="width: 100px"></th>
                        <th>
                            <select name="">
                                <option value="1">合格</option>
                                <option value="2">不合格</option>
                            </select>
                        </th>
                        <th>
                            <input type="text" class="layui-input" placeholder="备注" style="width: 100px">
                        </th>
                        <th>
                            <select name="">
                                <option value="1">合格</option>
                                <option value="2">不合格</option>
                            </select>
                        </th>
                        <th>
                            <input type="text" class="layui-input" placeholder="备注" style="width: 100px">
                        </th>


                    </tr>
                    <tr>
                        <th>维修空调</th>
                        <th>代江平</th>
                        <th>第三车间</th>
                        <th>机修组</th>
                        <th>11</th>
                        <th><input type="text" class="layui-input" value="5" style="width: 100px"></th>
                        <th style="width: 50px">
                            <select name="">
                                <option value="1">合格</option>
                                <option value="2">不合格</option>
                            </select>
                        </th>
                        <th>
                            <input type="text" class="layui-input" placeholder="备注" style="width: 100px">
                        </th>
                        <th>
                            <select name="">
                                <option value="1">合格</option>
                                <option value="2">不合格</option>
                            </select>
                        </th>
                        <th>
                            <input type="text" class="layui-input" placeholder="备注" style="width: 100px">
                        </th>
                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存检测结果</button>

            </td>
        </tr>
    </table>
</div>
<%--派工登记--%>
<div id="paigong_dengji_win" class="layui-form" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right" class="t_t">派工单号:</td>
            <td>
                <input type="text" value="35420" class="layui-input">
            </td>
            <td align="right" class="t_t">派工负责人:</td>
            <td>
                <input type="text" value="黄森" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">派工单位:</td>
            <td>
                <input type="text" value="维修公司" class="layui-input">
            </td>
            <td align="right" class="t_t">派工时间:</td>
            <td>
                <input type="text" value="2017-01-01" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">内检员:</td>
            <td>
                <input type="text" value="毛不易" class="layui-input">
            </td>
            <td align="right" class="t_t">内检时间:</td>
            <td>
                <input type="text" value="2017-01-01" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">外检员:</td>
            <td>
                <input type="text" value="黄大有" class="layui-input">
            </td>
            <td align="right" class="t_t">内检时间:</td>
            <td>
                <input type="text" value="2017-01-01" class="layui-input">
            </td>
        </tr>


        <tr>
            <td colspan="10">
                <table class="layui-table" lay-size="sm">
                    <thead>

                    <thead>
                    <tr>
                        <th>需要维修项目</th>
                        <th>派工员工</th>
                        <th>车间</th>
                        <th>维修班组</th>
                        <th>额定工时</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>维修发动机</th>
                        <th><select name="">
                            <option value="1">黄森</option>
                            <option value="2">代江平</option>
                            <option value="21">马欢</option>
                        </select></th>
                        <th>第一车间</th>
                        <th>机修组</th>
                        <th>5</th>

                    </tr>
                    <tr>
                        <th>维修空调</th>
                        <th><select name="">
                            <option value="1">黄森</option>
                            <option value="2">代江平</option>
                            <option value="21">马欢</option>
                        </select></th>
                        <th>第三车间</th>
                        <th>机修组</th>
                        <th>11</th>

                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存登记</button>

            </td>
        </tr>
    </table>
</div>
<%--检测弹框--%>
<div id="baoxiu_jiance_win" class="layui-form" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right" class="t_t">报修类型:</td>
            <td>
                事故报修
            </td>
            <td align="right" class="t_t">事故通知单号:</td>
            <td>
                0295612301
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">车牌号:</td>
            <td>
                陕A8945
            </td>
            <td align="right" class="t_t">车辆编号:</td>
            <td>
                1235512
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">厂牌型号:</td>
            <td>
                CPXH_XX_001
            </td>
            <td align="right" class="t_t">报修人工号:</td>
            <td>
                0001
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">姓名:</td>
            <td>
                黄森
            </td>
            <td align="right" class="t_t">所属单位:</td>
            <td>
                公交集团总公司
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">联系电话:</td>
            <td>
                028-5623
            </td>
            <td align="right" class="t_t">报修时间:</td>
            <td>
                2017-01-11
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">检测员:</td>
            <td>
                <input type="text" value="张三" class="layui-input">
            </td>
            <td align="right" class="t_t">检测时间:</td>
            <td>
                <input type="text" value="2017-01-21" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">需要维修:</td>
            <td>
                <select name="">
                    <option value="1">需要</option>
                    <option value="2">不需要</option>
                </select>
            </td>
            <td align="right" class="t_t">需要外修:</td>
            <td>
                <select name="">
                    <option value="1">需要</option>
                    <option value="2">不需要</option>
                </select>
            </td>
        </tr>

        <tr>
            <td colspan="10">
                <table class="layui-table" lay-size="sm">
                    <thead>
                    <tr>
                        <td colspan="10">
                            <div class="layui-btn-group">
                                <button class="layui-btn"><i class="layui-icon">&#xe654;</i>新增行</button>
                                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe642;</i>删除行
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>报修实际检测项目</td>
                        <td>标准工时</td>
                        <td>保质期</td>

                    </tr>
                    </thead>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px"><select name="">
                            <option value="1">维修发动机</option>
                            <option value="2">B</option>
                        </select></td>
                        <td>2H</td>
                        <td>5天</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px"><select name="">
                            <option value="1">维修空调</option>
                            <option value="2">B</option>
                        </select></td>
                        <td>1H</td>
                        <td>48天</td>
                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 检测完毕</button>

            </td>
        </tr>
    </table>
</div>
<%--新增弹框开始--%>
<div id="add_win" class="layui-form" style="display:none">
    <table class="layui-table" lay-size="sm">
        <tr>
            <td align="right" class="t_t">报修类型:</td>
            <td>
                <select name="">
                    <option value="1">事故报修</option>
                    <option value="2">正常报修</option>
                </select>
            </td>
            <td align="right" class="t_t">事故通知单号:</td>
            <td>
                <input type="text" value="0295612301" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">车牌号:</td>
            <td>
                <input type="text" value="陕A8945" class="layui-input">
            </td>
            <td align="right" class="t_t">车辆编号:</td>
            <td>
                <input type="text" value="1235512" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">厂牌型号:</td>
            <td>
                <input type="text" value="CPXH_XX_001" class="layui-input">
            </td>
            <td align="right" class="t_t">报修人工号:</td>
            <td>
                <input type="text" value="0001" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">姓名:</td>
            <td>
                <input type="text" value="黄森" class="layui-input">
            </td>
            <td align="right" class="t_t">所属单位:</td>
            <td>
                <input type="text" value="公交集团总公司" class="layui-input">
            </td>
        </tr>
        <tr>
            <td align="right" class="t_t">联系电话:</td>
            <td>
                <input type="text" value="028-5623" class="layui-input">
            </td>
            <td align="right" class="t_t">报修时间:</td>
            <td>
                <input type="text" value="2017-01-11" class="layui-input">
            </td>
        </tr>

        <tr>
            <td colspan="10">
                <table class="layui-table" lay-size="sm">
                    <thead>
                    <tr>
                        <td colspan="10">
                            <div class="layui-btn-group">
                                <button class="layui-btn"><i class="layui-icon">&#xe654;</i>新增行</button>
                                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe642;</i>删除行
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>维修项目名称</td>
                        <td>标准工时</td>
                        <td>保质期</td>

                    </tr>
                    </thead>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px"><select name="">
                            <option value="1">维修发动机</option>
                            <option value="2">B</option>
                        </select></td>
                        <td>2H</td>
                        <td>5天</td>
                    </tr>
                    <tr>
                        <td class="layui-form">
                            <input type="checkbox">
                        </td>
                        <td width="200px"><select name="">
                            <option value="1">维修空调</option>
                            <option value="2">B</option>
                        </select></td>
                        <td>1H</td>
                        <td>48天</td>
                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td colspan="100" style="text-align: center">
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
            </td>
        </tr>
    </table>
</div>
<fieldset class="layui-elem-field">
    <legend>查询 - 数据筛选</legend>
    <div class="layui-field-box">
        <div class="layui-form layui-form-pane">
            <table class="layui-table" lay-size="sm" lay-skin="nob">
                <tr>
                    <td align="right" class="t_t">报修日期范围:</td>
                    <td align="left"><input class="layui-input" placeholder="报修日期范围"></td>
                    <td align="right" class="t_t">车牌号:</td>
                    <td align="left"><input class="layui-input" placeholder="车牌号"></td>
                    <td align="right" class="t_t">报修类型:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">正常报修</option>
                            <option value="2">事故报修</option>
                        </select>
                    </td>
                    <td align="right" class="t_t">进度状态:</td>
                    <td align="left">
                        <select name="">
                            <option value="1">报修</option>
                            <option value="2">派工</option>
                            <option value="3">委外</option>
                            <option value="4">完工</option>
                            <option value="5">结算</option>
                        </select>
                    </td>
                    <td>
                        <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询
                        </button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</fieldset>

<div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.dengji()"><i class="layui-icon">&#xe654;</i>报修登记</button>
    <button class="layui-btn " onclick="fun.baoxiu_jiance()"><i class="layui-icon">&#xe642;</i>报修检测</button>
    <button class="layui-btn " onclick="fun.paigong_dengji()"><i class="layui-icon">&#xe643;</i>派工登记</button>
    <button class="layui-btn " onclick="fun.wangong_jiance()"><i class="layui-icon">&#xe644;</i>完工检测</button>
    <button class="layui-btn " onclick="fun.queren_wangong()"><i class="layui-icon">&#xe645;</i>确认完工</button>
    <button class="layui-btn " onclick="fun.jiesuan()"><i class="layui-icon">&#xe643;</i>结算</button>
    <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe641;</i>删除</button>
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
                field: '', title: '事故通知单号', sort: true, templet: function (d) {
                    return "";
                }
            }
            , {
                field: '', title: '报修单号', sort: true, templet: function (d) {
                    return " <span class='a_old'>LT0021558627 </span>     ";
                }
            }
            , {
                field: 'cph', title: '报修类型', sort: true, templet: function (d) {
                    return "事故报修";
                }
            }, {
                field: 'cph', title: '车辆编号', sort: true, templet: function (d) {
                    return "8495123";
                }
            }, {
                field: 'cph', title: '车牌号', sort: true, templet: function (d) {
                    return "陕A55232";
                }
            }, {
                field: 'cph', title: '车辆类型', sort: true, templet: function (d) {
                    return "浙江客运";
                }
            }, {
                field: 'cph', title: '报修人工号', sort: true, templet: function (d) {
                    return "38552515114";
                }
            }, {
                field: 'cph', title: '报修人姓名', sort: true, templet: function (d) {
                    return "李思丹";
                }
            }, {
                field: 'cph', title: '状态', sort: true, templet: function (d) {
                    return "派工";
                }
            }, {fixed: 'right', align: 'center', toolbar: '#barDemo', width: 300}


        ]]
    });
    var fun = {
        add: function () {
            common.openHtml("报修详情", "${pageContext.request.contextPath}/page/baoxiu_detail", ['95%', '95%'])
        }, dengji: function () {
            common.open("报修登记", "add_win", ['1200px', '90%'])
        }, baoxiu_jiance: function () {
            common.open("报修检测", "baoxiu_jiance_win", ['1200px', '90%'])
        }, paigong_dengji: function () {
            common.open("派工登记", "paigong_dengji_win", ['1200px', '90%'])
        }, wangong_jiance: function () {
            common.open("完工检测", "wangongjiance_win", ['1300px', '90%'])
        }, queren_wangong: function () {
            layer.alert('确认成功', {icon: 1});
        }, jiesuan: function () {
            common.open("结算", "jisuan_win", ['1300px', '90%'])
        }, linyong: function () {
            common.openHtml("物资领用", "${pageContext.request.contextPath}/page/wuzhi_linyong", ['95%', '95%'])
        }, weiwai: function () {
            common.open("委外处理", "weiwai_win", ['1300px', '90%'])
        }
    }

</script>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-sm" onclick="fun.linyong()">物资领用</button>
    <button class="layui-btn layui-btn-sm" onclick="fun.add()">详情</button>
    <button class="layui-btn layui-btn-sm" onclick="fun.weiwai()">委外处理</button>
</script>