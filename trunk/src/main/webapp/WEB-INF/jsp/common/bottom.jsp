
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/layui/layui.js?v=2.2.2"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/layui/layui.all.js?v=2.2.5"></script>
<script type="text/javascript">
    var layer = layui.layer,$ =jQuery =layui.jquery,laypage = layui.laypage, laydate = layui.laydate;
    var form = layui.form, layedit = layui.layedit;
    var element = layui.element;
    var table = layui.table;
    var template = layui.laytpl;
    var upload = layui.upload;


    /**
     *tplId:模板ID,(script标签存放模板的ID)
     * rs:渲染的数据
     *viewId:视图ID
     */

    function tpl(tplId, rs, viewId) {
        var getTpl = $("#" + tplId).html()
        laytpl(getTpl).render(rs, function (html) {
            $("#" + viewId + "").html(html);
            form.render();
        });
    }
    function tplAppend(tplId, rs, viewId) {
        var getTpl = $("#" + tplId + "").html()
        laytpl(getTpl).render(rs, function (html) {
            $("#" + viewId + "").append(html);
            form.render();
        });
    }
    //fmt
    // 对Date的扩展，将 Date 转化为指定格式的String
    // 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
    // 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
    // 例子：
    // (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
    // (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18
    Date.prototype.Format = function (fmt) { //author: meizz
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }
    //ban

</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js"></script>