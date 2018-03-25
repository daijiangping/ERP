<%@ include file="../include.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${contextPath}/resources/js/zTree/css/metroStyle/metroStyle.css">
</head>
<body>

<ul id="tree" class="ztree"></ul>

<script src="${contextPath}/resources/js/zTree/js/jquery.ztree.core.min.js"></script>
<script>
    $(function () {
        var setting = {
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback : {
                onClick : function(event, treeId, treeNode) {
                    parent.frames['content'].location.href = "${contextPath}/organization/"+treeNode.id+"/maintain";
                }
            },
            async: {
                enable: true,
                url: "${contextPath}/organization/getOrgZtreeSubNodes",
                autoParam: ["id", "name"]
            }
        };

        var zNodes =[
            <c:forEach items="${organizationList}" var="o">
                { id:${o.id}, pId:${o.parentId}, name:"${o.name}", open:${o.rootNode}},
            </c:forEach>
        ];

        $(document).ready(function(){
            var treeObj=$.fn.zTree.init($("#tree"), setting, zNodes);
            var nodes = treeObj.getNodes();
            treeObj.selectNode(nodes[0]);
        });
    });
    //异步刷新指定父节点下所有子节点
    function refTree(nodeId) {
        var treeObj = $.fn.zTree.getZTreeObj("tree");
        var treeNode = treeObj.getNodeByParam("id", nodeId, null);
        console.log(treeNode);
        treeNode.isParent = true;
        treeObj.reAsyncChildNodes(treeNode, "refresh");
        treeObj.selectNode(treeNode);

    }
</script>
</body>
</html>