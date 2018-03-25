<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/layui.css?v=1.0.9">
    <script type="text/javascript" src="http://api.map.baidu.com/getscript?v=2.0&ak=f5ZXdc4bwfGNyi1HuAu6CkMgraSB9G6I">
    </script>
    <style>
        body{
            /*padding: 10px 10px 0 5px;*/
            background: white;
        }
        header{
            height: 100px;
            width: 100%;
        }
        header img{
            margin-left: 10%;
            margin-top: -15px;
        }
        .login{
            display: block;
            margin-left: 70%;
            margin-top: -25px;
        }
        .main{
            width: 40%;
            height:490px;
            border: 1px solid gainsboro;
            margin-left: 30%;
            margin-bottom: 100px;
            margin-top: 60px;
            border-radius: 5px;
            /*box-shadow: 0 0 2px #666666;*/
        }
        .main:hover{
            box-shadow: 2px 2px 32px #666666;
        }
        .footer{
            position: fixed;
            bottom: 0;
            height: 55px;
            width: 100%;
            border: 1px solid gainsboro;
            background: #e1e1e1;
            text-align: center;
            line-height: 55px;
            color: grey;
        }
        .login a:hover{
            color: blue;
            text-decoration: underline;
        }
        .tangram-suggestion-main
        {
            z-index:19891055;
        }
    </style>
</head>
<body>
    <header>
        <img src="${contextPath}/resources/login/images/LOGO.png" alt="">
        <span class="login"><a href="${contextPath}/login">已有账号，去登录</a></span>
    </header>
    <hr style="margin-top: -10px">
    <div class="main" style="text-align: center;padding: 10px">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 15px;">
            <legend style="font-weight: 800;font-size: 16px;color:#009688 ">企业用户注册</legend>
        </fieldset>
        <form class="layui-form-pane layui-form">
            <input type="hidden" name="longitude" id="longitude">
            <input type="hidden" name="latitude" id="latitude">
            <div class="layui-inline">
                <label class="layui-form-label">公司名称</label>
                <div class="layui-input-inline">
                    <input type="text" style="width:300px" name="companyName"
                           placeholder="请输入公司名称" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label">企业税号</label>
                <div class="layui-input-inline">
                    <input type="text" style="width: 300px" name="enterpriseNumber"
                           placeholder="请输入企业税号" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label">地址</label>
                <div class="layui-input-inline">
                    <input type="text" style="width: 300px" name="companyAddress" id="companyAddress" onclick="getMap();"
                           placeholder="请输入地址" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label">联系人</label>
                <div class="layui-input-inline">
                    <input type="text" style="width: 300px" name="linkman"
                           placeholder="请输入联系人" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label">联系电话</label>
                <div class="layui-input-inline">
                    <input type="text" style="width:300px" name="iphone"
                           placeholder="请输入联系电话" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <br>
            <br>
            <div class="layui-form-item" style="margin-left: 14.3%"  data-toggle="distpicker">
                <label class="layui-form-label">地区</label>
                <div class="layui-input-inline" style="width: 19%">
                    <select data-province="---- 选择省 ----" id="sheng"
                            lay-filter="formDemo" class="layui-input" lay-ignore>
                    </select>
                </div>

                <div class="layui-input-inline" style="width: 19%">
                    <select data-city="---- 选择市 ----" id="shi"
                            lay-ignore class="layui-input">
                    </select>
                </div>
                <div class="layui-input-inline" style="width: 19%">
                    <select  data-district="---- 选择区 ----" id="qu"
                             lay-ignore class="layui-input">
                    </select>
                </div>
            </div>
            <p>
                <input type="checkbox" lay-skin="primary" lay-filter="check">&nbsp;
                <span>同意 <span style="color: #1E9FFF;cursor: pointer">《聚良机电》</span>注册条款</span>
            </p>
            <br>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a id="sub" class="layui-btn layui-btn-disabled" style="width: 240px" lay-submit="" lay-filter="demo1">立即注册</a>
                </div>
            </div>
        </form>
    </div>
    <div class="footer">
        <span class="footerText">Copyright © 2016-2017 聚良机电管理平台  陕ICP备: 10227676号</span>
    </div>
</body>
<script src="${contextPath}/resources/js/layui/layui.js"></script>
<script src="${contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<div id="baidu_map" hidden>
    <div class="layui-form" >
        <div class="layui-inline"   id="r-result" style="float: left;padding-left: 20px;padding-top: 10px;padding-bottom: 10px;">
            <label class="layui-form-label"  style="width: 170px;">输入地址关键字进行匹配：</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="suggestId" onblur="blurAdd()" placeholder="请输入地址关键字"  size="20" style="width: 241px;"/>
            </div>
<%--            <div class="layui-input-inline">
                <a id="baocun" class="layui-btn " style="float: right;padding-right: 30px;" onclick="saveAdd()" >保存位置信息</a>
            </div>--%>
        </div>
        <div id="searchResultPanel"  style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
        <div id="container" style="width: 100%;height: 525px;">
        </div>
    </div>
</div>
<script>
    layui.use(['form', 'layedit', 'laydate','upload','jquery'], function(){
        var form = layui.form()
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });
        //监听提交
        form.on('submit(demo1)', function(data){
            var sheng = $("#sheng").val();
            var shi = $("#shi").val();
            var qu = $("#qu").val();
            var area = sheng + "," + shi + "," + qu;
            var areaCode = $("#qu option:checked").data("code");
            data.field.area = area;
            data.field.areaCode = areaCode;
            $.post('${contextPath}/user/register',data.field,function (rs) {
                if (rs.success) {
                    layer.alert('注册成功，请登录', function(){
                        window.location = "${contextPath}/login";
                    });
                } else {
                    layer.msg("注册失败");
                }
            })
        });
        form.on('checkbox(check)', function (data) {
            if (data.elem.checked) {
                $("#sub").removeClass("layui-btn-disabled");
            } else {
                $("#sub").addClass("layui-btn-disabled");
            }
        })
        layui.upload({
            url: '' //上传接口
            ,success: function(res){ //上传成功后的回调
                console.log(res)
            }
        });

        layui.upload({
            url: '/test/upload.json'
            ,elem: '#test' //指定原始元素，默认直接查找class="layui-upload-file"
            ,method: 'get' //上传接口的http类型
            ,success: function(res){
                LAY_demo_upload.src = res.url;
            }
        });
/*        form.on('select(formDemo)', function(data){
           form.render()
            return false;
        });*/
    });

    function getMap() {
        layer.open({
            type: 1,
            title: "选择地址",
            maxmin: true,
            content: $('#baidu_map'),
            area: ["60%","80%"],
            moveOut: false,
            scrollbar: false
        });
        $('.layui-layer-content').css("overflow","hidden");
    }
   function blurAdd() {
        $("#longitude").val(map.AC.lng)
        $("#latitude").val(map.AC.lat)
       $("#companyAddress").val($("#suggestId").val())
    }
</script>
<script type="text/javascript">
   // 百度地图API功能
   function G(id) {
       return document.getElementById(id);
   }

   var map = new BMap.Map("container");
   map.centerAndZoom("西安",12);
   // 初始化地图,设置城市和地图级别。
   map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
   map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
   //单击获取点击的经纬度
   var geoc = new BMap.Geocoder();
   map.addEventListener("click",function(e){
       $("#longitude").val("")
       $("#latitude").val("")
       $("#longitude").val(map.AC.lng)
       $("#latitude").val(map.AC.lat)

       geoc.getLocation(e.point, function(rs){
           var addComp = rs.addressComponents;
           console.log(addComp)
           $("#companyAddress").val("")
           $("#companyAddress").val()
           $("#suggestId").val(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber)
           $("#companyAddress").val(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber)
           // alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
       });
//       layer.closeAll();
      // alert(e.point.lng + "," + e.point.lat);
   });

   var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
       {"input" : "suggestId"
           ,"location" : map
       });

   ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
       var str = "";
       var _value = e.fromitem.value;
       var value = "";
       if (e.fromitem.index > -1) {
           value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
       }
       str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

       value = "";
       if (e.toitem.index > -1) {
           _value = e.toitem.value;
           value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
       }
       str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
       G("searchResultPanel").innerHTML = str;
   });

   var myValue;
   ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
       var _value = e.item.value;
       myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
       G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;

       setPlace();
   });

   function setPlace(){
       map.clearOverlays();    //清除地图上所有覆盖物
       function myFun(){
           var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
           map.centerAndZoom(pp, 18);
           map.addOverlay(new BMap.Marker(pp));    //添加标注
       }
       var local = new BMap.LocalSearch(map, { //智能搜索
           onSearchComplete: myFun
       });
       local.search(myValue);
   }
</script>

</div>
</html>
<script type="text/javascript" src="${contextPath}/resources/js/jquery-1.7.2.min.js"></script>
<script src="${contextPath}/resources/js/areaInfo/distpicker.data.js"></script>
<script src="${contextPath}/resources/js/areaInfo/distpicker.js"></script>
<script src="${contextPath}/resources/js/areaInfo/main.js"></script>
