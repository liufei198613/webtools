<%--<?php
date_default_timezone_set('Asia/Shanghai');

$timestamp = $_SERVER['REQUEST_TIME'];
$inputTime = '';

if (isset($_POST['inputTime'])) {
	$inputTime = str_replace('：', ':', trim($_POST['inputTime']));
	
	if (is_numeric($inputTime)) {
		$timestamp = intval($inputTime);
	} else {
		$timestamp = strtotime($inputTime);
	}
}

$date = date('Y-m-d H:i:s', $timestamp);

?> --%>

<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <title>WebTools - 开发者在线工具</title>
    <meta name="description"
          content="WebTools是为开发者提供的在线工具的平台，我们致力于提供简单实用、贴心智能的在线工具，以提高我们日常的开发效率。这些工具之所以有生气，因为我们都是开发者！">
    <meta name="keywords"
          content="WebTools,webtools,在线工具,开发者在线工具,Web开发工具,在线颜色,颜色墙,在线时间戳,colorwall,Web Tools,web tools,颜色转换,json解析,JSON解析,开发者工具,在线颜色转换,URL编码,URL解码">
    <meta name="author" content="dogstar">

    <!-- Site CSS -->

    <link href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css"
          rel="stylesheet">
    <!--
    <link href="http://static.bootcss.com/www/assets/css/site.min.css?v4" rel="stylesheet">
     -->

    <!--
    <link href="/css/bootstrap.min.css?20141111" rel="stylesheet">
    <link href="/css/font-awesome.min.css?20141111" rel="stylesheet">
    -->
    <link href="/css/site.min.css" rel="stylesheet">

    <link rel="shortcut icon"
          href="http://webtools.qiniudn.com/20141108092546539_easyicon_net_72.png">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.min.js?v=cb728e5f49"></script>
    <script src="/assets/js/respond.min.js?v=cb728e5f49"></script>
    <![endif]-->

</head>

<body class="home-template">

<%@include file="../header.jsp" %>
<br>
<div class="container projects">
    <div class="projects-header page-header">
        <h2 id="theColorYouLike">请输入</h2>
        <p>请在下面输入您需要转换的时间，如果是时间戳，系统将会转换成日期；反之，则会转换成时间戳。</p>
    </div>

    <div class="row">
        <div class="row">
            <form action="" method="POST">
                <div class="col-xs-4">
                </div>
                <div class="col-xs-4">
                    <input type="text" class="form-control" placeholder="请在这里输入北京时区的时间戳，或者日期"
                           name="inputTime" value="">
                </div>
                <div class="col-xs-4">
                    <input type="submit" class="btn btn-success" value="智能转换">
                </div>
            </form>
        </div>

        <br/>

        <div class="row">
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4">
                示例：&nbsp;&nbsp;&nbsp; 或
                &nbsp;&nbsp;
            </div>
        </div>

        <br/><br/>

        <h3>猜你需要：</h3>
        <table class="table table-hover">
            <tr>
                <td>其他日期格式：</td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>星期几：</td>
                <td>
                    星期
                </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>年中的：</td>
                <td>第周</td>
                <td>第天</td>
                <td></td>
            </tr>
        </table>

        <br/><br/>

        更多选择：
        <a href="http://tool.chinaz.com/Tools/unixtime.aspx">Unix时间戳(Unix timestamp)转换工具</a>&nbsp;&nbsp;


    </div>
    <!-- row -->
</div><!-- /.container -->
<%@include file="../footer.jsp" %>

</body>
</html>


