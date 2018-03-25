<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/17 0017
  Time: 上午 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css?v2.0.1-simple" media="all">--%>
<style>
    .panel-padding {
        padding: 10px;
    }

    .panel-body {
        padding: 10px;
    }
</style>
<html>
<body>
        <!--列表-->
        <section class="panel panel-padding">
            <div class="layui-btn-group">
                <button class="layui-btn layui-btn-sm layui-btn-danger" data-name="checkbox" onclick="fun.batchDel();">
                    <i class="iconfont">&#xe626;</i> 删除资源模块
                </button>
                <button class="layui-btn layui-btn-sm"  onclick="fun.add()">
                    <i class="iconfont">&#xe649;</i> 添加资源模块
                </button>
            </div>
            <div class="layui-form" style="float: right;">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input class="layui-input" name="keyword" placeholder="关键字" style="height: 30px;">
                    </div>
                </div>
                <div class="layui-inline">
                    <button  class="layui-btn" onclick="fun.reload()" style="height: 30px;line-height:30px;"><i class="layui-icon">&#xe615;</i>查找</button>
                </div>
            </div>
            <div class="table-border">
                <table id="list" lay-filter="table" style="text-align: center"></table>
            </div>
        </section>
</body>

<input type="hidden" value="${id}" id="menuId">
<%@ include file="./edit.jsp"%>
<jsp:include page="/WEB-INF/jsp/common/bottom.jsp"></jsp:include>
<script>
    //更新开关状态
    form.on('switch(switch)', function(data){
        var index = layer.load(3, {
            shade: [0.2, '#A1A1A1'],
        });
        var id=$(data.elem).data("id");
        var url="${contextPath}/resource/"+id+"/update";
        $.post(url,{available:data.elem.checked},function (rs) {
            if(rs.success){
                layer.msg("更新成功",{icon: 1})
                layer.close(index);
            }else {
                layer.msg("更新失败",{icon: 2})
            }
        })
    });
    table.on('tool(table)', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;
        var tr = obj.tr;
        if (layEvent === 'edit') {
            common.open("修改菜单","add-subcat",["40%", "60%"],data)
        }
        if (layEvent === 'del') {
            layer.confirm('真的删除行么', function(index){
                common.post("${contextPath}/resource/"+data.id+"/delete","",function (rs) {
                    if(rs.success){
                        //异步更新右侧树节点
                        parent.frames['tree'].refTree("${id}");
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
</script>
<script>
    var tableIns = table.render({
        elem: '#list'
        , url: '${contextPath}/resource/${id}/maintain'
        , cols: [[ //标题栏
            {checkbox: true,field: 'id'}
            , {field: 'name', title: '模块名称'}
            , {field: 'url', title: '模块路径'}
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
            table.reload("datalist", {
                where: {
                    keyword: $("#keyword").val(),
                },
                method: 'post'
            });
        },add:function(){
            common.open("添加模块","add-subcat",["40%", "60%"])
        },batchDel:function () {
            var checkStatus = table.checkStatus('datalist')
                ,data = checkStatus.data;
            var checkbox=[]
            $(data).each(function(){
                checkbox.push(this.id)
            })
            layer.confirm('您真的要删除选中记录么', function(index){
                common.post("${contextPath}/resource/batchDel",{checkbox:checkbox.join()},function (rs) {
                    if(rs.success){
                        layer.msg(rs.msg,{icon: 1})
                        //异步更新右侧树节点
                        parent.frames['tree'].refTree("${id}");
                        fun.reload();
                    }else {
                        layer.msg(rs.msg,{icon: 2})
                    }
                })
            })
        }
    }
    form.on('submit(submit)', function (data) {
        var url="${contextPath}/resource/create";
        if($("#reouseId").val()!=null&&$("#reouseId").val()!=""&&$("#reouseId").val()!=undefined){
            url="${contextPath}/resource/"+$("#reouseId").val()+"/update"
        }
        common.post(url,data.field,function (rs) {
            if (rs.success) {
                layer.closeAll();
                layer.msg(rs.msg,{icon: 1});
                $("#rest_reAdd").click()
                fun.reload();
                //异步更新右侧树节点
                parent.frames['tree'].refTree("${id}");
            } else {
                layer.msg(rs.msg,{icon: 2});
            }
        })
    })
</script>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-xs " lay-event="edit">
        <i class="iconfont">&#xe653;</i>编辑
    </button>
    <button class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
        <i class="iconfont">&#xe626;</i>删除
    </button>
</script>
<script type="text/html" id="sj">
    <input type="checkbox" name="switch" lay-skin="switch" lay-filter="switch" data-id="{{d.id}}" {{#if (d.available){ }}checked {{# } }} lay-text="启用|禁用">
</script>
</html>
