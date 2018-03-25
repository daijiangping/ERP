<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .site-doc-icon li {
        float: left;
        width: 20%;
        padding: 10px;
        font-size: 10px;
        line-height: 1.4;
        text-align: center;
        background-color: #f9f9f9;
        border: 1px solid #fff;
        cursor: pointer;
    }

    .site-doc-icon li:hover {
        color: #fff;
        background-color: #563d7c;
    }
</style>
<div id="menu_icon" style="display: none">
    <ul class="site-doc-icon" style="float: left;">
        <li>
            <i class="layui-icon">&#xe652;</i>
            <div class="name">播放</div>
            <div class="code">&amp;#xe652;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe651;</i>
            <div class="name">播放暂停</div>
            <div class="code">&amp;#xe651;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe6fc;</i>
            <div class="name">音乐</div>
            <div class="code">&amp;#xe6fc;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe6ed;</i>
            <div class="name">视频</div>
            <div class="code">&amp;#xe6ed;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe688;</i>
            <div class="name">语音</div>
            <div class="code">&amp;#xe688;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe645;</i>
            <div class="name">喇叭</div>
            <div class="code">&amp;#xe645;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe611;</i>
            <div class="name">对话</div>
            <div class="code">&amp;#xe611;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe614;</i>
            <div class="name">设置</div>
            <div class="code">&amp;#xe614;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe60f;</i>
            <div class="name">隐身-im</div>
            <div class="code">&amp;#xe60f;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe615;</i>
            <div class="name">搜索</div>
            <div class="code">&amp;#xe615;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe641;</i>
            <div class="name">分享</div>
            <div class="code">&amp;#xe641;</div>
        </li>

        <li>
            <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop">&#x1002;</i>
            <div class="name">刷新</div>
            <div class="code">&amp;#x1002;</div>
        </li>

        <li>
            <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop">&#xe63d;</i>
            <div class="name">loading</div>
            <div class="code">&amp;#xe63d;</div>
        </li>

        <li>
            <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop">&#xe63e;</i>
            <div class="name">loading</div>
            <div class="code">&amp;#xe63e;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe620;</i>
            <div class="name">设置</div>
            <div class="code">&amp;#xe620;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe628;</i>
            <div class="name">引擎</div>
            <div class="code">&amp;#xe628;</div>
        </li>
        <li>
            <i class="layui-icon">&#x1006;</i>
            <div class="name">阅卷错号</div>
            <div class="code">&amp;#x1006;</div>
        </li>
        <li>
            <i class="layui-icon">&#x1007;</i>
            <div class="name">错-</div>
            <div class="code">&amp;#x1007;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe629;</i>
            <div class="name">报表</div>
            <div class="code">&amp;#xe629;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe600;</i>
            <div class="name">star</div>
            <div class="code">&amp;#xe600;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe617;</i>
            <div class="name">圆点</div>
            <div class="code">&amp;#xe617;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe606;</i>
            <div class="name">客服</div>
            <div class="code">&amp;#xe606;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe609;</i>
            <div class="name">发布</div>
            <div class="code">&amp;#xe609;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe60a;</i>
            <div class="name">21cake_list</div>
            <div class="code">&amp;#xe60a;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe62c;</i>
            <div class="name">图表</div>
            <div class="code">&amp;#xe62c;</div>
        </li>
        <li>
            <i class="layui-icon">&#x1005;</i>
            <div class="name">正确</div>
            <div class="code">&amp;#x1005;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe61b;</i>
            <div class="name">换肤2</div>
            <div class="code">&amp;#xe61b;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe610;</i>
            <div class="name">在线</div>
            <div class="code">&amp;#xe610;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe602;</i>
            <div class="name">右右</div>
            <div class="code">&amp;#xe602;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe603;</i>
            <div class="name">左左</div>
            <div class="code">&amp;#xe603;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe62d;</i>
            <div class="name">表格</div>
            <div class="code">&amp;#xe62d;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe62e;</i>
            <div class="name">icon_树</div>
            <div class="code">&amp;#xe62e;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe62f;</i>
            <div class="name">上传</div>
            <div class="code">&amp;#xe62f;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe61f;</i>
            <div class="name">添加</div>
            <div class="code">&amp;#xe61f;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe601;</i>
            <div class="name">下载</div>
            <div class="code">&amp;#xe601;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe630;</i>
            <div class="name">选择模版48</div>
            <div class="code">&amp;#xe630;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe631;</i>
            <div class="name">工具</div>
            <div class="code">&amp;#xe631;</div>
        </li>

        <li>
            <i class="layui-icon">&#xe654;</i>
            <div class="name">添加</div>
            <div class="code">&amp;#xe654;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe642;</i>
            <div class="name">编辑</div>
            <div class="code">&amp;#xe642;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe640;</i>
            <div class="name">删除</div>
            <div class="code">&amp;#xe640;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe61a;</i>
            <div class="name">向下</div>
            <div class="code">&amp;#xe61a;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe621;</i>
            <div class="name">文件</div>
            <div class="code">&amp;#xe621;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe632;</i>
            <div class="name">布局</div>
            <div class="code">&amp;#xe632;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe618;</i>
            <div class="name">对勾</div>
            <div class="code">&amp;#xe618;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe608;</i>
            <div class="name">添加</div>
            <div class="code">&amp;#xe608;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe633;</i>
            <div class="name">么么－翻页</div>
            <div class="code">&amp;#xe633;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe61c;</i>
            <div class="name">404</div>
            <div class="code">&amp;#xe61c;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe634;</i>
            <div class="name">轮播组图</div>
            <div class="code">&amp;#xe634;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe607;</i>
            <div class="name">help</div>
            <div class="code">&amp;#xe607;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe635;</i>
            <div class="name">代码1</div>
            <div class="code">&amp;#xe635;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe636;</i>
            <div class="name">进水</div>
            <div class="code">&amp;#xe636;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe60b;</i>
            <div class="name">关于</div>
            <div class="code">&amp;#xe60b;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe619;</i>
            <div class="name">向上</div>
            <div class="code">&amp;#xe619;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe637;</i>
            <div class="name">日期</div>
            <div class="code">&amp;#xe637;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe61d;</i>
            <div class="name">文件</div>
            <div class="code">&amp;#xe61d;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe604;</i>
            <div class="name">top</div>
            <div class="code">&amp;#xe604;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe612;</i>
            <div class="name">好友请求</div>
            <div class="code">&amp;#xe612;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe605;</i>
            <div class="name">对</div>
            <div class="code">&amp;#xe605;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe638;</i>
            <div class="name">窗口</div>
            <div class="code">&amp;#xe638;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe60c;</i>
            <div class="name">表情</div>
            <div class="code">&amp;#xe60c;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe616;</i>
            <div class="name">正确</div>
            <div class="code">&amp;#xe616;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe613;</i>
            <div class="name">我的好友</div>
            <div class="code">&amp;#xe613;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe61e;</i>
            <div class="name">文件下载</div>
            <div class="code">&amp;#xe61e;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe60d;</i>
            <div class="name">图片</div>
            <div class="code">&amp;#xe60d;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe64c;</i>
            <div class="name">链接</div>
            <div class="code">&amp;#xe64c;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe60e;</i>
            <div class="name">记录</div>
            <div class="code">&amp;#xe60e;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe622;</i>
            <div class="name">文件夹</div>
            <div class="code">&amp;#xe622;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe64f;</i>
            <div class="name">font-D</div>
            <div class="code">&amp;#xe64f;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe64d;</i>
            <div class="name">unlink</div>
            <div class="code">&amp;#xe64d;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe639;</i>
            <div class="name">编辑_文字</div>
            <div class="code">&amp;#xe639;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe623;</i>
            <div class="name">三角</div>
            <div class="code">&amp;#xe623;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe63f;</i>
            <div class="name">单选框-候选</div>
            <div class="code">&amp;#xe63f;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe643;</i>
            <div class="name">单选框-选中</div>
            <div class="code">&amp;#xe643;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe647;</i>
            <div class="name">居中对齐</div>
            <div class="code">&amp;#xe647;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe648;</i>
            <div class="name">右对齐</div>
            <div class="code">&amp;#xe648;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe649;</i>
            <div class="name">左对齐</div>
            <div class="code">&amp;#xe649;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe626;</i>
            <div class="name">勾选框（未打勾）</div>
            <div class="code">&amp;#xe626;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe627;</i>
            <div class="name">勾选框（已打勾）</div>
            <div class="code">&amp;#xe627;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe62b;</i>
            <div class="name">加粗</div>
            <div class="code">&amp;#xe62b;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe63a;</i>
            <div class="name">聊天 对话 IM 沟通</div>
            <div class="code">&amp;#xe63a;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe624;</i>
            <div class="name">文件夹_反</div>
            <div class="code">&amp;#xe624;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe63b;</i>
            <div class="name">手机</div>
            <div class="code">&amp;#xe63b;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe650;</i>
            <div class="name">表情</div>
            <div class="code">&amp;#xe650;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe64b;</i>
            <div class="name">html</div>
            <div class="code">&amp;#xe64b;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe63c;</i>
            <div class="name">表单</div>
            <div class="code">&amp;#xe63c;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe62a;</i>
            <div class="name">tab</div>
            <div class="code">&amp;#xe62a;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe64e;</i>
            <div class="name">emw_代码</div>
            <div class="code">&amp;#xe64e;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe646;</i>
            <div class="name">字体-下划线</div>
            <div class="code">&amp;#xe646;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe625;</i>
            <div class="name">三角</div>
            <div class="code">&amp;#xe625;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe64a;</i>
            <div class="name">图片</div>
            <div class="code">&amp;#xe64a;</div>
        </li>
        <li>
            <i class="layui-icon">&#xe644;</i>
            <div class="name">斜体</div>
            <div class="code">&amp;#xe644;</div>
        </li>
    </ul>
</div>
