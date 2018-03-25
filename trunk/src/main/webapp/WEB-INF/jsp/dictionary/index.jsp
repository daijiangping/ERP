<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${contextPath}/static/css/layout-default-latest.css">
    <style>
        .ui-layout-pane{
            padding-right: 0!important;
        }
    </style>
</head>
<body>

<iframe name="content" class="ui-layout-center"
        src="${contextPath}/dictionary/1/findListByParent" frameborder="0" scrolling="auto"></iframe>

<iframe name="tree" class="ui-layout-west" id="tree"
        src="${contextPath}/dictionary/tree" frameborder="0" scrolling="auto"></iframe>
<script src="${contextPath}/static/js/jquery.layout-latest.min.js"></script>
<script>
    $(function () {
            var myLayout= $('body').layout({ applyDemoStyles: true,spacing_open:0});
            myLayout.sizePane("west", 300);
    });
    function refTree() {
        $("#tree").attr("src", "${contextPath}/dictionary/tree");
    }
</script>
</body>
</html>