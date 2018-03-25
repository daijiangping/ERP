<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/10 0010
  Time: 上午 10:54
  To change this template use File | Settings | File Templates.
--%>
<script id="menu-tpl" type="text/html" data-params='{"url":"${contextPath}/menus","listid":"menu","icon":"true"}'>
    {{# layui.each(d.list, function(index, item){ }}
    <li class="layui-nav-item  {{# if(index==0){ }}layui-this{{# } }}">
        <a href="javascript:;" data-title="{{item.title}}"><i class="iconfont">{{item.icon}}</i><span>{{item.title}}</span></a>
    </li>
    {{# }); }}
</script>

<script id="submenu-tpl" type="text/html">
    {{# layui.each(d.list, function(index, menu){ }}
    <div class="sub-menu">
        <ul class="layui-nav layui-nav-tree">
            {{# layui.each(menu.sub, function(index, submenu){ }} {{# if(submenu.sub && submenu.sub.length>0){ }}
            <li class="layui-nav-item layui-nav-itemed" data-bind="0" >
                <a href="javascript:;" data-title="{{submenu.title}}">
                    <i class="iconfont">{{submenu.icon}}</i>
                    <span>{{submenu.title}}</span>
                    <em class="layui-nav-more"></em>
                </a>
                <dl class="layui-nav-child">
                    {{# layui.each(submenu.sub, function(index, secMenu){ }}
                    <dd >
                        <a href="javascript:;" data-url="${contextPath}{{secMenu.url}}" data-title="{{secMenu.name}}">
                            <i class="iconfont " data-icon='{{secMenu.icon}}'>{{secMenu.icon}}</i>
                            <span>{{secMenu.name}}</span>
                        </a>
                    </dd>
                    {{# }); }}
                </dl>
            </li>
            {{# }else{ }}
            <li class="layui-nav-item layui-nav-itemed" >
                <a href="javascript:;" data-url="${contextPath}{{submenu.href}}" data-title="{{submenu.title}}">
                    <i class="iconfont" data-icon='{{submenu.icon}}'>{{submenu.icon}}</i>
                    <span>{{submenu.title}}</span>
                </a>
            </li>
            {{# } }} {{# }); }}
        </ul>
    </div>
    {{# }); }}
</script>

