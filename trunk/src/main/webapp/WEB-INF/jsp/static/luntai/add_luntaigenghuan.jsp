<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="layui-collapse layui-form  " style="color: black;width: 1380px;margin: 0 auto">
    <div class="layui-colla-item">
        <h1 align="center">轮胎更换</h1>
        <div class="layui-colla-content layui-show">
            <div action="">

                <div class="layui-form-item">

                    <label class="layui-form-label">车牌号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车牌号" class="layui-input" value="523112">
                    </div>

                    <label class="layui-form-label">车辆编号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车辆编号" class="layui-input">
                    </div>

                    <label class="layui-form-label">线路</label>
                    <div class="layui-input-inline">
                        <input placeholder="线路" class="layui-input">
                    </div>


                    <label class="layui-form-label">分组</label>
                    <div class="layui-input-inline">
                        <input placeholder="分组" class="layui-input">
                    </div>


                </div>


            </div>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">轮胎信息</h2>
        <div class="layui-colla-content layui-show">
            <div class="layui-form-item">

                <label class="layui-form-label">更换前轮胎位置</label>
                <div class="layui-input-inline">
                    <input placeholder="更换前轮胎位置" class="layui-input">
                </div>

                <label class="layui-form-label">更换日期</label>
                <div class="layui-input-inline">
                    <input placeholder="更换日期" class="layui-input">
                </div>

                <label class="layui-form-label">更换前品牌编号</label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="更换前品牌编号">
                </div>

                <label class="layui-form-label">累计公里数(km)</label>
                <div class="layui-input-inline">
                    <input value="" class="layui-input" placeholder="累计公里数(km)">
                </div>
            </div>
            <div class="layui-form-item">

                <label class="layui-form-label">处理方式</label>
                <div class="layui-input-inline">
                    <select name="">
                        <option value="1">报废</option>
                        <option value="2">未报废</option>
                    </select>
                </div>
                <label class="layui-form-label">处理时间</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2017-01-01">
                </div>

                <label class="layui-form-label">更换后轮胎位置(针对旧胎)</label>
                <div class="layui-input-inline">
                    <select name="">
                        <option value="1">左前轮</option>
                        <option value="2">右前轮</option>
                        <option value="3">左外后轮</option>
                        <option value="4">...</option>
                    </select>
                </div>

            </div>
            <div class="layui-form-item">


                <label class="layui-form-label">更换后品牌编号</label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="更换后品牌编号">
                </div>
                <label class="layui-form-label">初始公里数(km)</label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="初始公里数(km)">
                </div>

                <label class="layui-form-label">负责人</label>
                <div class="layui-input-inline">
                    <input class="layui-input">
                </div>


            </div>
            <div class="layui-form-item">
                <div class="layui-form-item layui-form-text" style="width: 1230px">
                    <label class="layui-form-label">备注</label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入备注" class="layui-textarea"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-colla-item">
        <div class="layui-colla-item">
            <div class="layui-colla-content layui-show">

                <div class="layui-form-item" style="text-align: center">
                    <hr>
                    <button class="layui-btn"><i class="layui-icon">&#xe608;</i> 保存新增</button>
                    <button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe604;</i> 保存复制</button>
                    <button class="layui-btn"><i class="layui-icon">&#xe606;</i> 保存关闭</button>
                    <button class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe605;</i> 关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>