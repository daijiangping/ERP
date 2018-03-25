<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="layui-collapse layui-form layui-form-pane" style="color: black;width: 1250px;margin: 0 auto">
    <div class="layui-colla-item">
        <h1 align="center">交通事故登记</h1>
        <div class="layui-colla-content layui-show">
            <div action="">

                <div class="layui-form-item">

                    <label class="layui-form-label">车牌号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车牌号" class="layui-input" value="DW0-111">
                    </div>

                    <label class="layui-form-label">驾驶员</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入驾驶员" class="layui-input">
                    </div>

                    <label class="layui-form-label">车型</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车型" class="layui-input">
                    </div>

                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">发生时间</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入发生时间" class="layui-input">
                    </div>

                    <label class="layui-form-label">发生地点</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入发生地点" class="layui-input">
                    </div>
                    <label class="layui-form-label">路队</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入路队" class="layui-input">
                    </div>
                </div>


                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text" style="width: 1230px">
                        <label class="layui-form-label">事故概要</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入事故概要" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text" style="width: 1230px">
                        <label class="layui-form-label">损坏程度</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入损坏程度" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text" style="width: 1230px">
                        <label class="layui-form-label">和解程度</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入和解程度" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">对方车牌</label>
                    <div class="layui-input-inline">
                        <input value="陕A556212" class="layui-input">
                    </div>

                    <label class="layui-form-label">联系方式</label>
                    <div class="layui-input-inline">
                        <input value="联系方式" class="layui-input">
                    </div>

                    <label class="layui-form-label">车型</label>
                    <div class="layui-input-inline">
                        <input value="轿车" class="layui-input">
                    </div>

                </div>


                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text" style="width: 1230px">
                        <label class="layui-form-label">对方车辆损坏程度</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入对方车辆损坏程度" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">对方承担金额</label>
                    <div class="layui-input-inline">
                        <input placeholder="对方承担金额" class="layui-input">
                    </div>
                    <label class="layui-form-label">公司承担金额</label>
                    <div class="layui-input-inline">
                        <input placeholder="公司承担金额" class="layui-input">
                    </div>

                    <label class="layui-form-label">是否报警</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">否</option>
                            <option value="2">派出所</option>
                            <option value="3">交警</option>
                        </select>
                    </div>


                </div>

                <div class="layui-form-item">

                    <label class="layui-form-label">受理人</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入受理人" class="layui-input">
                    </div>
                    <label class="layui-form-label">确认责任</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">无责</option>
                            <option value="2">全责</option>
                            <option value="3">部分责</option>
                        </select>
                    </div>
                    <label class="layui-form-label">保险公司</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">已报</option>
                            <option value="2">未报</option>
                        </select>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div style="width: 100%;text-align: center">
        <hr>
        <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
        <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
        <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
        <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
        <br><br><br><br><br></div>
</div>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>