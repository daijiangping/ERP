<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/17 0017
  Time: 上午 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div class="container-fluid larry-wrapper">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <section class="panel panel-padding">
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-sm layui-btn-danger " onclick="fun.batchDel();">
                        <i class="iconfont">&#xe626;</i> 删除组织
                    </button>
                    <button class="layui-btn layui-btn-sm modal-catch" onclick="fun.add();">
                        <i class="iconfont">&#xe649;</i> 添加组织
                    </button>
                </div>
                <div class="layui-form" style="float: right;">
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <input class="layui-input" name="keyword" placeholder="关键字" id="keyword" style="height: 30px;">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <button  class="layui-btn layui-btn-sm"  onclick="fun.reload();" style="height: 30px;line-height:30px;"><i class="layui-icon">&#xe615;</i>查找</button>
                    </div>
                </div>
            </section>
            <div class="table-border">
                <table id="list" lay-filter="table" style="text-align: center"></table>
            </div>
        </div>
    </div>
</div>
</body>
<%@ include file="./edit.jsp"%>
<jsp:include page="/WEB-INF/jsp/common/bottom.jsp"></jsp:include>
<script>
   //更新开关状态
    form.on('switch(switch)', function(data){
        var index = layer.load(3, {
            shade: [0.2, '#A1A1A1'],
        });
        var id=$(data.elem).data("id");
        var url="${contextPath}/organization/"+id+"/update";
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
            common.open("修改组织机构","subcat",["35%", "45%"],data)
        }
        if (layEvent === 'del') {
            layer.confirm('真的删除行么', function(index){
                common.post("${contextPath}/organization/"+data.id+"/delete","",function (rs) {
                    if(rs.success){
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
   var tableIns = table.render({
       elem: '#list'
       , url: '${contextPath}/organization/${id}/maintain'
       , cols: [[ //标题栏
           {checkbox: true,field: 'id'}
           , {field: 'name', title: '组织名称'}
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
           common.open("添加组织机构","subcat",["35%", "45%"])
       },batchDel:function () {
           var checkStatus = table.checkStatus('datalist')
               ,data = checkStatus.data;
           var checkbox=[]
           $(data).each(function(){
               checkbox.push(this.id)
           })
           layer.confirm('您真的要删除选中记录么', function(index){
               common.post("${contextPath}/organization/batchDel",{checkbox:checkbox.join()},function (rs) {
                   if(rs.success){
                       parent.frames['tree'].refTree("${id}");
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
   form.on('submit(submit)', function (data) {
       var url="${contextPath}/organization/create";
       if($("#orgId").val()!=null&&$("#orgId").val()!=""&&$("#orgId").val()!=undefined){
           url="${contextPath}/organization/"+$("#orgId").val()+"/update"
       }
       common.post(url,data.field,function (rs) {
           if (rs.success) {
               parent.frames['tree'].refTree("${id}");
               layer.closeAll();
               layer.msg(rs.msg,{icon: 1});
               $("#rest_org").click();
               fun.reload();
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
   <%-- <a class="a_old " lay-event="edit"><i class="layui-icon">&#xe642;</i>编辑</a>--%>
 <%--   <a class="a_old" lay-event="check"><i class="layui-icon">&#xe63c;</i>详情</a>--%>
 <%--   <a class="a_old" lay-event="del"><i class="layui-icon">&#xe640;</i>删除</a>--%>
</script>
<script type="text/html" id="sj">
    <input type="checkbox" name="switch" lay-skin="switch" lay-filter="switch" data-id="{{d.id}}" {{#if (d.available){ }}checked="checked" {{# } }} lay-text="启用|禁用">
</script>


</html>
