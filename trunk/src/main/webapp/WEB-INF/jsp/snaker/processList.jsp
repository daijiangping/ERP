<%@ include file="../include.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
	<meta charset="UTF-8">
	<title>流程管理</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<!-- load css -->
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/bootstrap.min.css" media="all">
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/font/iconfont.css" media="all">
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css?v1.0.0" media="all">
</head>

<body>
<div class="container-fluid larry-wrapper">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<!--头部搜索-->
			<section class="panel panel-padding">

					<button class="layui-btn layui-btn-small modal-iframe" data-params='{"content": "${contextPath}/snaker/process/designer", "title": "设计新流程","full":"true"}'>
						<i class="iconfont">&#xe649;</i> 设计新流程
					</button>
					<button class="layui-btn layui-btn-small modal-iframe" data-params='{"content": "${contextPath}/snaker/process/deploy", "title": "部署新流程","full":"true"}'>
						<i class="iconfont">&#xe649;</i> 部署新流程
					</button>

					<form class="layui-form pull-right" style="margin-top: -5px;" action="${contextPath}/snaker/process/list">
						<div class="layui-form">
							<div class="layui-inline">
								<div class="layui-input-inline">
									<input class="layui-input" name="displayName" value="${param['displayName']}" placeholder="流程名称">
								</div>
							</div>
							<div class="layui-inline">
								<button lay-submit class="layui-btn" lay-filter="search">查找</button>
							</div>
						</div>
					</form>
			</section>

			<!--列表-->
			<section class="panel panel-padding">
				<div id="list" class="layui-form"></div>

				<div class="text-right" id="page"></div>
			</section>
		</div>
	</div>
</div>

</body>
<script id="list-tpl" type="text/html" data-params='{"url":"${contextPath}/snaker/process/list","dataName":"proccessList","pageid":"#page"}'>
	<table id="example" class="layui-table lay-even" data-name="proccessList"  data-tplid="list-tpl">
		<thead>
		<tr>
			<%--<th width="30"><input type="checkbox" id="checkall" data-name="checkbox" lay-filter="check" lay-skin="primary"></th>--%>
			<th>名称</th>
			<th>流程显示名称</th>
			<th>状态</th>
			<th>版本号</th>
			<th width="142">操作</th>
		</tr>
		</thead>
		<tbody>
		{{# layui.each(d.list, function(index, item){ }}
		<tr>
			<%--<td><input type="checkbox" name="checkbox" value="{{ item.id}}" lay-skin="primary"></td>--%>
			<td>{{ item.name}}</td>
			<td>{{ item.displayName}}</td>
			<td><input type="checkbox" name="state" lay-skin="switch" lay-text="可用|禁用" {{#if (item.state == 1){ }}checked="checked" {{# } }} lay-filter="ajax" data-params='{"url":"${contextPath}/snaker/process/updProState","data":"id={{ item.id}}"}'> </td>
			<td>{{ item.version}}</td>
			<td>
				<button class="layui-btn layui-btn-mini modal-iframe" data-params='{"content": "${contextPath}/{{ item.instanceUrl}}?processId={{ item.id}}&processName={{ item.name}}", "title": "启动流程","full":"true"}'>
					<i class="iconfont">&#xe653;</i>启动
				</button>
				<button class="layui-btn layui-btn-mini modal-iframe" data-params='{"content": "${contextPath}/snaker/process/edit/{{item.id }}", "title": "编辑","full":"true"}'>
					<i class="iconfont">&#xe653;</i>编辑
				</button>
				<button class="layui-btn layui-btn-mini layui-btn-normal modal-iframe" data-params='{"content": "${contextPath}/snaker/process/designer?processId={{item.id }}", "title": "部署","full":"true"}'>
					<i class="iconfont">&#xe649;</i>设计
				</button>

			</td>
		</tr>
		{{# }); }}
		</tbody>

	</table>
</script>
<script>
    layui.use('list');
</script>

</html>