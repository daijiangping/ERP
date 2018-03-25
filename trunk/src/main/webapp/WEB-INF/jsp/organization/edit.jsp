<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div  class="add-subcat"  id="subcat"  style="display: none !important;" >
    <br/>
    <form id="form1" class="layui-form"  >
        <input type="hidden" value="${id}" id="parentId" name="parentId">
        <input type="hidden"  name="id" id="orgId">
        <div class="layui-form-item">
            <label class="layui-form-label">组织名称</label>
            <div class="layui-input-inline">
                <input type="text" name="name" required lay-verify="required" lay-error="请输入资源名称" placeholder="请输入资源名称" autocomplete="off" class="layui-input ">
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
                <a class="layui-btn"  lay-submit="" lay-filter="submit" >立即提交</a>
                <button type="reset" class="layui-btn layui-btn-primary" id="rest_org">重置</button>
            </div>
        </div>
    </form>
</div>