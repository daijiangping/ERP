<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${contextPath}/static/css/layout-default-latest.css">
</head>
<body>

<iframe name="content" class="ui-layout-center"
        src="${contextPath}/organization/1/maintain" frameborder="0" scrolling="auto"></iframe>

<iframe name="tree" class="ui-layout-west" id="tree"
        src="${contextPath}/organization/tree" frameborder="0" scrolling="auto"></iframe>
<script src="${contextPath}/static/js/jquery.layout-latest.min.js"></script>
<script>
    $(function () {
        $(document).ready(function () {
            $(document).ready(function () {
                var myLayout= $('body').layout({ applyDemoStyles: true,spacing_open:0});
                myLayout.sizePane("west", 220);
            });
        });
    });
    function refTree() {
        $("#tree").attr("src", "${contextPath}/organization/tree");
    }
</script>
</body>
</html>