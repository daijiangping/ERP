<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fieldset class="layui-elem-field">
    <legend>陕A55235 - 车辆档案详情</legend>
    <div class="layui-field-box"  >
        <table class="layui-table" style="color: black" lay-skin="nob">
            <tr>
                <td align="right" class="t_t">档案号:</td>
                <td align="left" class="t_blue">DW-001</td>

                <td align="right" class="t_t">车辆编号:</td>
                <td align="left" class="t_blue">894512232</td>

                <td align="right" class="t_t">车主姓名:</td>
                <td align="left" class="t_blue">代江平</td>

                <td align="right" class="t_t">车牌号:</td>
                <td align="left" class="t_blue">陕A55235</td>

                <td align="right" class="t_t">车型:</td>
                <td align="left" class="t_blue">中客普</td>

                <td align="right" class="t_t">厂牌型号:</td>
                <td align="left" class="t_blue">TDD-5523521 <button onclick="window.print()" >打印</button></td>

            </tr>
            <tr>
                <td align="right" class="t_t">座位:</td>
                <td align="left" class="t_blue">12</td>

                <td align="right" class="t_t">颜色:</td>
                <td align="left" class="t_blue">白/绿</td>

                <td align="right" class="t_t">发动机号:</td>
                <td align="left" class="t_blue">895623221</td>

                <td align="right" class="t_t">发动机型号:</td>
                <td align="left" class="t_blue">894512222</td>

                <td align="right" class="t_t">车识别码:</td>
                <td align="left" class="t_blue">00215</td>

                <td align="right" class="t_t">车架型号:</td>
                <td align="left" class="t_blue">ROBHH668OPUIO  </td>


            </tr>
            <tr>

                <td align="right" class="t_t">轮胎规格:</td>
                <td align="left" class="t_blue">650-16</td>

                <td align="right" class="t_t">所属路队:</td>
                <td align="left" class="t_blue">102</td>

                <td align="right" class="t_t">所属组织:</td>
                <td align="left" class="t_blue">公交集团公司</td>

                <td align="right" class="t_t">车辆等级:</td>
                <td align="left" class="t_blue">空调车</td>

                <td align="right" class="t_t">车辆类型:</td>
                <td align="left" class="t_blue">公务车</td>

                <td align="right" class="t_t">车长:</td>
                <td align="left" class="t_blue">5M</td>
            </tr>
            <tr>

                <td align="right" class="t_t">车宽:</td>
                <td align="left" class="t_blue">65mm</td>

                <td align="right" class="t_t">车高:</td>
                <td align="left" class="t_blue">102mm</td>

                <td align="right" class="t_t">车辆油耗:</td>
                <td align="left" class="t_blue">200L</td>

                <td align="right" class="t_t">初始里程:</td>
                <td align="left" class="t_blue">5000km</td>

                <td align="right" class="t_t">报废日期:</td>
                <td align="left" class="t_blue">2022-05-35</td>

                <td align="right" class="t_t">车辆状态:</td>
                <td align="left" class="t_blue">正常</td>
            </tr>
            <tr>

                <td align="right" class="t_t">燃料种类:</td>
                <td align="left" class="t_blue">汽油</td>

                <td align="right" class="t_t">登记日期:</td>
                <td align="left" class="t_blue">2017-02-15</td>

                <td align="right" class="t_t">入户日期:</td>
                <td align="left" class="t_blue">2017-02-15</td>

                <td align="right" class="t_t">报废日期:</td>
                <td align="left" class="t_blue">2017-02-15</td>

                <td align="right" class="t_t">年检时间:</td>
                <td align="left" class="t_blue">2012-05-35</td>

                <td align="right" class="t_t">是否车损:</td>
                <td align="left" class="t_blue">否</td>
            </tr>

        </table>
    </div>
    <div class="layui-tab layui-tab-card">
        <ul class="layui-tab-title">
            <li class="layui-this">年审记录</li>
            <li>维修记录</li>
            <li>保养记录</li>
            <li>事故记录</li>
        </ul>
        <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
                <table class="layui-table" lay-size="sm"  >

                    <thead>
                    <tr>
                        <th>年审日期</th>
                        <th>年审号</th>
                        <th>年审费用</th>
                        <th>车管所</th>
                        <th>到期日期</th>
                        <th>经手人</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>2016-11-29</td>
                        <td>DS36436JG</td>
                        <td>2000.00</td>
                        <td>陕西车管所</td>
                        <td>2016-11-29</td>
                        <td>张XX</td>
                    </tr>
                    <tr>
                        <td>2016-11-29</td>
                        <td>DS36436JG</td>
                        <td>2000.00</td>
                        <td>陕西车管所</td>
                        <td>2016-11-29</td>
                        <td>张XX</td>
                    </tr>
                    <tr>
                        <td>2016-11-29</td>
                        <td>DS36436JG</td>
                        <td>2000.00</td>
                        <td>陕西车管所</td>
                        <td>2016-11-29</td>
                        <td>张XX</td>
                    </tr>
                    <tr>
                        <td>2016-11-29</td>
                        <td>DS36436JG</td>
                        <td>2000.00</td>
                        <td>陕西车管所</td>
                        <td>2016-11-29</td>
                        <td>张XX</td>
                    </tr>
                    <tr>
                        <td>2016-11-29</td>
                        <td>DS36436JG</td>
                        <td>2000.00</td>
                        <td>陕西车管所</td>
                        <td>2016-11-29</td>
                        <td>张XX</td>
                    </tr>
                    <tr>
                        <td>2016-11-29</td>
                        <td>DS36436JG</td>
                        <td>2000.00</td>
                        <td>陕西车管所</td>
                        <td>2016-11-29</td>
                        <td>张XX</td>
                    </tr>
                    <tr>
                        <td>2016-11-29</td>
                        <td>DS36436JG</td>
                        <td>2000.00</td>
                        <td>陕西车管所</td>
                        <td>2016-11-29</td>
                        <td>张XX</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="layui-tab-item">暂无维修记录</div>
            <div class="layui-tab-item">暂无保养记录</div>
            <div class="layui-tab-item">暂无事故记录</div>

        </div>
    </div>
</fieldset>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>