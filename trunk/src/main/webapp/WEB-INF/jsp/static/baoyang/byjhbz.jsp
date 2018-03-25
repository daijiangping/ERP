<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">保养计划编制</h1>
<hr>
<div class="layui-form layui-form-pane" action="">

    <div class="layui-form-item" pane="">
        <label class="layui-form-label">计划类型</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="周计划" title="周计划" checked="">
            <input type="radio" name="sex" value="月计划" title="月计划">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">保养类型</label>
        <div class="layui-input-block">
            <select name="interest">
                <option value="-1">一级保养</option>
                <option value="0">二级保养</option>
                <option value="2">三级保养</option>
                <option value="2">其他保养</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" >车辆编号</label>
        <div class="layui-input-inline">
            <input placeholder="请输入保养车辆编号" class="layui-input">
        </div>
        <label class="layui-form-label" >运营公司</label>
        <div class="layui-input-inline">
            <input placeholder="请输入所属运营公司" class="layui-input">
        </div>
        <label class="layui-form-label" >车型</label>
        <div class="layui-input-inline">
            <input placeholder="请选择车型" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" >上月公里</label>
        <div class="layui-input-inline">
            <input placeholder="请输入上月实际公里数" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux" > *请务必填写上月实际运行公里数</div>
    </div>




    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">上次保养</label>
            <div class="layui-input-block">
                <input type="text" name="date"  class="layui-input date-item" placeholder="yyyy-mm-dd">
            </div>
        </div>

    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">故障内容</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入故障内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">立即保存</button>
    </div>
</div>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>