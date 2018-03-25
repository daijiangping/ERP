<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--添加年审--%>
<div style="display: none" id="add_win">
    <div class="layui-form layui-form-pane">
        <table class="layui-table " lay-size="sm" lay-skin="nob">

            <tr>
                <td colspan="100">
                    <div class="layui-form-item">
                        <label class="layui-form-label">车牌号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入车牌号" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">请输入档案编号或车牌号</div>
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">年审日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入年审日期" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">年审费用</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入年审费用" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">车管所</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入车管所" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">经手人</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入经手人" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">到期日期</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入到期日期" class="layui-input">
                        </div>
                    </div>

                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">年审号</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入年审号" class="layui-input">
                        </div>
                    </div>
                </td>


            </tr>
            <tr>
                <td colspan="3">
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
</div>

<blockquote class="layui-elem-quote layui-quote-nm">
    <div class="layui-form layui-form-pane">
        <div class="layui-form-item">
            <label class="layui-form-label">订单编号</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder=" ">
            </div>
            <label class="layui-form-label">开始日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2017-01-01">
            </div>
            <label class="layui-form-label">结束日期</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="2018-01-01">
            </div>

            <label class="layui-form-label">审核状态</label>
            <div class="layui-input-inline">
                <select>
                    <option value="1">(空)</option>
                    <option value="4">待审</option>
                    <option value="2">已审</option>
                    <option value="3">审核中</option>
                </select>
            </div>

            <div class="layui-input-inline">
                <select>
                    <option value="1">最近30天</option>
                    <option value="4">今天</option>
                    <option value="2">本月</option>
                    <option value="3">今年</option>
                    <option value="3">全部</option>
                </select>
            </div>
            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
</blockquote>
<%--table--%>
<div class="layui-form-item" style="text-align: left;margin-left: 20px">
    <button class="layui-btn" onclick="fun.add()">
        <i class="layui-icon">&#xe608;</i> 新增年审
    </button>
    <button class="layui-btn"  >
        <i class="layui-icon">&#xe602;</i> 批量导入
    </button>
    <button class="layui-btn  layui-btn-normal">
        <i class="layui-icon">&#xe605;</i> 删除
    </button>
    <button class="layui-btn  layui-btn-primary">
        <i class="layui-icon">&#xe631;</i> 修改
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
        , url: '${pageContext.request.contextPath}/data/diaoboList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            , {field: 'cph', title: '车牌号', sort: true,}
            , {field: 'dbrq', title: '年审日期', sort: true,}
            , {field: '1', title: '年审号', sort: true,}
            , {field: 'db2bm', title: '年审费用', sort: true,}
            , {field: 'sh', title: '车管所', sort: true,}
            , {field: 'bz', title: '到期日期', sort: true,}
            , {field: 'bz', title: '经手人', sort: true,}
            , {field: 'bz', title: '备注', sort: true,}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        add: function () {
            common.open("新增年审", "add_win", ['1000px', '500px'])
        }
    }
</script>
<script type="text/html" id="menu">
    <div class="layui-btn-group">
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-sm" onclick="fun.detail()">
                <i class="layui-icon">&#xe60a;</i>审核处理
            </button>
        </div>
    </div>
</script>