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
/*        body::-webkit-scrollbar-thumb {!*滚动条里面小方块*!
            border-radius: 10px;
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            background: #535353;
        }
        body::-webkit-scrollbar-track {!*滚动条里面轨道*!
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            border-radius: 10px;
            background: #EDEDED;
        }*/
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
                    enable: true,
                    idKey: "id",
                    pIdKey: "pId"
                }
            },
            callback : {
                onClick : function(event, treeId, treeNode) {
                    parent.frames['content'].location.href = "${contextPath}/resource/"+treeNode.id+"/maintain";
                }
            },
            async: {
                enable: true,
                url: "${contextPath}/resource/getZtreeSubNodes",
                autoParam: ["id", "name"]
            }
        };

        var zNodes =[{ id:0, pId:"zt", name:"根节点"},
            <c:forEach items="${resources}" var="o">
                { id:${o.id}, pId:${o.parentId}, name:"${o.name}"},
            </c:forEach>
        ];

        $(document).ready(function(){
            var treeObj = $.fn.zTree.init($("#tree"), setting, zNodes);
            var nodes = treeObj.getNodes();
            treeObj.selectNode(nodes[0]);
            treeObj.expandAll(true);
        });
/*        layui.use('tree', function () {
                layui.tree({
                    elem: '#tree' //指定元素
                    , target: '_blank' //是否新选项卡打开（比如节点返回href才有效）
                    , click: function (item) { //点击节点回调
                        var meunId = item.id;
                        $("#iframe").attr("src", "${pageContext.request.contextPath}/xtgl/cdlb?meunId=" + meunId + "&meunName=" + item.name);

                    }
                    , nodes: [
                        <c:forEach items="${resources}" var="o">
                        { id:${o.id}, pId:${o.parentId}, name:"${o.name}"},
                        </c:forEach>
                    ]
            })
        });*/
    });
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