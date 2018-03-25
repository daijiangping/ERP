/** common.js By Beginner Emain:zheng_jinfan@126.com HomePage:http://www.zhengjinfan.cn */
layui.define(['layer'], function(exports) {
	"use strict";

	var $ = layui.jquery,
		layer = layui.layer;

	var common = {
		/**
		 * 抛出一个异常错误信息
		 * @param {String} msg
		 */
		throwError: function(msg) {
			throw new Error(msg);
			return;
		},
		/**
		 * 弹出一个错误提示
		 * @param {String} msg
		 */
		msgError: function(msg) {
			layer.msg(msg, {
				icon: 5
			});
			return;
		}
	};

	exports('common', common);
});
var common = {
    /**
     * 抛出一个异常错误信息
     * @param {String} msg
     */
    throwError: function(msg) {
        throw new Error(msg);
        return;
    },
    /**
     * 弹出一个错误提示
     * @param {String} msg
     */
    msgError: function(msg) {
        layer.msg(msg);
        return;
    },
    msgSuccess:function(msg){
        layer.msg(msg);
        return;
    },
    /**
     * post 请求
     * @param url
     * @param param
     * @param callback
     */
    post:function(url,param,callback){
/*        var index = layer.load(1, {
            shade: [0.1,'#000']
        });*/
        var index = layer.load(3, {
            shade: [0.2, '#A1A1A1'],
        });
        $.post(url,param,function(data){
            callback(data);
            layer.close(index);
        })

    },
    /**
     * get请求
     * @param url
     * @param param
     * @param callback
     */
    get:function(url,param,callback){
        var index = layer.load(1, {
            shade: [0.1,'#000']
        });
        $.get(url,param,function(data){
            callback(data);
            layer.close(index);
        })
    },
    /**
     * 打开提交表单的页面
     * @param title 标题
     * @param dom 要弹出来的dom节点
     * @param area 文本框大小
     * @param data 需要反填的数据
     * @returns {*|Window}
     */
    open:function(title,dom,area,data){
        $("#"+dom+" :button[type='reset']").show();
        if(data != null){
            $("#"+dom+" :button[type='reset']").hide();
            for(var param in data){
                if(param!="available" && param!="locked"){
                    $('#'+dom+' :input[name='+param+']').val(data[param]==null?'':data[param]);
                }else {
                //更新渲染单选框
                $('#'+dom+' :input:radio').each(function () {
                    if(this.value==data[param]+"" && param!="rootNode"){
                        console.log(param+"==="+this.value);
                       $("input[name='"+param+"'][value="+this.value+"]").prop("checked",true);
                        form.render('radio');
                    }
                })
              }
            }
        }
        var index = layer.open({
            type: 1,
            title: title,
            offset: 't',
            content: $('#'+dom),
            area: area,
            end: function(){
                layer.close(index);
            },
            cancel: function(index, layero){
                $("#"+dom+" :button[type='reset']").click();
            }
        });
        return index;
    },
    /**
     * 打开HTML页面
     * @param title
     * @param html
     * @param area
     * @returns {*|Window}
     */
    openHtml:function(title,html,area,btn,callback){
        var obj = {
            type: 1,
            title: title,
            content: html,
            area: area,
            yes:callback
        };
        if(btn != null){
            obj.btn = btn;
        }
        var index = layer.open(obj);
        return index;
    },
    /**
     * 打开iframe
     * @param title
     * @param url
     * @param area
     */
    openUrl:function (title,url,area) {
        layer.open({
            type: 2,
            title:title,
            shade: false,
            area: area,
            maxmin: true,
            content: url,
            zIndex: layer.zIndex
        });
    }

}

/**
 * 对Date的扩展，将 Date 转化为指定格式的String
 * 月(M)、日(d)、12小时(h)、24小时(H)、分(m)、秒(s)、周(E)、季度(q) 可以用 1-2 个占位符
 * 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
 * eg:
 * (new Date()).pattern("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
 * (new Date()).pattern("yyyy-MM-dd E HH:mm:ss") ==> 2009-03-10 二 20:09:04
 * (new Date()).pattern("yyyy-MM-dd EE hh:mm:ss") ==> 2009-03-10 周二 08:09:04
 * (new Date()).pattern("yyyy-MM-dd EEE hh:mm:ss") ==> 2009-03-10 星期二 08:09:04
 * (new Date()).pattern("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18
 */
Date.prototype.pattern=function(fmt) {
    var o = {
        "M+" : this.getMonth()+1, //月份
        "d+" : this.getDate(), //日
        "h+" : this.getHours()%12 == 0 ? 12 : this.getHours()%12, //小时
        "H+" : this.getHours(), //小时
        "m+" : this.getMinutes(), //分
        "s+" : this.getSeconds(), //秒
        "q+" : Math.floor((this.getMonth()+3)/3), //季度
        "S" : this.getMilliseconds() //毫秒
    };
    var week = {
        "0" : "/u65e5",
        "1" : "/u4e00",
        "2" : "/u4e8c",
        "3" : "/u4e09",
        "4" : "/u56db",
        "5" : "/u4e94",
        "6" : "/u516d"
    };
    if(/(y+)/.test(fmt)){
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    }
    if(/(E+)/.test(fmt)){
        fmt=fmt.replace(RegExp.$1, ((RegExp.$1.length>1) ? (RegExp.$1.length>2 ? "/u661f/u671f" : "/u5468") : "")+week[this.getDay()+""]);
    }
    for(var k in o){
        if(new RegExp("("+ k +")").test(fmt)){
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }
    }
    return fmt;
}

/*
Date.prototype.Format = function(fmt) {
    var o = {
        "M+" : this.getMonth()+1,                 //月份
        "d+" : this.getDate(),                    //日
        "h+" : this.getHours(),                   //小时
        "m+" : this.getMinutes(),                 //分
        "s+" : this.getSeconds(),                 //秒
        "q+" : Math.floor((this.getMonth()+3)/3), //季度
        "S"  : this.getMilliseconds()             //毫秒
    };
    if(/(y+)/.test(fmt))
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o)
        if(new RegExp("("+ k +")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
    return fmt;
}*/
