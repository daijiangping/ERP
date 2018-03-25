<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="layui-collapse layui-form layui-form-pane" style="color: black;width: 1380px;margin: 0 auto">
    <div class="layui-colla-item">
        <h1 align="center">气瓶档案</h1>
        <div class="layui-colla-content layui-show">
            <div action="">

                <div class="layui-form-item">

                    <label class="layui-form-label">制造编号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入制造编号" class="layui-input" value="523112">
                    </div>

                    <label class="layui-form-label">产品批号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入产品批号" class="layui-input">
                    </div>

                    <label class="layui-form-label">气瓶类型</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">气瓶</option>
                            <option value="2">钢瓶</option>
                        </select>
                    </div>


                    <label class="layui-form-label">制造日期</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入制造日期" class="layui-input">
                    </div>


                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">制造单位</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入制造单位" class="layui-input" value="陕西气瓶厂">
                    </div>

                    <label class="layui-form-label">内胆直径</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入内胆直径" class="layui-input">
                    </div>

                    <label class="layui-form-label">本次检查日期</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="请输入本次检查日期">
                    </div>

                    <label class="layui-form-label">下次年审日期</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="请输入下次年审日期">
                    </div>

                </div>


                <div class="layui-form-item">

                    <label class="layui-form-label">容量(L)</label>
                    <div class="layui-input-inline">
                        <input value="10" class="layui-input">
                    </div>

                    <label class="layui-form-label">重量(KG)</label>
                    <div class="layui-input-inline">
                        <input value="200" class="layui-input">
                    </div>

                    <label class="layui-form-label">瓶体厚度(MM)</label>
                    <div class="layui-input-inline">
                        <input value="20557" class="layui-input">
                    </div>

                    <label class="layui-form-label">下次检测日期</label>
                    <div class="layui-input-inline">
                        <input placeholder="下次检测日期" class="layui-input">
                    </div>

                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">公称工作压力(mpa)</label>
                    <div class="layui-input-inline">
                        <input value="公称工作压力(mpa)" class="layui-input">
                    </div>

                    <label class="layui-form-label">水压实验压力</label>
                    <div class="layui-input-inline">
                        <input placeholder="水压实验压力" class="layui-input">
                    </div>

                    <label class="layui-form-label">填充介质</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">压缩天然气</option>
                        </select>
                    </div>

                    <label class="layui-form-label">装载重量</label>
                    <div class="layui-input-inline">
                        <input placeholder="装载重量" class="layui-input">
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">安全阀信息</h2>
        <div class="layui-colla-content layui-show">
            <div class="layui-form-item">

                <label class="layui-form-label">安全阀型号</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入安全阀型号" class="layui-input"  >
                </div>

                <label class="layui-form-label">安全阀类型</label>
                <div class="layui-input-inline">
                    <input placeholder="安全阀类型" class="layui-input"  >
                </div>

                <label class="layui-form-label">工作介质</label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="安全阀工作介质">
                </div>

                <label class="layui-form-label">安装位置</label>
                <div class="layui-input-inline">
                    <input value="安全阀安装位置" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">

                <label class="layui-form-label">整定压力</label>
                <div class="layui-input-inline">
                    <input placeholder="安全阀整定压力" class="layui-input"  >
                </div>
                <label class="layui-form-label">开始时间</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2017-01-01">
                </div>

                <label class="layui-form-label">测试压力</label>
                <div class="layui-input-inline">
                    <input value="安全阀密封测试压力" class="layui-input">
                </div>

            </div>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">安装信息</h2>
        <div class="layui-colla-content layui-show">
            <div class="layui-form-item" style="width: 80%">
                <label class="layui-form-label">登记证编号</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  placeholder="使用登记证编号">
                </div>
                <label class="layui-form-label">注册代码</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  placeholder="气瓶注册代码">
                </div>
                <label class="layui-form-label">安装单位</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  placeholder="气瓶安装单位">
                </div>

            </div>
            <div class="layui-form-item" style="width: 80%">
                <label class="layui-form-label">安装日期</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  placeholder="安装日期">
                </div>
                <label class="layui-form-label">计划报废日期</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  placeholder="计划报废日期">
                </div>
                <label class="layui-form-label">实际报废日期</label>
                <div class="layui-input-inline">
                    <input class="layui-input"  placeholder="实际报废日期">
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
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">车辆信息</h2>
            <div class="layui-colla-content layui-show">
                <div class="layui-form-item">

                    <label class="layui-form-label">车牌号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车牌号" class="layui-input"  >
                    </div>

                    <label class="layui-form-label">车自编号</label>
                    <div class="layui-input-inline">
                        <input placeholder="车自编号" class="layui-input"  >
                    </div>

                    <label class="layui-form-label">分组</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="分组">
                    </div>

                    <label class="layui-form-label">线路</label>
                    <div class="layui-input-inline">
                        <input value="" class="layui-input">
                    </div>
                </div>

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