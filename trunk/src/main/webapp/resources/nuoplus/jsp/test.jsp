<%--
  Created by IntelliJ IDEA.
  User: daijiangping
  Date: 2017/9/4
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<hr>
<div class="layui-btn-group">
    <button class="layui-btn" onclick="fun.list()">重载</button>
    <button class="layui-btn" onclick="openWin()">打开窗口</button>
    <button class="layui-btn">删除</button>
</div>


<div>

</div>


<table id="demo" lay-filter="ywTable"></table>
<div id="add_win" style="display: none">
    <div class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">单行输入框</label>
            <div class="layui-input-block">
                <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">验证必填项</label>
            <div class="layui-input-block">
                <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">验证手机</label>
                <div class="layui-input-inline">
                    <input type="tel" name="phone" lay-verify="phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">验证邮箱</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">多规则验证</label>
                <div class="layui-input-inline">
                    <input type="text" name="number" lay-verify="required|number" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">验证日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd"
                           autocomplete="off" class="layui-input test-item">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">验证链接</label>
                <div class="layui-input-inline">
                    <input type="tel" name="url" lay-verify="url" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">验证身份证</label>
            <div class="layui-input-block">
                <input type="text" name="identity" lay-verify="identity" placeholder="" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">自定义验证</label>
            <div class="layui-input-inline">
                <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">范围</label>
                <div class="layui-input-inline" style="width: 100px;">
                    <input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid">-</div>
                <div class="layui-input-inline" style="width: 100px;">
                    <input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" onclick="tijiao()">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>

        <ul id="ssh">

        </ul>
    </div>
</div>
</body>
</html>
<script type="text/html" id="ssh_tpl">
    <li>AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</li>
    {{# for(var i = 0; i < d.data.length; i++){ }}
    <li>{{d.data[i].stb_name}}</li>
    {{# } }}
</script>
<%--表达式--%>
<script type="text/html" id="titleTpl">
    {{#  if(d.stb_id =='712'){ }}
    <span style="color: red">呵呵哒{{d.stb_name}}</span>
    {{#  } else { }}
    {{d.stb_id}}
    {{#  } }}
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-mini" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-mini" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del">删除{{d.stb_id}}</a>
    {{#  if(d.stb_id <754){ }}
    <a class="layui-btn layui-btn-mini" lay-event="check">审核</a>
    {{#  } else { }}
    <a class="layui-btn layui-btn-mini" lay-event="check">不用审核</a>
    {{#  } }}

</script>
<jsp:include page="bo.jsp"></jsp:include>
<script type="text/javascript">
    //执行渲染
    table.render({
        elem: '#demo' //指定原始表格元素选择器（推荐id选择器）
        , url: '${pageContext.request.contextPath}/fwgl/testfw?stId=35'
        , cols: [[ //标题栏
            {checkbox: true}
            , {field: 'stb_id', title: '业务ID', width: 120, templet: '#titleTpl'}
            , {field: 'stb_name', edit: 'text', title: '业务名称', width: 300, sort: true}
            , {field: 'stb_state', title: '状态', width: 120, sort: true}
            , {field: 'stb_type', title: '类型', width: 120, sort: true}
            , {fixed: 'right', width: 350, align: 'center', toolbar: '#barDemo'} //这里的toolbar值是模板元素的选择器
        ]]
        , size: 'sm'
        , even: 'true'
        , page: true
        , limit: 30
        , height: 'full-80'
    });

    //监听单元格被编辑
    table.on('edit(ywTable)', function (obj) {
        layer.msg(obj.data.stbId + "," + obj.value);

    });
    //打开窗口
    function openWin() {
        common.open("添加", "add_win", ['80%', '90%']);
    }
    //
    function tijiao() {
        common.post("${pageContext.request.contextPath}/fwgl/testfw?stId=35", {limit: 10, page: 1}, function (rs) {
            layer.alert(rs.msg)
            console.log(rs)
            tpl("ssh_tpl", rs, "ssh");
        })
    }
</script>
