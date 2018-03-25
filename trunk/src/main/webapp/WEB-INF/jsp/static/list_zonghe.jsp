<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>

<fieldset class="layui-elem-field" >
    <legend>字段集区块 - 默认风格</legend>
    <div class="layui-field-box">
        <h1 align="center">综合信息设置</h1>

        <div class="layui-tab layui-tab-brief">
            <ul class="layui-tab-title">
                <li class="layui-this">产品单位</li>
                <li>产品规格</li>
                <li>产品颜色</li>
                <li>产品品牌</li>
                <li>批次设置</li>
                <li>+添加模块</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <table class="layui-table" lay-size="sm" style="width: 300px">
                        <thead>
                        <tr>
                            <td colspan="100">
                                <div class="layui-btn-group">
                                    <button class="layui-btn layui-btn-sm" onclick="fun.add()">
                                        <i class="layui-icon">&#xe654;</i>新增
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe642;</i>修改
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe640;</i>删除
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>名称</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>千克</td>
                        </tr>
                        <tr>
                            <td>箱</td>
                        </tr>
                        <tr>
                            <td>个</td>
                        </tr>
                        <tr>
                            <td>瓶</td>
                        </tr>
                        <tr>
                            <td>条</td>
                        </tr>
                        <tr>
                            <td>包</td>
                        </tr>
                        <tr>
                            <td>桶</td>
                        </tr>
                        <tr>
                            <td>把</td>
                        </tr>
                        <tr>
                            <td>装</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <div class="layui-tab-item">
                    <table class="layui-table" lay-size="sm" style="width: 300px">

                        <thead>
                        <tr>
                            <td colspan="100">
                                <div class="layui-btn-group">
                                    <button class="layui-btn layui-btn-sm" onclick="fun.add()">
                                        <i class="layui-icon">&#xe654;</i>新增
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe642;</i>修改
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe640;</i>删除
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>名称</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>11X1EQ140</td>
                        </tr>
                        <tr>
                            <td>12X1EQ140</td>
                        </tr>
                        <tr>
                            <td>13X1EQ140</td>
                        </tr>
                        <tr>
                            <td>14X1EQ140</td>
                        </tr>
                        <tr>
                            <td>15X1EQ140</td>
                        </tr>


                        </tbody>
                    </table>
                </div>
                <div class="layui-tab-item">
                    <table class="layui-table" lay-size="sm" style="width: 300px">

                        <thead>
                        <tr>
                            <td colspan="100">
                                <div class="layui-btn-group">
                                    <button class="layui-btn layui-btn-sm" onclick="fun.add()">
                                        <i class="layui-icon">&#xe654;</i>新增
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe642;</i>修改
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe640;</i>删除
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>名称</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>白色</td>
                        </tr>
                        <tr>
                            <td>红色</td>
                        </tr>
                        <tr>
                            <td>蓝色</td>
                        </tr>
                        <tr>
                            <td>黄色</td>
                        </tr>
                        <tr>
                            <td>绿色</td>
                        </tr>
                        <tr>
                            <td>黑色</td>
                        </tr>


                        </tbody>
                    </table>
                </div>
                <div class="layui-tab-item">
                    <table class="layui-table" lay-size="sm" style="width: 300px">

                        <thead>
                        <tr>
                            <td colspan="100">
                                <div class="layui-btn-group">
                                    <button class="layui-btn layui-btn-sm" onclick="fun.add()">
                                        <i class="layui-icon">&#xe654;</i>新增
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe642;</i>修改
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe640;</i>删除
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>名称</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>奥迪</td>
                        </tr>
                        <tr>
                            <td>宝马</td>
                        </tr>
                        <tr>
                            <td>奔驰</td>
                        </tr>
                        <tr>
                            <td>大宗</td>
                        </tr>
                        <tr>
                            <td>保时捷</td>
                        </tr>
                        <tr>
                            <td>BYD</td>
                        </tr>


                        </tbody>
                    </table>
                </div>
                <div class="layui-tab-item">
                    <table class="layui-table" lay-size="sm" style="width: 300px">

                        <thead>
                        <tr>
                            <td colspan="100">
                                <div class="layui-btn-group">
                                    <button class="layui-btn layui-btn-sm" onclick="fun.add()">
                                        <i class="layui-icon">&#xe654;</i>新增
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe642;</i>修改
                                    </button>
                                    <button class="layui-btn layui-btn-sm">
                                        <i class="layui-icon">&#xe640;</i>删除
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>名称</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>2017-2012第一批</td>
                        </tr>
                        <tr>
                            <td>混批</td>
                        </tr>
                        <tr>
                            <td>主单分批</td>
                        </tr>
                        <tr>
                            <td>总单分批</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="layui-tab-item">+添加</div>
            </div>
        </div>
    </div>
</fieldset>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>