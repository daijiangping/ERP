<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>jQadmin后台模板</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <%-- load css --%>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/font/iconfont.css?v=1.0.1" media="all">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/js/layui/css/layui.css?v=2.2.2" media="all">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css?v2.0.1-simple" media="all">
    <style>
        .red {
            font-size: 16px;

            color: #ed5331;
        }
    </style>
</head>
<body>
<div class="layui-fluid larry-wrapper">
    <div class="layui-row layui-col-space30">
        <div class="layui-col-xs6 layui-col-sm4 layui-col-md2">
            <section class="panel">
                <div class="symbol bgcolor-blue"><i class="iconfont">&#xe672;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="用户总量"><i
                            class="iconfont " data-icon='&#xe672;'></i>
                        <h1>10</h1>
                    </a>

                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="用户总量"> <i
                            class="iconfont " data-icon='&#xe672;'></i><span>库存预警</span></a>

                </div>
            </section>
        </div>
        <div class="layui-col-xs6 layui-col-sm4 layui-col-md2">
            <section class="panel">
                <div class="symbol bgcolor-commred"><i class="iconfont">&#xe674;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日注册"> <i
                            class="iconfont " data-icon='&#xe674;'></i>
                        <h1>10</h1>
                    </a>

                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日注册"> <i
                            class="iconfont " data-icon='&#xe674;'></i><span>待处理订单</span></a>

                </div>
            </section>
        </div>

        <div class="layui-col-xs6 layui-col-sm4 layui-col-md2">
            <section class="panel">
                <div class="symbol bgcolor-dark-green"><i class="iconfont">&#xe6bc;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="文章总数"> <i
                            class="iconfont " data-icon='&#xe6bc;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="文章总数"> <i
                            class="iconfont " data-icon='&#xe6bc;'></i><span>年审到期</span></a>
                </div>
            </section>
        </div>

        <div class="layui-col-xs6 layui-col-sm4 layui-col-md2">
            <section class="panel">
                <div class="symbol bgcolor-yellow-green"><i class="iconfont">&#xe649;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日新增"> <i
                            class="iconfont " data-icon='&#xe649;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日新增"> <i
                            class="iconfont " data-icon='&#xe649;'></i><span>保养到期</span></a>
                </div>
            </section>
        </div>

        <div class="layui-col-xs6 layui-col-sm4 layui-col-md2">
            <section class="panel">
                <div class="symbol bgcolor-orange"><i class="iconfont">&#xe638;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="评论总数"> <i
                            class="iconfont " data-icon='&#xe638;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="评论总数"> <i
                            class="iconfont " data-icon='&#xe638;'></i><span>我的待办</span></a>
                </div>
            </section>
        </div>

        <div class="layui-col-xs6 layui-col-sm4 layui-col-md2">
            <section class="panel">
                <div class="symbol bgcolor-yellow"><i class="iconfont">&#xe669;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日评论"> <i
                            class="iconfont " data-icon='&#xe669;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日评论"> <i
                            class="iconfont " data-icon='&#xe669;'></i><span>我的消息</span></a>
                </div>
            </section>
        </div>

    </div>

    <div class="layui-row layui-col-space10" style="width: 100%">
        <div class="layui-col-lg6 layui-col-md12" style="width: 100%">
            <blockquote class="layui-elem-quote title">待办任务</blockquote>
            <table class="layui-table magt0">
                <colgroup>
                    <col width="150">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <td>出库模块</td>
                    <td class="version">待审核订单 <span class="red">2</span> 笔，待审核退库订单<span class="red"> 4 </span>笔</td>
                </tr>
                <tr>
                    <td>入库管理</td>
                    <td class="author">
                        待审核采购订单<span class="red">21</span>笔，
                        待审核采购入库<span class="red">45</span>笔，
                        待审核采购退货<span class="red">40</span>笔
                    </td>
                </tr>
                <tr>
                    <td>库存管理</td>
                    <td class="homePage">
                        待审核调拨<span class="red">21</span>笔，
                        待审核报损<span class="red">45</span>笔，
                        待审核报溢<span class="red">40</span>笔，
                        待审核盘点<span class="red">40</span>笔，
                        待审核拆分<span class="red">40</span>笔，
                        待审核组装<span class="red">40</span>笔
                    </td>
                </tr>
                <tr>
                    <td>维修管理</td>
                    <td class="server"> 本月维修<span class="red">12</span></td>
                </tr>
                <tr>
                    <td>保养管理</td>
                    <td class="dataBase"> 一级保养到期<span class="red">5</span>，
                        二级保养到期<span class="red">7</span>，
                        三级保养到期<span class="red">6</span>，
                        报废提醒<span class="red">1</span>
                    </td>
                </tr>
                <tr>
                    <td>我的未读消息</td>
                    <td class="maxUpload"><span class="red">1</span>条</td>
                </tr>
                <tr>
                    <td>当前用户权限</td>
                    <td class="userRights">管理员</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
    <div class="layui-row layui-col-space10" style="width: 100%">
        <div class="layui-col-lg6 layui-col-md12" style="width: 100%">
            <blockquote class="layui-elem-quote title">系统公告</blockquote>
            <table class="layui-table magt0">
                <colgroup>
                    <col width="150">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <td>包头智能公交ERP震撼上线!</td>
                </tr>
                <tr>
                    <td>包头智能公交ERP震撼上线!</td>
                </tr>
                <tr>
                    <td>2015年保养计划已下达!</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
    <div class="layui-row layui-col-space10" style="width: 100%">
        <div class="layui-col-lg6 layui-col-md12" style="width: 100%">
            <blockquote class="layui-elem-quote title">使用帮助</blockquote>
            <table class="layui-table magt0">
                <colgroup>
                    <col width="150">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <td style="color: #01AAED">操作手册</td>
                </tr>

                </tbody>
            </table>

        </div>
    </div>
</body>
<%--<script type="text/javascript" src="js/layui/layui.js"></script>--%>
<%--<script>
    layui.config({
        base: '${contextPath}/resources/js/',
    }).extend({
        elem: 'jqmodules/elem',
        tabmenu: 'jqmodules/tabmenu',
        jqmenu: 'jqmodules/jqmenu',
        ajax: 'jqmodules/ajax',
        dtable: 'jqmodules/dtable',
        jqdate: 'jqmodules/jqdate',
        modal: 'jqmodules/modal',
        tags: 'jqmodules/tags',
        jqform: 'jqmodules/jqform',
        echarts: 'lib/echarts',
        webuploader: 'lib/webuploader'
    })
</script>
<script>
    layui.use(['main', 'echart']);
</script>--%>

</html>