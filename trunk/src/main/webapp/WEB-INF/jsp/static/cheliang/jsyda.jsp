<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="add_win" class="layui-form layui-form-pane" style="display: none">
    <br>
    <table class="layui-table" lay-size="sm" >
        <tr>
            <td>
                <label class="layui-form-label">档案号</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入档案号" class="layui-input" value="">
                </div>
            </td>
            <td>
                <label class="layui-form-label">驾驶员</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入驾驶员" class="layui-input">
                </div>
            </td>
            <td rowspan="4" style="text-align: center">
                <button>上传头像</button>
            </td>
        </tr>
        <tr>
            <td>
                <label class="layui-form-label">驾驶证号</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入驾驶证号" class="layui-input" value="">
                </div>
            </td>
            <td>
                <label class="layui-form-label">出生日期</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入出生日期" class="layui-input">
                </div>
            </td>

        </tr>

        <tr>
            <td>
                <label class="layui-form-label">初次领证</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入初次领证日期" class="layui-input" value="">
                </div>
            </td>
            <td>
                <label class="layui-form-label">证件有效期</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入证件有效期" class="layui-input">
                </div>
            </td>

        </tr>
        <tr>
            <td><label class="layui-form-label">性别</label>
                <div class="layui-input-inline">
                    <select name="">
                        <option value="1">男</option>
                        <option value="2">女</option>
                    </select>
                </div>
            </td>
            <td><label class="layui-form-label">所属路队</label>
                <div class="layui-input-inline">
                    <select name="">
                        <option value="1">1001</option>
                        <option value="2">1002</option>
                    </select>
                </div>
            </td>

        </tr>
        <tr>
            <td>
                <label class="layui-form-label">年审日期 </label>
                <div class="layui-input-inline">
                    <input placeholder="请输入年审日期" class="layui-input" value="">
                </div>
            </td>
            <td>
                <label class="layui-form-label">资格有效期</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入资格有效期" class="layui-input">
                </div>
            </td>
            <td>
                <label class="layui-form-label">从业资格</label>
                <div class="layui-input-inline">
                    <select name="">
                        <option value="1">旅客运输</option>
                    </select>
                </div>

            </td>
        </tr>
        <tr>
            <td>
                <label class="layui-form-label">资格号 </label>
                <div class="layui-input-inline">
                    <input placeholder="请输入从业资格号" class="layui-input" value="">
                </div>
            </td>
            <td>
                <label class="layui-form-label">资格年审</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入资格年审日期" class="layui-input">
                </div>
            </td>
            <td>
                <label class="layui-form-label">准假车型</label>
                <div class="layui-input-inline">
                    <select name="">
                        <option value="1">A1</option>
                        <option value="2">A2</option>
                        <option value="3">C1</option>
                    </select>
                </div>

            </td>
        </tr>
        <tr>
            <td colspan="3">
                <label class="layui-form-label">家庭地址</label>
                <div class="layui-input-inline" style="width: 500px">
                    <input placeholder="请输入家庭地址" class="layui-input">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="10">
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">备注</label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <hr>
                <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>

            </td>
        </tr>
    </table>

</div>

<blockquote class="layui-elem-quote layui-quote-nm">
    <div class="layui-form layui-form-pane">
        <div class="layui-form-item">
            <label class="layui-form-label">车牌号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="车牌号">
            </div>

            <label class="layui-form-label">类型</label>
            <div class="layui-input-inline">
                <select>
                    <option value="1">小客车</option>
                    <option value="4">大客车</option>
                    <option value="2">货车</option>
                </select>
            </div>


            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn layui-btn-normal"
            onclick="fun.add()">
        <i class="layui-icon ">&#xe608;</i> 新建档案
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe600;</i> 同步其他系统
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe607;</i> 批量导入
    </button>
    <button class="layui-btn">
        <i class="layui-icon">&#xe609;</i> 导出EXCEL
    </button>

</div>
<table id="demo"></table>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    //第一个实例
    table.render({
        elem: '#demo'
        , height: 315
        , url: '${pageContext.request.contextPath}/data/cheliangList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox'}
            , {field: 'dah', title: '档案号',}
            , {field: 'jsy', title: '驾驶员',}
            , {field: 'xb', title: '性别',}
            , {field: 'jszh', title: '驾驶证号',}
            , {field: 'csrq', title: '出生日期',}
            , {field: 'ssld', title: '所属路队',}
            , {field: 'cclz', title: '初次领证日期',}
            , {field: 'zjcx', title: '准假车型',}
            , {field: 'zjyxq', title: '证件有效期',}
            , {field: 'nsrq', title: '年审日期',}
            , {field: 'cyzg', title: '从业资格',}
            , {field: 'cyzgyxq', title: '资格有效期',}
            , {field: 'cyzgh', title: '资格号',}
            , {field: 'cyzgns', title: '资格年审',}
            , {field: 'jtdd', title: '家庭地址',}
            , {field: 'sgjl', title: '受过奖励',}
            , {field: 'bz', title: '备注',},
            {fixed: 'right', width: 178, title: '操作', align: 'center', toolbar: '#barDemo'}
        ]]
    });
    var fun = {
        detail: function () {
        }, add: function () {
            common.open("添加驾驶员", "add_win", ['1180px', '80%']);
        }
    }
</script>
<script type="text/html" id="barDemo">

    <a class="layui-btn layui-btn-sm">修改</a>
    <a class="layui-btn layui-btn-sm layui-btn-danger">删除</a>
</script>
