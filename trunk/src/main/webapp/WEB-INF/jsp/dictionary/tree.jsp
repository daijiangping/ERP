<%@ include file="../include.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${contextPath}/resources/js/zTree/css/metroStyle/metroStyle.css">
    <style>
        body::-webkit-scrollbar {/*滚动条整体样式*/
            width: 8px;     /*高宽分别对应横竖滚动条的尺寸*/
            height: 1px;
        }
        body::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
            border-radius: 10px;
            -webkit-box-shadow: inset 0 0 5px rgba(158, 158, 158, 0.2);
            background: #bfbfbf;
        }
        body::-webkit-scrollbar-track {/*滚动条里面轨道*/
            -webkit-box-shadow: inset 0 0 5px rgba(158, 158, 158,0.2);
            border-radius: 10px;
            background: #EDEDED;
        }
    </style>
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
                    parent.frames['content'].location.href = "${contextPath}/dictionary/"+treeNode.id+"/findListByParent";
                }
            },
            async: {
                enable: true,
                url: "${contextPath}/dictionary/getDicZtreeSubNodes",
                autoParam: ["id", "name"]
            }
        };

        var zNodes =[
            <c:forEach items="${dictionaryList}" var="dic">
            { id:${dic.id}, pId:${dic.parentId}, name:"${dic.title}", open:${dic.rootNode}},
            </c:forEach>
        ];

        $(document).ready(function(){
            var treeObj = $.fn.zTree.init($("#tree"), setting, zNodes);
            var nodes = treeObj.getNodes();
            treeObj.selectNode(nodes[0]);
        });
    });
/*    function refTree() {
        var treeObj = $.fn.zTree.getZTreeObj("tree");//根据 treeId 获取 zTree 对象
        treeObj.reAsyncChildNodes(null, "refresh");//刷新节点,null表示根节点
    }*/
    //异步刷新指定父节点下所有子节点
    function refTree(nodeId) {
        var treeObj = $.fn.zTree.getZTreeObj("tree");
        var treeNode = treeObj.getNodeByParam("id", nodeId, null);
        console.log(treeNode);
        treeNode.isParent = true;
        treeObj.reAsyncChildNodes(treeNode, "refresh",false);
        treeObj.selectNode(treeNode);
    }
</script>
</body>
</html>