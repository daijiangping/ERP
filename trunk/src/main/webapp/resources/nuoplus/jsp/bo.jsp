<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: daijiangping
  Date: 2017/9/4
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${pageContext.request.contextPath}/resources/nuoplus/dist/js/jquery-1.12.4.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/nuoplus/layui/layui.all.js"></script>
<% long date = new Date().getTime();
    request.setAttribute("date", date);
%>
<script type="text/javascript">
    var cxt = '${pageContext.request.contextPath}';
    var element = layui.element;
    var table = layui.table;
    var form = layui.form;
    var layer = layui.layer;
    var layedit = layui.layedit;
    var laydate = layui.laydate;
    var laytpl = layui.laytpl;
    var $ = layui.jquery;
    var tree = layui.tree;
    var upload = layui.upload;
    var carousel = layui.carousel;

    //渲染日期
    lay('.date-item').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , theme: 'molv', calendar: true
        });
    });
    //渲染日期时间
    lay('.date-time-item').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , theme: 'molv', calendar: true
            , type: 'datetime'
        });
    });
    /**
     *tplId:模板ID,(script标签存放模板的ID)
     * rs:渲染的数据
     *viewId:视图ID
     */

    function tpl(tplId, rs, viewId) {
        var getTpl = $("#" + tplId + "").html()
        laytpl(getTpl).render(rs, function (html) {
            $("#" + viewId + "").html(html);
            form.render();
            selectFun.runder();
        });
    }
    function tplAppend(tplId, rs, viewId) {
        var getTpl = $("#" + tplId + "").html()
        laytpl(getTpl).render(rs, function (html) {
            $("#" + viewId + "").append(html);
            form.render();

        });
        selectFun.runder();
    }

    var selectFun = {
        fcs: function (nextName) {
            $("[name='" + nextName + "']").focus();
            $("[name='" + nextName + "']").next().find(".layui-unselect").focus();
            $("[name='" + nextName + "']").next().addClass("layui-form-selected");
        },
        select: function (name, nextName) {
            var text = $("select[data-search='" + name + "']").next().find(".layui-unselect");
            var dd = $(text).parent().next().find("dd[class='']");
            $(text).change(function () {
                $(dd[0]).addClass("layui-this").siblings("dd").removeClass("layui-this");
            });
            $(text).keydown(function (e) {
                var key = e.keyCode;
                //上
                if (key == 38) {
                    selectFun.shang(text);
                } else if (key == 40) {
                    selectFun.xia(text);
                } else if (key == 8) {
                    $(dd[0]).addClass("layui-this").siblings("dd").removeClass("layui-this");
                } else if (key == 13) {

                    $(text).parent().next().find("dd[class='layui-this']").click();
                    $("[name='" + nextName + "']").focus();
                    $("[name='" + nextName + "']").next().find(".layui-unselect").focus();
                    $("[name='" + nextName + "']").next().addClass("layui-form-selected");
                }


            })
            /*  $(text).click(function () {
             var dd = $(this).parents("td").find("dd");
             $(dd).mousemove(function () {
             var curr = $(this).text();
             $(text).val(curr);
             $(this).addClass("layui-this").siblings("dd").removeClass("layui-this");


             });
             $(dd).mouseout(function () {
             var curr = $(this).text();
             console.log(curr);
             $(text).val(curr);
             $(this).addClass("layui-this").siblings("dd").removeClass("layui-this");
             });


             });*/


        }, shang: function (text) {
            var dd = $(text).parent().next().find("dd[class='']");
            var curr = $(text).parent().next().find("dd[class='layui-this']");
            if ($(curr).text() == "") {
                $(dd[0]).addClass("layui-this").siblings("dd").removeClass("layui-this");
            }
            var n = $(curr).prevAll();
            for (var i = 0; i < n.length; i++) {
                if (!$(n[i]).hasClass("layui-hide")) {
                    $(n[i]).addClass("layui-this").siblings("dd").removeClass("layui-this");
                    break;
                }
            }
            var dl = $(text).parent().next();
            var len = $(dl).scrollTop();
            var topLen = $(curr).prevAll().length;
            if (topLen >= 7) {
                len -= 36;
                $(dl).scrollTop(len)
            }

        }, xia: function (text) {
            var dd = $(text).parent().next().find("dd[class='']");
            var curr = $(text).parent().next().find("dd[class='layui-this']");
            if ($(curr).text() == "") {
                $(dd[0]).addClass("layui-this").siblings("dd").removeClass("layui-this");
            } else {
                var n = $(curr).nextAll();
                for (var i = 0; i < n.length; i++) {
                    if (!$(n[i]).hasClass("layui-hide")) {
                        $(n[i]).addClass("layui-this").siblings("dd").removeClass("layui-this");
                        break;
                    }
                }
                $(curr).next("[class='']").addClass("layui-this").siblings("dd").removeClass("layui-this");
            }


            var dl = $(text).parent().next();
            var len = $(dl).scrollTop();
            var topLen = $(curr).prevAll().length;
            if (topLen >= 7) {
                len += 36;
                $(dl).scrollTop(len)
            }
            console.log(dd)

        }, runder: function () {

            $(".layui-select-title input").focus(function () {

                var name = $(this).parents(".layui-unselect").prev().attr("data-search");
                var nextName = $(this).parents(".layui-unselect").prev().attr("data-next-name");
                selectFun.select(name, nextName);
            });
            $(".layui-select-title input").blur(function () {

                var name = $(this).parents(".layui-unselect").prev().attr("name");
                selectFun.cancel(name);
            });

        }, cancel: function (name) {
            /*  form.render('select');*/
            /*  selectFun.runder();*/
        },//input回车时间
        enter: function () {
            $("input[type=text]").keydown(function (event) {
                if (event.keyCode == "13") {
                    layer.alert(1111);
                }
            });
        }
    }
    selectFun.runder();


    var common = {

        toggle: function (elem) {
            $(elem).fadeToggle(100);
        },
        runderTime: function () {
            //渲染日期时间
            lay('.date-time-item').each(function () {
                laydate.render({
                    elem: this
                    , trigger: 'click'
                    , theme: 'molv', calendar: true
                    , type: 'datetime'
                });
            });
        }, ifNull: function (obj) {

            if (obj == null || obj == 'null' || obj == undefined || obj == 'undefined') {
                return "";
            } else {
                return obj;
            }
        }, zro: function (obj) {

            if (obj == null || obj == 'null' || obj == undefined || obj == 'undefined' || obj == '0') {
                return "-";
            } else {
                return obj.toFixed(2);
            }
        }
        , ifNullO: function (obj) {

            if (obj == null || obj == 'null' || obj == undefined || obj == 'undefined') {
                return "0";
            } else {
                return obj;
            }
        }, ifNullX: function (obj) {

            if (obj == null || obj == 'null' || obj == undefined || obj == 'undefined') {
                return "";
            } else {
                return "/" + obj;
            }
        }, ifNullMin: function (obj) {

            if (obj == null || obj == 'null' || obj == undefined || obj == 'undefined') {
                return "";
            } else {
                return ".MIN=" + obj;
            }
        },
        msgCenter: function (msg) {
            layer.msg(msg, {offset: ['45%', '45%']})
        },
        //手写时间
        writeDate: function (input) {
            var e = window.event;
            var value = $(input).val();
            if (e.keyCode != 8) {
                if (value.length == 2) {
                    $(input).val("20" + value + "-")
                } else if (value.length == 4) {
                    $(input).val(value + "-")
                } else if (value.length == 5) {
                    if ("-" != value.charAt(4)) {
                        $(input).val(value.substring(0, 4) + "-" + value.substring(4, 5));
                    }
                } else if (value.length == 7) {
                    $(input).val(value + "-")
                } else if (value.length == 8) {
                    if ("-" != value.charAt(7)) {
                        $(input).val(value.substring(0, 7) + "-" + value.substring(7, 8));
                    }
                } else if (value.length == 10) {
                    $(input).val(value + " ")
                } else if (value.length == 11) {
                    if (" " != value.charAt(10)) {
                        $(input).val(value.substring(0, 10) + " " + value.substring(10, 11));
                    }
                } else if (value.length == 13) {
                    $(input).val(value + ":")
                } else if (value.length == 14) {
                    if (":" != value.charAt(13)) {
                        $(input).val(value.substring(0, 13) + ":" + value.substring(13, 14));
                    }
                } else if (value.length == 16) {
                    $(input).val(value + ":00")
                } else if (value.length == 17) {
                    if (":" != value.charAt(16)) {
                        $(input).val(value.substring(0, 16) + ":00");
                    }
                } else if (value.length >= 19) {
                    $(input).val(value.substring(0, 19));
                }
            }
        },
        dateVerify: function (input) {
            var value = $(input).val();
            var year = value.substring(0, 4);
            var month = value.substring(5, 7);
            var day = value.substring(8, 10);
            var hour = value.substring(11, 13);
            var min = value.substring(14, 16);
            var msg = "";
            var flag = true;
            if (month > 12) {
                msg += "月不能大于12|"
                flag = false;
            } else {
                if (month == 2) {
                    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
                        if (day > 29) {
                            msg += "该月不能超过29天|"
                            flag = false;
                        }
                    } else {
                        if (day > 28) {
                            msg += "该月不能超过28天|"
                            flag = false;
                        }
                    }
                } else if (month == 4 || month == 6 || month == 9 || month == 11) {
                    if (day > 30) {
                        msg += "该月不能超过30天|"
                        flag = false;
                    }
                } else if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
                    if (day > 31) {
                        msg += "该月不能超过31天|"
                        flag = false;
                    }
                }
            }
            if (hour > 23) {
                msg += "时不能大于23|"
                flag = false;
            }
            if (min > 59) {
                msg += "分不能大于59|"
                flag = false;
            }
            if (!flag) {
                layer.msg(msg.substring(0, msg.length - 1));
                $(input).val("");
                $(input).focus();
            }
            return flag;
        },
        /**
         * 抛出一个异常错误信息
         * @param {String} msg
         */
        throwError: function (msg) {
            throw new Error(msg);
            return;
        },
        currTime: function () {
            var t = new Date().getTime();
            return t;
        },
        /**
         * 弹出一个错误提示
         * @param {String} msg
         */
        msgError: function (msg) {
            layer.msg(msg);
            return;
        },
        msgSuccess: function (msg) {
            layer.msg(msg);
            return;
        },
        /**
         * post 请求
         * @param url
         * @param param
         * @param callback
         */
        post: function (url, param, callback) {
            var index = layer.load(2, {
                shade: [0.2, '#A1A1A1'],
                offset: ['45%', '45%']
            });
            $.post(url, param, function (data) {
                callback(data);
                layer.close(index);
            })

        },
        postWhilte: function (url, param, callback) {
            var index = layer.load(2, {
                shade: [0.1, '#fdfdfd'],
                offset: ['45%', '45%']
            });
            $.post(url, param, function (data) {
                callback(data);
                layer.close(index);
            })

        },
        searchPost: function (url, param, callback) {
            var index = layer.load(3, {
                shade: [0.1, '#FFFFFF'],

            });
            $.post(cxt + url, param, function (data) {
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
        get: function (url, param, callback) {
            var index = layer.load(1, {
                shade: [0.1, '#000']
            });
            $.get(url, param, function (data) {
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
        open: function (title, dom, area, data) {
            if (data != null) {
                for (var param in data) {
                    $('#' + dom + ' :input[name=' + param + ']').val(data[param] == null ? '' : data[param]);
                }
            }
            var index = layer.open({
                type: 1,
                title: title,
                maxmin: true,
                shade: ['0.2','#0d0d0d'],
                content: $('#' + dom),
                area: area,
                moveOut: true,
                fixed:false,
                offset: ['10%','20%']
            });

            $(".layui-layer-ico").click(function () {
                $(".win").hide();
            });
            return index;
        },
        openTop: function (title, dom, area, data) {
            if (data != null) {
                for (var param in data) {
                    $('#' + dom + ' :input[name=' + param + ']').val(data[param] == null ? '' : data[param]);
                }
            }
            var index = layer.open({
                type: 1,
                title: title,
                maxmin: true,
                content: $('#' + dom),
                area: area,
                moveOut: false,
                offset: ['45%', '45%']
            });

            $(".layui-layer-ico").click(function () {
                $(".win").hide();
            });
            return index;
        },
        openTop: function (title, dom, area, data) {
            if (data != null) {
                for (var param in data) {
                    $('#' + dom + ' :input[name=' + param + ']').val(data[param] == null ? '' : data[param]);
                }
            }
            var index = layer.open({
                type: 1,
                title: title,
                maxmin: true,
                content: $('#' + dom),
                area: area,
                moveOut: false,
                offset: '10%'
            });

            $(".layui-layer-ico").click(function () {
                $(".win").hide();
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
        openHtml: function (title, html, area, btn, callback) {
            var obj = {
                type: 2,
                title: title,
                content: html,
                area: area,
                yes: callback,
                offset:"lt"
            };
            if (btn != null) {
                obj.btn = btn;
            }
            var index = layer.open(obj);
            return index;
        }, openHtmlTop: function (title, html, area, btn, callback) {
            var obj = {
                type: 2,
                title: title,
                content: html,
                area: area,
                yes: callback
            };
            if (btn != null) {
                obj.btn = btn;
            }
            var index = layer.open(obj);
            return index;
        }, fmt: function (data, fmt) {
            if (data == '' || data == 'null' || data == null || data == undefined) {
                return '';
            } else {
                var time = new Date(data).Format(fmt);
                return time;
            }

        }, openUrl: function (title, url, area) {
            layer.open({
                type: 2,
                title: title,
                shade: false,
                area: area,
                maxmin: true,
                content: url,
                zIndex: layer.zIndex

            });
        }, elemShow: function (idOrClass) {
            $(idOrClass).show();
        }, elemHide: function (idOrClass) {
            $(idOrClass).hide();
        }, print: function (idOrClass) {
            $(idOrClass).hide();
            window.print();
            $(idOrClass).show();
        }, currDate: function (fmt) {

            var time = new Date(new Date().getTime()).Format(fmt);
            return time;

        }
    }
    //fmt
    // 对Date的扩展，将 Date 转化为指定格式的String
    // 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
    // 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
    // 例子：
    // (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
    // (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18
    Date.prototype.Format = function (fmt) { //author: meizz
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }
    //ban

    /*  $(document).keydown(function (event) {
     event.preventDefault();
     });*/
    form.verify({
        f_carNo: function (value, item) { //value：表单的值、item：表单的DOM对象
            var re = /^[\u4e00-\u9fa5]{1}[A-Z]{1}[A-Z_0-9]{5}$/;
            if (!new RegExp(re).test(value)) {
                return '非法的车牌号';
            }

        }

    });

</script>

