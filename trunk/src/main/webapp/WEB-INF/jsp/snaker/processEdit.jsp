<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/resources/snaker/common/taglibs.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>流程定义</title>
    <%@ include file="/resources/snaker/common/meta.jsp" %>
    <link rel="stylesheet" href="${ctx}/resources/snaker/styles/css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/snaker/styles/wbox/wbox/wbox.css"/>
    <script src="${ctx}/resources/snaker/styles/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/resources/snaker/styles/wbox/wbox.js"></script>
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/bootstrap.min.css" media="all">
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/font/iconfont.css" media="all">
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/jqadmin.css" media="all">
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>流程定义</legend>
</fieldset>
<form id="inputForm" action="${ctx }/snaker/process/deploy" method="post"
      enctype="multipart/form-data">
    <input type="hidden" name="id" value="${process.id }">
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 100px;text-align: center" >流程名称：</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" value="${process.name }" autocomplete="off"
                   class="layui-input" disabled="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 100px;text-align: center" >显示名称：</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" value="${process.displayName }" autocomplete="off"
                   class="layui-input" disabled="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" disabled=""> 状态：</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" value="${process.state == 1 ? '启用' : '禁用' }"
                   autocomplete="off" class="layui-input" disabled="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label"  style="width: 100px;text-align: center">上传文件：</label>
        <div class="layui-input-block">
            <input type="file" id="snakerFile" name="snakerFile" >
        <%--<input type="file" class="input_file layui-upload-file" id="snakerFile" name="snakerFile"  lay-title="流程定义">--%>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label" style="width: 100px;text-align: center" >流程定义:</label>
        <div class="layui-input-block" style="border:1px dotted black;padding: 5px" >
            ${content }
        </div>
    </div>
    <table align="center" border="0" cellpadding="0"
           cellspacing="0">
        <tr align="left">
            <td colspan="1">
                <input type="submit" class="layui-btn " name="submit" value="提交">
            </td>
        </tr>
    </table>

</form>
</body>
</html>
