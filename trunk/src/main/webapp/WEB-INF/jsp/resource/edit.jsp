<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form class="add-subcat" style="display: none;padding: 15px;" id="add-subcat" >
    <div id="form1" class="layui-form " >
        <input type="hidden" value="${id}" id="parentId" name="parentId">
        <input type="hidden"  name="id" id="reouseId">
        <div class="layui-form-item">
            <label class="layui-form-label">资源名称</label>
            <div class="layui-input-block">
                <input type="text" name="name" required lay-verify="required" lay-error="请输入资源名称" placeholder="请输入资源名称" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">资源简称</label>
            <div class="layui-input-block">
                <input type="text" name="sn" required lay-verify="required" lay-error="资源简称不能为空" placeholder="请输入资源简称" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">资源路径</label>
            <div class="layui-input-inline">
                <input type="text" name="url" required lay-verify="required" lay-error="请输入资源路径" placeholder="请输入资源路径" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">菜单图标</label>
            <div class="layui-input-inline">
                <input type="text" name="icon" required lay-verify="required" lay-error="请选择菜单图标" placeholder="请选择菜单图标"  autocomplete="off" class="layui-input" onclick="iconWin()">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-inline">
                <input type="radio" name="available" title="启用" value="true" checked />
                <input type="radio" name="available" title="禁用" value="false" />
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <a class="layui-btn" lay-submit lay-filter="submit">立即提交</a>
                <button type="reset" class="layui-btn layui-btn-primary" id="rest_reAdd">重置</button>
            </div>
        </div>
    </div>
</form>
<%@ include file="./menuIcon.jsp"%>
<script>
    function iconWin() {
        var iconWin=layer.open({
            type: 1,
            title: "选择图标",
            area: ['550px', '450px'],
            fixed: false, //不固定
            maxmin: true,
            content: $("#menu_icon")
        })
        $(".site-doc-icon li").on("click", function () {
            var code = $(this).find(".code").html();
            $("[name='icon']").val(code.replace("amp;", ""));
            layer.close(iconWin);
        });
    }
    
    
</script>
