<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${contextPath}/static/css/layout-default-latest.css">
    <style>
        .ui-layout-pane{
            padding: 0!important;
        }
    </style>
</head>

<body style="padding: 0">

<iframe name="content" class="ui-layout-center"
        src="${contextPath}/resource/0/maintain" frameborder="0" scrolling="auto"></iframe>

<iframe name="tree" class="ui-layout-west" id="tree"
        src="${contextPath}/resource/tree" frameborder="0" scrolling="auto"></iframe>
<script src="${contextPath}/static/js/jquery.layout-latest.min.js"></script>
<script>
    $(function () {
        $(document).ready(function () {
           var myLayout= $('body').layout({ applyDemoStyles: true,spacing_open:0,showOverflowOnHover:false });
            myLayout.sizePane("west", 260);
        });
    });
    function refTree() {
        $("#tree").attr("src", "${contextPath}/resource/tree");
    }
</script>
</body>
</html>