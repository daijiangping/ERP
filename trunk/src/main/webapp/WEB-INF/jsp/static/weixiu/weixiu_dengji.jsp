<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">维修登记</h1>
<hr>
<div class="layui-form layui-form-pane" action="">

    <div class="layui-form-item">
        <label class="layui-form-label">车辆编号</label>
        <div class="layui-input-inline">
            <input placeholder="请输入维修车辆编号" class="layui-input">
        </div>
        <label class="layui-form-label">运营公司</label>
        <div class="layui-input-inline">
            <input placeholder="请输入所属运营公司" class="layui-input">
        </div>
        <label class="layui-form-label">车型</label>
        <div class="layui-input-inline">
            <input placeholder="请选择车型" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">作业类别</label>
        <div class="layui-input-inline">
            <select name="">
                <option value="1">类别A</option>
                <option value="1">类别B</option>
            </select>
        </div>
        <div class="layui-form-mid layui-word-aux"> *请务必填写上月实际运行公里数</div>
    </div>


    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">开工时间</label>
            <div class="layui-input-block">
                <input type="text" name="date" class="layui-input date-item" placeholder="yyyy-mm-dd">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">完工时间</label>
            <div class="layui-input-block">
                <input type="text" name="date" class="layui-input date-item" placeholder="yyyy-mm-dd">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">作业人</label>
            <div class="layui-input-block">
                <input type="text" name="date" class="layui-input date-item" placeholder="作业人">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">检验签字</label>
            <div class="layui-input-block">
                <input type="text" name="date" class="layui-input date-item" placeholder="签字人">
            </div>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">作业内容</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入作业内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">报修内容</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入报修内容" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">保存登记</button>
    </div>
</div>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>