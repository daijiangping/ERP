<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form class="add-subcat" style="display: none;padding: 15px;" id="add-subcat">
    <div id="form1" class="layui-form " >
        <input type="hidden" value="${id}" id="parentId" name="parentId">
        <input type="hidden"  id="dicId" name="id">
        <input type="hidden"   name="uid">
        <div class="layui-form-item">
            <label class="layui-form-label">词条名称</label>
            <div class="layui-input-block">
                <input type="text" name="title" required jq-verify="required" jq-error="请输入资源名称" placeholder="请输入资源名称" autocomplete="off" class="layui-input ">
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
                <button type="reset" class="layui-btn layui-btn-primary" id="rest_dic">重置</button>
            </div>
        </div>
    </div>
</form>

