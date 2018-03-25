<%--
  Created by IntelliJ IDEA.
  User: daijiangping
  Date: 2017/9/4
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/resources/nuoplus/layui/css/layui.css" rel="stylesheet">


<style>
    .img_mini {
        height: 20px;
    }

    .input_edit {
        width: 50px;

    }

    .a_old {
        color: #06C;
        text-decoration: none;
        margin-left: 18px;
        background: white;
        border: 0;
    }

    .a_old_ktv {
        color: #06C;
        text-decoration: none;
        margin-left: 18px;
        font-weight: bold;
        border: 0;
    }

    .a_old_ktv:hover {
        color: #cc1c32;
        text-decoration: none;
        margin-left: 18px;
        font-weight: bold;
        border: 0;
    }

    .a_old:focus {
        background: #FFC1C1;
    }

    input:focus {
        background: #FFE4E1;
        color: #292929;
    }

    .a_old_u {
        color: #06C;
        margin-left: 18px;
        text-decoration: underline;
    }

    .inp {
        height: 30px;
        border: 1px solid black;
        width: 200px;
    }

    .inp:focus {
        background: white;
    }

    .a_old_u:hover {
        color: #06C;
        margin-left: 18px;
        text-decoration: none;
    }

    .t_blue {
        color: #525252;
        text-decoration: none;
    }

    .a_old:hover, .a_old:focus {
        color: #2a6496;
        cursor: pointer;
        text-decoration: underline;
    }

    .juzhong {
        text-align: center;
    }

    .td_center {
        text-align: center;
    }

    .t_t {
        font-weight: bold;
        color: #525252;
    }

    .t_v {
        color: #3D3D3D;
    }

    .t_v_blue {
        color: #009688;
    }

    .text_title {
        text-align: center;
        font-size: 18px;
        color: #5C5C5C
    }

    .font_bold {
        font-weight: bold;
        margin-right: 20px;
    }

    .td_title {
        font-weight: bold;
        color: #009688;

    }

    .img_a:hover {
        border: 1px solid grey;
    }

    .remark {
        width: 400px;
        height: 200px;
        font-size: 14px;
        background: #FFFACD;
        color: #EE0000;

    }

    body {
        margin-top: 5px;
        zoom: 80%;
    }

    .xian {
        border: 0;
        height: 30px;
        border-bottom: 1px solid #292929;
    }

    body .layui-tree-skin-shihuang .layui-tree-branch {
        color: #EDCA50;
    }

    body {
        margin-left: 20px;
        margin-right: 20px;
    }
    /*滚动条样式*/
    　.inner{
        width: 265px;
        height: 400px;
        position: absolute;
        top: 33px;
        left: 13px;
        /*cursor: pointer;*/
        overflow:hidden;
    }
    .innerbox{
        overflow-x: hidden;
        overflow-y: auto;
        color: #000;
        font-size: .7rem;
        font-family: "\5FAE\8F6F\96C5\9ED1",Helvetica,"黑体",Arial,Tahoma;
        height: 100%;
    }
    /*滚动条样式*/
    .innerbox::-webkit-scrollbar {/*滚动条整体样式*/
        width: 4px;     /*高宽分别对应横竖滚动条的尺寸*/
        height: 4px;
    }
    .innerbox::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
        border-radius: 5px;
        -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
        background: rgba(0,0,0,0.2);
    }
    .innerbox::-webkit-scrollbar-track {/*滚动条里面轨道*/
        -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
        border-radius: 0;
        background: rgba(0,0,0,0.1);
    }
    /*滚动条样式*/
    div::-webkit-scrollbar {/*滚动条整体样式*/
        width: 5px;     /*高宽分别对应横竖滚动条的尺寸*/
        height: 15px;
    }
    div::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
        border-radius: 5px;
        -webkit-box-shadow: inset 0 0 5px #C1CDCD;
        background: #E5E5E5;
    }
    div::-webkit-scrollbar-track {/*滚动条里面轨道*/
        -webkit-box-shadow: inset 0 0 5px #C1CDCD;
        border-radius: 0;
        background: white;
    }
    /*滚动条样式*/
    body::-webkit-scrollbar {/*滚动条整体样式*/
        width: 7px;     /*高宽分别对应横竖滚动条的尺寸*/
        height: 15px;
    }
    body::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
        border-radius: 5px;
        -webkit-box-shadow: inset 0 0 5px #C1CDCD;
        background: #009688;
    }
    body::-webkit-scrollbar-track {/*滚动条里面轨道*/
        -webkit-box-shadow: inset 0 0 5px #C1CDCD;
        border-radius: 0;
        background: white;
    }
</style>