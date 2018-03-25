<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<html>
<head>
    <title>用户管理</title>
    <style>
        .panel-padding {
            padding: 10px;
        }
        .panel-body {
            padding: 10px;
        }
        .nuoplus{
            display: block;
          /*  margin-bottom: 10px;*/
            padding: 5px 5px 5px 10px;
            line-height: 22px;
            /* border-left: 5px solid #009688; */
            border-radius: 0 2px 2px 0;
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
            <!--列表-->
            <section class="panel panel-padding"  >
                <div class="layui-btn-group">

                  <shiro:hasPermission name="user:del">
                    <button class="layui-btn layui-btn-sm layui-btn-danger"   onclick="batchDel();">
                        <i class="iconfont">&#xe626;</i> 删除用户
                    </button>
                  </shiro:hasPermission>
<%--                    <button class="layui-btn layui-btn-small layui-btn-normal ajax-all" data-name="checkbox" data-params='{"url": "/php/test.php","data":"id=1&name=hao&checkbox=6,9,0&va=23"}'>
                        <i class="layui-icon">&#x1005;</i> 审核
                    </button>--%>
                  <shiro:hasPermission name="user:add">
                    <button class="layui-btn layui-btn-sm " onclick="fun.add()">
                        <i class="iconfont">&#xe649;</i> 添加用户
                    </button>
                   </shiro:hasPermission>
                </div>
                    <div class="layui-form" style="float: right;">
                        <%--                        <div class="layui-inline">
                                                    <div class="layui-input-inline">
                                                        <input class="layui-input start-date" name="start_date" placeholder="注册时间">
                                                    </div>
                                                    <div class="layui-input-inline">
                                                        <input class="layui-input end-date" name="end_date" placeholder="注册时间">
                                                    </div>
                                                </div>--%>
                        <div class="layui-inline" >
                            <div class="layui-input-inline" >
                                <input class="layui-input" name="keyword"  id="keyword" placeholder="关键字" style="height: 30px;">
                            </div>
                        </div>
                        <div class="layui-inline" >
                            <button  class="layui-btn"  onclick="fun.reload()" style="height: 30px;line-height:30px;"><i class="layui-icon">&#xe615;</i>查找</button>
                        </div>
                    </div>
                <div class="table-border">
                    <table id="list" lay-filter="table" style="text-align: center"></table>
                </div>
            </section>

<form class="add-subcat panel panel-padding" style="display: none" id="add-subcat">
    <div id="form1" class="layui-form">
        <input type="hidden" id="userId" name="id" >
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="username" required lay-verify="required" lay-error="请输入姓名" jq-url="/php/check.php" placeholder="请输入姓名" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">真实姓名</label>
            <div class="layui-input-block">
                <input type="text" name="realname" required lay-verify="required" lay-error="请输入真实姓名"  placeholder="请输入真实姓名" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">电话</label>
            <div class="layui-input-block">
                <input type="text" name="iphone" required lay-verify="required" lay-error="请输入电话"  placeholder="请输入电话" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-inline">
                <select name="sex" lay-verify="required">
                    <option value="0">男</option>
                    <option value="1">女</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-inline">
                <input type="radio" name="locked" title="启用"   value="true"  checked/>
                <input type="radio" name="locked" title="禁用"   value="false"/>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <a class="layui-btn" lay-submit lay-filter="submit">立即提交</a>
                <button type="reset" class="layui-btn layui-btn-primary" id="rest_addFrom">重置</button>
            </div>
        </div>
    </div>
</form>
</body>
<div id="organization"  style="display: none">
    <div >
        <ul id="org_tree" class="ztree"></ul>
    </div>
</div>
<div  id="role" style="display: none">
    <div >
        <ul id="role_tree" class="ztree"></ul>
    </div>
</div>
<input type="hidden" name="orgids" id="orgids" />
<script>
    function setOrganization(id) {
        $("#org_tree").empty();
        $.post("${contextPath}/organization/getOrganization", {id: id}, function (data) {
            if (data.success) {
               var zNodes = data.nodes;
                var zTree = $.fn.zTree.init($("#org_tree"), setting, zNodes);
                var nodes = zTree.getCheckedNodes(true);
            } else {
                layer.msg("查询失败!")
            }
        })
        layer.open({
            type: 1,
            title: "所属组织",
            area: ['300px', '530px'],
            fixed: false, //不固定
            maxmin: true,
            content: $('#organization'),
            btn: ['保存','取消'],
            yes: function(index){
                $.post("${contextPath}/organization/saveUserOrg", {orgids: $("#orgids").val(),id: id}, function (data) {
                      if(data.success){
                           layer.msg('更改成功');
                          layer.close(index);
                          location.reload()
                      }else {
                          layer.msg('更改失败')
                      }
                })
            }
        })
    }
    function setRole(id) {
        $("#role_tree").empty();
        $.post("${contextPath}/role/findRolesByUser",{id: id}, function (data) {
            if (data.success) {
                var zNodes = data.nodes;
                var zTree = $.fn.zTree.init($("#role_tree"), setting, zNodes);
                var nodes = zTree.getCheckedNodes(true);
            } else {
                layer.msg('查询失败')
            }
        })
        layer.open({
            type: 1,
            title: "配置角色",
            area: ['400px', '530px'],
            fixed: false, //不固定
            maxmin: true,
            content: $('#role'),
            btn: ['保存','取消'],
            yes: function(index){
                $.post("${contextPath}/role/saveUserRoles", {orgids: $("#orgids").val(),id: id}, function (data) {
                    if(data.success){
                        layer.msg('更改成功');
                        layer.close(index);
                        location.reload()
                    }else {
                        layer.msg('更改失败')
                    }
                })
            }
        });
    }
    var setting = {
        check: {
            enable: true,
          /*  chkboxType: {"Y" : "ps", "N" : "ps"},*/
            chkboxType: {"Y" : "", "N" : ""}
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: 0
            }
        },
        callback:{
            onCheck:onCheck
        }
    };
    function onCheck(e,treeId,treeNode){
        var treeObj=$.fn.zTree.getZTreeObj(treeId),
            nodes=treeObj.getCheckedNodes(true),
            v="";
        var ids = [];
        for(var i=0;i<nodes.length;i++){
            v+=nodes[i].name + ",";
            if(!nodes[i].isParent ){
                ids.push(nodes[i].id); //只取子节点的值
            }
        }
        $("#orgids").val(ids);
        /* alert(ids.join())*/
    }
  function batchDel() {
        var checkStatus = table.checkStatus('datalist')
            ,data = checkStatus.data;
        var checkbox=[]
        $(data).each(function(){
            checkbox.push(this.id)
        })
        layer.confirm('您真的要删除选中记录么', function(index){
            common.post("${contextPath}/user/batchDel",{checkbox:checkbox.join()},function (rs) {
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
</script>
<%@ include file="changePassword.jsp"%>
<jsp:include page="/WEB-INF/jsp/common/bottom.jsp"></jsp:include>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-xs " lay-event="edit" >
        <i class="iconfont">&#xe653;</i>编辑
    </button>
    <button class="layui-btn layui-btn-xs layui-btn-danger " lay-event="del"  data-params='{"url": "${contextPath}/user/{{ d.id}}/delete","method":"post","confirm":"true","complete":"test"}'>
        <i class="iconfont">&#xe626;</i>删除
    </button>
</script>
<script type="text/html" id="set">
    <button class="layui-btn layui-btn-xs " onclick="setOrganization('{{d.id}}');" >
        <i class="iconfont">&#xe646;</i>设置组织
    </button>
    <button class="layui-btn layui-btn-xs "  onclick="setRole('{{d.id}}');" >
        <i class="iconfont">&#xe646;</i>设置角色
    </button>
    <button class="layui-btn layui-btn-primary layui-btn-xs " onclick="updatePassword('{{d.id}}');">
       <i class="iconfont">&#xe653;</i>修改密码
    </button>
    <button class="layui-btn layui-btn-primary layui-btn-xs " onclick="resetPassword('{{d.id}}');">
        <i class="iconfont">&#xe654;</i>重置密码
    </button>
</script>
<script type="text/html" id="sex">
    <button class="layui-btn layui-btn-xs" >
        {{#if(d.sex=='0'){}}
           男
        {{#}else{}}
          女
        {{#}}}
    </button>
</script>
<script type="text/html" id="sj">
    <input type="checkbox" name="switch" lay-skin="switch" lay-filter="switch" data-id="{{d.id}}" {{#if (d.locked){ }}checked="checked" {{# } }} lay-text="启用|禁用">
</script>
<script>
    var tableIns = table.render({
        elem: '#list'
        , url: '${contextPath}/user/getlist'
        , cols: [[ //标题栏
            {checkbox: true,field: 'id'}
            , {field: 'username', title: '用户名'}
            , {field: 'realname', title: '姓名'}
            , {field: 'iphone', title: '电话'}
            , {field: 'sex', title: '性别',templet:'#sex',width:70}
            , {field: 'locked', title: '审核',templet:'#sj'}
            , {fixed: 'right', title: '操作', align: 'center', toolbar: '#barDemo'}
            , {fixed: 'right', title: '权限', align: 'center',width:400, toolbar: '#set'}
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
            common.open("添加用户","add-subcat",["25%", "55%"])
        }
    }
    table.on('tool(table)', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;
        var tr = obj.tr;
        if (layEvent === 'edit') {
            common.open("修改用户","add-subcat",["25%", "55%"],data)
        }
        if (layEvent === 'del') {
            layer.confirm('真的删除行么', function(index){
                common.post("${contextPath}/user/"+data.id+"/delete","",function (rs) {
                    if(rs.success){
                        layer.msg(rs.msg,{icon: 1})
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
        var url="${contextPath}/user/create";
        if($("#userId").val()!=null&&$("#userId").val()!=""&&$("#userId").val()!=undefined){
            url="${contextPath}/user/"+$("#userId").val()+"/update";
        }
        common.post(url,data.field,function (rs) {
            if (rs.success) {
                layer.closeAll();
                layer.msg(rs.msg,{icon: 1});
                $("#rest_addFrom").click();
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
        var url="${contextPath}/user/"+id+"/update";
        $.post(url,{locked:data.elem.checked},function (rs) {
            if(rs.success){
               /* console.log(data.othis);*/
                layer.msg("更新成功",{icon: 1})
                layer.close(index);
            }else {
                layer.msg("更新失败",{icon: 2})
            }
        })
    });
</script>
<script type="text/javascript" src="${contextPath}/resources/js/zTree/js/jquery.ztree.core.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/zTree/js/jquery.ztree.excheck.min.js"></script>
<link rel="stylesheet" href="${contextPath}/resources/js/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
</html>