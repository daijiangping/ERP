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
    <section class="panel panel-padding">
         <div class="layui-btn-group">
            <button class="layui-btn layui-btn-sm layui-btn-danger " onclick="fun.batchDel();">
                <i class="iconfont">&#xe626;</i> 删除
            </button>
            <button class="layui-btn layui-btn-sm"  onclick="fun.add();">
                <i class="iconfont">&#xe649;</i> 添加词条
            </button>
          </div>
            <!--头部搜索-->
            <div class="layui-form" style="float: right;margin-top: -5px;">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input class="layui-input"  name="keyword" id="keyword" placeholder="关键字">
                    </div>
                </div>
                <div class="layui-inline">
                    <button lay-submit class="layui-btn" onclick="fun.reload()">查找</button>
                </div>
            </div>
    </section>
        <div class="table-border">
            <table id="list" lay-filter="table" style="text-align: center"></table>
        </div>
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
        var url="${contextPath}/dictionary/"+id+"/update";
        $.post(url,{available:data.elem.checked},function (rs) {
            if(rs){
                layer.msg("更新状态成功",{icon: 1})
                layer.close(index);
            }else {
                layer.msg("更新状态失败",{icon: 2})
            }
        })
    });
    table.on('tool(table)', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;
        var tr = obj.tr;
        if (layEvent === 'edit') {
            common.open("修改词条","add-subcat",["35%", "30%"],data)
        }
        if (layEvent === 'del') {
            layer.confirm('您真的要删除这条记录么', function(index){
                common.post("${contextPath}/dictionary/"+data.id+"/delete","",function (rs) {
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
</script>
<script>
    var tableIns = table.render({
        elem: '#list'
        , url: '${contextPath}/dictionary/${id}/findListByParent'
        , cols: [[ //标题栏
            {checkbox: true,field: 'id'}
            , {field: 'title', title: '词条主题'}
            , {field: 'uid', title: '词条标识符'}
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
            common.open("新增词条","add-subcat",["35%", "45%"])
        },batchDel:function () {
        var checkStatus = table.checkStatus('datalist')
            ,data = checkStatus.data;
        var checkbox=[]
        $(data).each(function(){
            checkbox.push(this.id)
        })
        layer.confirm('您真的要删除选中记录么', function(index){
            common.post("${contextPath}/dictionary/batchDel",{checkbox:checkbox.join()},function (rs) {
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
        var url="${contextPath}/dictionary/create";
        if($("#dicId").val()!=null&&$("#dicId").val()!=""&&$("#dicId").val()!=undefined){
            url="${contextPath}/dictionary/"+$("#dicId").val()+"/update"
        }
        common.post(url,data.field,function (rs) {
            if (rs.success) {
                parent.frames['tree'].refTree("${id}");
                layer.closeAll();
                layer.msg(rs.msg,{icon: 1});
                $("#rest_dic").click();
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
</script>
<script type="text/html" id="sj">
    <input type="checkbox" name="switch" lay-skin="switch" lay-filter="switch" data-id="{{d.id}}" {{#if (d.available){ }}checked="checked" {{# } }} lay-text="启用|禁用">
</script>

</html>
