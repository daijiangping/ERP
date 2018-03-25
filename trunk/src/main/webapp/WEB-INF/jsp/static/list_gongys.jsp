<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--新增弹出框开始--%>
<div id="add_win" style="display: none">
    <div class="layui-form layui-form-pane">
        <table class="layui-table " lay-size="sm" lay-skin="nob">
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">供应商</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="供应商名称" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">公司名称</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入公司名称" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系人</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入联系人" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">电话</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入电话" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">类别</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">A级</option>
                                <option value="2">B级</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">区域类别</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">华南区</option>
                                <option value="2">西北地区</option>
                            </select>
                        </div>
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">地址</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入地址" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">传真</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入传真" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入邮箱" class="layui-input">
                        </div>
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">网址</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入网址" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">排序码</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入排序码" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">交易类型</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">现结</option>
                                <option value="2">欠款</option>
                                <option value="3">当月结</option>
                                <option value="4">次月结</option>
                            </select>
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">付款期限</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入付款期限" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">停用</label>
                        <div class="layui-input-inline">
                            <select name="">
                                <option value="1">否</option>
                                <option value="2">是</option>
                            </select>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">备注</label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="请输入备注" class="layui-input">
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
<%--新增弹出框结束--%>


<blockquote class="layui-elem-quote layui-quote-nm">
    <div class="layui-form layui-form-pane">

        <div class="layui-form-item">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" placeholder="供应商名称">
            </div>
            <label class="layui-form-label">类型</label>
            <div class="layui-input-inline">
                <select>
                    <option value="1">重点供应商</option>
                    <option value="4">轮胎供应商</option>
                    <option value="2">伙伴供应商</option>
                </select>
            </div>
            <button class="layui-btn" style="background: #393D49"><i class="layui-icon">&#xe615;</i> 查询</button>
        </div>
    </div>
    <div class="layui-btn-group">
    <div class="layui-form layui-form-pane">

            <button class="layui-btn" onclick="fun.add()">
                <i class="layui-icon">&#xe608;</i> 新增供应商
            </button>
            <button class="layui-btn" onclick="fun.tzjl()">
                <i class="layui-icon">&#xe635;</i> 导出供应商
            </button>
            <button class="layui-btn  layui-btn-normal" onclick="fun.tzjl()">
                <i class="layui-icon">&#xe631;</i> 导入供应商
            </button>
            <button class="layui-btn  layui-btn-normal" onclick="fun.tzjl()">
                <i class="layui-icon">&#xe631;</i> 修改
            </button>
        </div>

    </div>

</blockquote>


<table id="demo"></table>
</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>
<script>
    /**

     */
    //第一个实例
    table.render({
        elem: '#demo'
        , height: 315
        , url: '${pageContext.request.contextPath}/data/gysList' //数据接口
        , page: true
        , height: 'full-20'
        , cols: [[ //表头
            {type: 'checkbox'}
            , {field: 'gys', title: '供应商', sort: true,}
            , {field: 'gsmc', title: '公司名称', sort: true,}
            , {field: 'lxr', title: '联系人 ', sort: true,}
            , {field: 'lxdh', title: '电话', sort: true,}
            , {field: 'lb', title: '类别 ', sort: true,}
            , {field: 'qy', title: '区域 ', sort: true,}
            , {field: 'dz', title: '地址 ', sort: true,}
            , {field: 'cz', title: '传真', sort: true,}
            , {field: 'yx', title: 'E-mail', sort: true,}
            , {field: 'wz', title: '网址', sort: true,}
            , {field: 'pxm', title: '排序码', sort: true,}
            , {field: 'dh', title: '电话', sort: true,}
            , {field: 'jylx', title: '交易类型', sort: true,}
            , {field: '作业3内容', title: '付款期限', sort: true,}
            , {field: '作业2内容', title: '停用', sort: true,}
            , {field: '作业内1容', title: '备注', sort: true,}
            , {field: 'weal2th', title: '操作', templet: "#menu"}
        ]]
    });
    var fun = {
        detail: function () {

        }
        , add: function () {
            common.open("新增供应商", "add_win", ['1000px', '700px'])
        }
    }
</script>
<script type="text/html" id="menu">
    <div class="layui-btn-group">
        <div class="layui-btn-group">

        </div>
    </div>
</script>