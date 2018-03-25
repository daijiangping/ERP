<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色管理</title>
</head>
<style>
    .panel-padding {
        padding: 10px;
    }

    .panel-body {
        padding: 10px;
    }
</style>
<body>
    <!--列表-->
    <section class="panel panel-padding">
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-sm layui-btn-danger " onclick="fun.batchDel()" >
                <i class="iconfont">&#xe626;</i> 删除用户角色
            </button>
            <button class="layui-btn layui-btn-sm "  onclick="fun.add();">
                <i class="iconfont">&#xe649;</i> 添加用户角色
            </button>
        </div>
           <!--头部搜索111-->
        <div class="layui-form" style="float: right;">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input class="layui-input" name="keyword" placeholder="关键字" id="keyword" style="height: 30px;">
                </div>
            </div>
            <div class="layui-inline">
                <button lay-submit class="layui-btn" lay-filter="search" style="height: 30px;line-height:30px;"><i class="layui-icon">&#xe615;</i>查找</button>
            </div>
        </div>
        <div class="table-border">
            <table id="list" lay-filter="table" style="text-align: center"></table>
        </div>
    </section>
</body>
<form id="add-subcat" style="display: none;padding: 15px;">
    <div id="form1" class="layui-form layui-form" >
        <input type="hidden" id="roleId" name="id">
        <div class="layui-form-item">
            <label class="layui-form-label">角色名称</label>
            <div class="layui-input-block">
                <input type="text" name="role" required jq-verify="required" jq-error="请输入分类名称" placeholder="请输入分类名称" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">角色描述</label>
            <div class="layui-input-block">
                <input type="text" name="description" required jq-verify="required" jq-error="请输入角色描述" placeholder="请输入角色描述" autocomplete="off" class="layui-input ">
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
                <button type="reset" class="layui-btn layui-btn-primary" id="rest_role">重置</button>
            </div>
        </div>
    </div>
</form>
<%@ include file="./roleList.jsp"%>
<script type="text/html" id="sj">
    <input type="checkbox" name="switch" lay-skin="switch" lay-filter="switch" data-id="{{d.id}}" {{#if (d.available){ }}checked="checked" {{# } }} lay-text="启用|禁用">
</script>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-xs " onclick="viewPermisson('{{d.id}}');">
        <i class="iconfont">&#xe649;</i>查看权限
    </button>
    <button class="layui-btn layui-btn-xs " onclick="setPermission('{{d.id}}');">
        <i class="iconfont">&#xe653;</i>配置权限
    </button>
</script>
<jsp:include page="/WEB-INF/jsp/common/bottom.jsp"></jsp:include>
<script>
    var tableIns = table.render({
        elem: '#list'
        , url: '${contextPath}/role/getlist'
        , cols: [[ //标题栏
            {checkbox: true,field: 'id'}
            , {field: 'role', title: '角色名称'}
            , {field: 'description', title: '角色描述'}
            , {field: 'available', title: '状态',templet:'#sj'}
            , {fixed: 'right', title: '操作', align: 'center', toolbar: '#barDemo'}
        ]]
        , size: 'sm'
        , even: 'true'
        , page: true
        , limit: 16
        , height: 'full-130'
        , id:"datalist"
        , method: 'post'
    });
    var fun = {
        reload: function () {
            //这里以搜索为例
            table.reload("datalist", {
                where: {
                    keyword: $("#keyword").val(),
                },
                method: 'post'
            });
        },add:function(){
            common.open("新增角色","add-subcat",["30%", "45%"])
        },batchDel:function () {
            var checkStatus = table.checkStatus('datalist')
                ,data = checkStatus.data;
            var checkbox=[]
            $(data).each(function(){
                checkbox.push(this.id)
            })
            layer.confirm('您真的要删除选中记录么', function(index){
                common.post("${contextPath}/role/batchDel",{checkbox:checkbox.join()},function (rs) {
                    if(rs.success){
                        layer.msg(rs.msg,{icon: 1})
                        fun.reload();
                    }else {
                        layer.msg(rs.msg,{icon: 2})
                        fun.reload();
                    }
                })
            })
        }

    }
    table.on('tool(table)', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;
        var tr = obj.tr;
        if (layEvent === 'edit') {
            common.open("修改角色","add-subcat",["25%", "40%"],data)
        }
        if (layEvent === 'del') {
            layer.confirm('真的删除行么', function(index){
                common.post("${contextPath}/role/"+data.id+"/delete","",function (rs) {
                    if(rs.success){
                        obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                        layer.close(index);
                    }else {
                        layer.msg(rs.msg,{icon: 2})
                        fun.reload();
                    }
                })
            });
        }
    })
    form.on('submit(submit)', function (data) {
        var url="${contextPath}/role/create";
        if($("#roleId").val()!=null&&$("#roleId").val()!=""&&$("#roleId").val()!=undefined){
            url="${contextPath}/role/"+$("#roleId").val()+"/update";
        }
        common.post(url,data.field,function (rs) {
            if (rs.success) {
                layer.closeAll();
                layer.msg(rs.msg,{icon: 1});
                $("#rest_role").click();
                fun.reload();
            } else {
                layer.msg(rs.msg,{icon: 2});
            }
        })
    })
    //更新开关状态
    form.on('switch(switch)', function(data){
        var index = layer.load(3, {
            shade: [0.2, '#A1A1A1'],
        });
        var id=$(data.elem).data("id");
        var url="${contextPath}/role/updateStatus";
        $.post(url,{id:id,status:data.elem.checked},function (rs) {
            if(rs){
                layer.msg("更新状态成功",{icon: 1})
                layer.close(index);
            }else {
                layer.msg("更新状态失败",{icon: 2})
            }
        })
    });
</script>
<link rel="stylesheet" href="${contextPath}/resources/js/zTree/css/metroStyle/metroStyle.css">
<script type="text/javascript" src="${contextPath}/resources/js/zTree/js/jquery.ztree.core.min.js"></script>
 <script type="text/javascript" src="${contextPath}/resources/js/zTree/js/jquery.ztree.excheck.js"></script>
</html>