<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/nuoplus/jsp/he.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>



<div class="layui-collapse layui-form layui-form-pane" style="color: black;width: 1350px;margin: 0 auto">
    <div class="layui-colla-item">
        <h1 align="center">车辆档案</h1>
        <div class="layui-colla-content layui-show">
            <div   action="">

                <div class="layui-form-item">

                    <label class="layui-form-label">档案号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入档案号" class="layui-input" value="DW0-111">
                    </div>

                    <label class="layui-form-label">车辆编号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入维修车辆编号" class="layui-input">
                    </div>

                    <label class="layui-form-label">车主姓名</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车主姓名" class="layui-input">
                    </div>


                    <label class="layui-form-label">车牌号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车牌号" class="layui-input">
                    </div>


                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">车型</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车型" class="layui-input" value="中客普">
                    </div>

                    <label class="layui-form-label">厂牌型号</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入厂牌型号" class="layui-input">
                    </div>

                    <label class="layui-form-label">座位</label>
                    <div class="layui-input-inline">
                        <input value="12" class="layui-input">
                    </div>

                    <label class="layui-form-label">颜色</label>
                    <div class="layui-input-inline">
                        <input value="绿/白" class="layui-input">
                    </div>

                </div>


                <div class="layui-form-item">

                    <label class="layui-form-label">发动机号</label>
                    <div class="layui-input-inline">
                        <input value="10192703" class="layui-input">
                    </div>

                    <label class="layui-form-label">发动机型号</label>
                    <div class="layui-input-inline">
                        <input value="GB2533" class="layui-input">
                    </div>

                    <label class="layui-form-label">车识别码</label>
                    <div class="layui-input-inline">
                        <input value="20557" class="layui-input">
                    </div>

                    <label class="layui-form-label">车架型号</label>
                    <div class="layui-input-inline">
                        <input value="ROBHH668OPUIO" class="layui-input">
                    </div>

                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">轮胎规格</label>
                    <div class="layui-input-inline">
                        <input value="650-16" class="layui-input">
                    </div>

                    <label class="layui-form-label">所属路队</label>
                    <div class="layui-input-inline">
                        <input value="102" class="layui-input">
                    </div>

                    <label class="layui-form-label">所属组织</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">总公司</option>
                            <option value="2">分公司</option>
                            <option value="3">分1公司</option>
                        </select>
                    </div>


                    <label class="layui-form-label">车辆等级</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">空调车</option>
                            <option value="2">普通车</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">车辆类型</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">公务车</option>
                            <option value="2">运营车</option>
                            <option value="2">抢修车</option>
                            <option value="2">货运车</option>
                        </select>
                    </div>


                    <label class="layui-form-label">长度</label>
                    <div class="layui-input-inline">
                        <input placeholder="长度" class="layui-input">
                    </div>
                    <label class="layui-form-label">宽度</label>
                    <div class="layui-input-inline">
                        <input placeholder="宽度" class="layui-input">
                    </div>
                    <label class="layui-form-label">高度</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入高度" class="layui-input">
                    </div>

                </div>

                <div class="layui-form-item">

                    <label class="layui-form-label">车辆油耗</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入车辆油耗" class="layui-input">
                    </div>
                    <label class="layui-form-label">初始里程</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入初始里程" class="layui-input">
                    </div>
                    <label class="layui-form-label">报废日期</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入预计报废日期" class="layui-input">
                    </div>
                    <label class="layui-form-label">车辆状态</label>
                    <div class="layui-input-inline">
                        <select name="">
                            <option value="1">正常</option>
                            <option value="2">报废</option>
                            <option value="2">维修</option>
                            <option value="2">停用</option>
                        </select>
                    </div>

                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">燃料种类</label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="1">汽油</option>
                            <option value="2">采油</option>
                        </select>
                    </div>

                    <label class="layui-form-label">登记日期</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入登记日期" class="layui-input date-item">
                    </div>
                    <label class="layui-form-label">入户日期</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入入户日期" class="layui-input date-item">
                    </div>
                    <label class="layui-form-label">报废日期</label>
                    <div class="layui-input-inline">
                        <input placeholder="请输入报废日期" class="layui-input date-item">
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">车辆保险</h2>
        <div class="layui-colla-content layui-show">
            <div class="layui-form-item">

                <label class="layui-form-label">年检时间</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入年检时间" class="layui-input" value="DW0-111">
                </div>

                <label class="layui-form-label">交强险单号</label>
                <div class="layui-input-inline">
                    <input placeholder="" class="layui-input" value="AIAF0001DFA2007B001068">
                </div>

                <label class="layui-form-label">交强开始</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2017-01-01">
                </div>

                <label class="layui-form-label">交强结束</label>
                <div class="layui-input-inline">
                    <input value="2019-02-05" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">

                <label class="layui-form-label">三者单号</label>
                <div class="layui-input-inline">
                    <input placeholder="请输入三者单号" class="layui-input" value="DW05202111">
                </div>
                <label class="layui-form-label">开始时间</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2017-01-01">
                </div>

                <label class="layui-form-label">结束时间</label>
                <div class="layui-input-inline">
                    <input value="2019-02-05" class="layui-input">
                </div>
                <label class="layui-form-label">承险单位</label>
                <div class="layui-input-inline">
                    <input placeholder="" class="layui-input" value="中国平安保险有限公司">
                </div>

            </div>
            <div class="layui-form-item">

                <label class="layui-form-label">是否车损</label>
                <div class="layui-input-inline">
                    <select name="">
                        <option value="1">是</option>
                        <option value="2">否</option>
                    </select>
                </div>
                <label class="layui-form-label">成员险开始</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2017-01-01">
                </div>

                <label class="layui-form-label">成员险结束</label>
                <div class="layui-input-inline">
                    <input value="2019-02-05" class="layui-input">
                </div>
                <label class="layui-form-label">承险单位</label>
                <div class="layui-input-inline">
                    <input placeholder="" class="layui-input" value="康泰人寿">
                </div>

            </div>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">车辆保养</h2>
        <div class="layui-colla-content layui-show">
            <div class="layui-form-item" style="width: 80%">
                <label class="layui-form-label">一级保养</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2017-01-01">
                </div>
                <label class="layui-form-label">二级保养</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2018-01-01">
                </div>
                <label class="layui-form-label">三级保养</label>
                <div class="layui-input-inline">
                    <input class="layui-input" value="2019-01-01">
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

</body>
</html>
<jsp:include page="/resources/nuoplus/jsp/bo.jsp"></jsp:include>