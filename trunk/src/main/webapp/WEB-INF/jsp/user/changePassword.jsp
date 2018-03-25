<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="update-password" style="display: none" >
    <br/>
    <input type="hidden"  id="userId">
    <div class="layui-form-item">
        <label class="layui-form-label" >原密码</label>
        <div class="layui-input-block">
            <input type="password" id="password"  name="password" style="width:350px;"  jq-verify="required" jq-error="请输入密码" value="" onblur="checkPassword($('#userId').val(),this.value);" placeholder="请输入原密码" autocomplete="off" class="layui-input ">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" >新密码</label>
        <div class="layui-input-block">
            <input type="password" id="psssword2" name="psssword2" style="width:350px;"  placeholder="请输入新密码" autocomplete="off" class="layui-input ">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" >新密码</label>
        <div class="layui-input-block">
            <input type="password" name="psssword3" style="width:350px;"  placeholder="请再次确认新密码" autocomplete="off" class="layui-input ">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" style="margin-left: 80px;" onclick="sub($('#userId').val());" >确认修改</button>
        </div>
    </div>
</div>
<style>
    @-moz-document url-prefix() {
        #layui-layer3{
            margin-top: 320px;
        }
    }

</style>
<script>
    function updatePassword(id) {
        if( id==1 && ${user.username!="admin" && user.username!="wyp"}){
            layer.msg("非超级管理员用户不能修改",{icon: 5});
            return false;
        }
        $("#userId").val(id);
        $("#password").val("");
        layer.open({
            type: 1,
            title: "修改密码",
            area: ['500px', '300px'],
//            fixed: false, //不固定
//            maxmin: true,
            top:0,
            content: $('.update-password'),
        });
    }
    function resetPassword(id) {
        if( id==1 && ${user.username!="admin" && user.username!="wyp"}){
            layer.msg("非超级管理员用户不能修改",{icon: 5});
            return false;
        }
        layer.confirm('警告,密码充值后不可恢复,是否确定要重置密码？重置后密码更改为初始密码123456',{icon: 2,title:"重置密码"}, function(index){
            $.post("${contextPath}/user/"+id+"/updatePassword",{psssword2:"123456"}, function (result) {
                layer.close(index);
                if (result.success) {
                    layer.msg('密码重置成功！',{icon: 1});
                    layer.closeAll();
                } else {
                    $("#password").val("")
                    layer.msg('密码重置失败!',{icon: 2})
                    return false;
                }
            });
        });

    }
    function checkPassword(id,password) {
        var index = layer.load(3, {
            shade: [0.2, '#A1A1A1'],
        });
        $.post("${contextPath}/user/"+id+"/checkPassword",{password:password}, function (data) {
            layer.close(index);
            if (data.success) {
                layer.msg('密码正确',{icon: 1})
            } else {
                $("#password").val("");
                layer.msg('密码错误',{icon: 2})
            }
        })
        /*    alert(id+"=========="+password)*/
    }
    function  sub(id){
        if ($("#password").val()==null ||$("#password").val()=="" ){
            layer.msg('请输入正确的旧密码');
            return false;
        }
        var index = layer.load(3, {
            shade: [0.2, '#A1A1A1'],
        });
        $.post("${contextPath}/user/"+id+"/updatePassword",{psssword2:$("#psssword2").val()}, function (result) {
            layer.close(index);
            if (result.success) {
                layer.msg('修改成功！',{icon: 1});
                layer.closeAll();
            } else {
                $("#password").val("")
                layer.msg('修改失败!',{icon: 2})
                return false;
            }
        });

    }

</script>