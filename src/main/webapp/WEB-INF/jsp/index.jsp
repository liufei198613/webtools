<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8" language="java" %>
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
    <link href="/static/css/site.min.css" rel="stylesheet">

    <link rel="shortcut icon"
          href="http://webtools.qiniudn.com/20141108092546539_easyicon_net_72.png">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.min.js?v=cb728e5f49"></script>
    <script src="/js/respond.min.js?v=cb728e5f49"></script>
    <![endif]-->

</head>

<body class="home-template">
<div>
    <%@include file="header.jsp" %>
</div>
<br>
<div class="container projects">
    <!-- Everything start from here ! -->
    <div class="projects-header page-header">
        <h2 id="theColorYouLike">Web Tools开发者在线工具精品推荐</h2>
        <p>以下在线工具由开源社区提供，并通过精心挑选，追求简洁实用。 希望能对您有帮助，谢谢！</p>
    </div>


    <div class="row">

        <div class="col-sm-6 col-md-4 col-lg-3 ">
            <div class="thumbnail">
                <a href="" title="Bootstrap 编码规范"><img
                        class="lazy" src="http://webtools.qiniudn.com/index_thumb_color_wall.jpg"
                        width="300"
                        height="150" alt="Color Wall"></a>
                <div class="caption">
                    <h3>
                        <a href="" title="颜色墙">在线颜色墙<br>
                            <small>by @dogstar</small>
                        </a>
                    </h3>
                    <p>
                        WebTools颜色墙：在线随机生成，并共有标准版、简约版和深沉版三个版本。
                    </p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 ">
            <div class="thumbnail">
                <a href="<?php echo WEB_TOOLS_HOST . 'timestamp/'; ?>" title="在线时间戳">
                    <img class="lazy"
                         src="http://webtools.qiniudn.com/index_thumb_timestamp_v2.jpg"
                         width="300"
                         height="150"
                         alt="Color Wall"></a>
                <div class="caption">
                    <h3>
                        <a href="" title="时间戳">在线时间戳<br>
                            <small>by @dogstar</small>
                        </a>
                    </h3>
                    <p>
                        WebTools在线时间戳：如果是时间戳，系统将会转换成日期；反之，则会转换成时间戳。
                    </p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 ">
            <div class="thumbnail">
                <a href="" title="在线JSON解析"><img class="lazy"
                                                 src="http://webtools.qiniudn.com/index_thumb_v2.jpg"
                                                 width="300"
                                                 height="150"
                                                 alt="Color Wall"></a>
                <div class="caption">
                    <h3>
                        <a href="" title="在线JSON解析">在线JSON解析<br>
                            <small>by @dogstar</small>
                        </a>
                    </h3>
                    <p>
                        WebTools在线JSON解析：输入JSON串后，本地会实时转换；如果不行，可以尝试智能转换。
                    </p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 ">
            <div class="thumbnail">
                <a href="" title="在线颜色转换"><img class="lazy"
                                               src="http://webtools.qiniudn.com/index_thumb_colortran_v2.jpg"
                                               width="300"
                                               height="150"
                                               alt="Color Wall"></a>
                <div class="caption">
                    <h3>
                        <a href="" title="在线颜色转换">在线颜色转换<br>
                            <small>by @dogstar</small>
                        </a>
                    </h3>
                    <p>
                        WebTools在线颜色转换：输入需要转换的颜色后，如果是RGB格式，系统将会转换成带#号的HEX；反之，则会转换成RGB。
                    </p>
                </div>
            </div>
        </div>

    </div>


</div><!-- /.container -->
<div>
    <%@ include file="footer.jsp" %>
</div>


</body>
</html>

<script type="text/javascript">
  /**
   * TODO: 请在下面放置需要的JS函数
   */

</script>