<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    body{
        padding: 10px!important;
    }
</style>
<!--头部搜索-->
<section class="panel panel-padding">
        <div class="layui-form">

            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input class="layui-input start-date" name="starTime" value="" placeholder="开始日">
                </div>
                <div class="layui-input-inline">
                    <input class="layui-input end-date" name="endTime" value="" placeholder="截止日">
                </div>
            </div>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input class="layui-input" name="keyword" value="" placeholder="关键字">
                </div>
            </div>
            <div class="layui-inline">
                <button lay-submit class="layui-btn" id="keyword"  onclick="reload();">查找</button>
            </div>

        </div>
</section>
<div class="table-border">
    <table id="list" lay-filter="table" style="text-align: center"></table>
</div>
<jsp:include page="/WEB-INF/jsp/common/bottom.jsp"></jsp:include>
<script>
    var tableIns = table.render({
        elem: '#list'
        , url: '${contextPath}/sysLogs/list'
        , cols: [[ //标题栏
            {checkbox: true,field: 'log_id'}
            , {field: 'user', title: '登录账号'}
            , {field: 'method_description', title: '操作内容'}
            , {field: 'request_ip', title: '操作ip'}
            , {field: 'create_time', title: '日期',templet:'#rq'}
        ]]
        , size: 'sm'
        , even: 'true'
        , page: true
        , limit: 16
        , height: 'full-80'
        , id:"datalist"
        , method: 'post'
    });
    function reload() {
        //这里以搜索为例
        table.reload("datalist", {
            where: {
                keyword: $("#keyword").val(),
            },
            method: 'post'
        });
    }
</script>

<script type="text/html" id="rq">
    <%--<span> {{# laydate.now(d.create_time,'YYYY-MM-DD hh:mm:ss')}}</span>--%>
    {{(new Date(d.create_time)).pattern('yyyy-MM-d hh:mm:ss')}}
</script>
