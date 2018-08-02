<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand hidden-sm" href="/">WebTools</a>
        </div>
        <div class="navbar-collapse collapse" role="navigation">
            <ul class="nav navbar-nav">
                <li><a href="/colorwall/">在线颜色墙</a></li>
                <li><a href="/timestamp/">在线时间戳</a></li>
                <li><a href="/json/">在线JSON解析</a></li>
                <li><a href="/colortran/">在线颜色转换</a></li>
                <li><a href="/regex/">在线正则表达式</a></li>
                <li><a href="/url/">URL编码/解码</a></li>
                <!-- <li><a href="<?php echo WEB_TOOLS_HOST, '#/'; ?>" >在线URL解析</a></li>  -->
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/about/">关于</a></li>
            </ul>
        </div>
    </div>
</div>

