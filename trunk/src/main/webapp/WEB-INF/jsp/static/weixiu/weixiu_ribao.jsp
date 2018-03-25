<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">维修日报</h1>
<hr>
<div class="layui-form layui-form-pane" action="">


    <div class="layui-form-item">
        <label class="layui-form-label">上报部门</label>
        <div class="layui-input-block">
            <select name="interest">
                <option value="-1">1</option>
                <option value="-2">2</option>
                <option value="-3">3</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">修复件数</label>
        <div class="layui-input-inline">
            <input placeholder="请输入修复件数" class="layui-input">
        </div>
        <label class="layui-form-label">报废数量</label>
        <div class="layui-input-inline">
            <input placeholder="请输入报废数量" class="layui-input">
        </div>

    </div>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
        <legend>上传机损文件</legend>
    </fieldset>
    <div class="layui-upload-drag" id="test10">
        <i class="layui-icon"></i>
        <p>点击上传，或将文件拖拽到此处</p>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入备注内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">立即保存</button>
    </div>
</div>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>