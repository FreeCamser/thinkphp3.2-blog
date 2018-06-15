<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>家宝的博客后台管理</title>
    <link rel="stylesheet" type="text/css" href="http://localhost/thinkphp3/Application/Admin/Public/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="http://localhost/thinkphp3/Application/Admin/Public/css/main.css"/>
    <script type="text/javascript" src="http://localhost/thinkphp3/Application/Admin/Public/js/libs/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首页</a></li>
                <li><a href="/thinkphp3/" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">管理员:<?php echo $_SESSION['username']; ?></a></li>
                <li><a href="/thinkphp3/index.php/Admin/Admin/edit/id<?php  echo $_SESSION['id']; ?>">修改密码</a></li>
                <li><a href="/thinkphp3/index.php/Admin/Admin/logout">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font"></i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="/thinkphp3/index.php/Admin/Article/lst"><i class="icon-font"></i>文章管理</a></li>
                        <li><a href="/thinkphp3/index.php/Admin/Cate/lst"><i class="icon-font"></i>分类管理</a></li>
                        <li><a href="/thinkphp3/index.php/Admin/Link/lst"><i class="icon-font"></i>友情链接</a></li>
                        <li><a href="/thinkphp3/index.php/Admin/Admin/lst"><i class="icon-font"></i>管理员管理</a></li>
                    </ul>
                </li>
            
            </ul>
        </div>
    </div> 
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><font style="color: black" size="5" >家宝的博客</font></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>系统基本信息</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">操作系统</label><span class="res-info">WINNT</span>
                    </li>
                    <li>
                        <label class="res-lab">运行环境</label><span class="res-info">Apache/2.2.21 (Win64) PHP/5.3.10</span>
                    </li>
                    <li>
                        <label class="res-lab">PHP运行方式</label><span class="res-info">apache2handler</span>
                    </li>
                    <li>
                        <label class="res-lab">静静设计-版本</label><span class="res-info">v-0.1</span>
                    </li>
                    <li>
                        <label class="res-lab">上传附件限制</label><span class="res-info">2M</span>
                    </li>
                    <li>
                        <label class="res-lab">北京时间</label><span class="res-info">2014年3月18日 21:08:24</span>
                    </li>
                    <li>
                        <label class="res-lab">服务器域名/IP</label><span class="res-info">localhost [ 127.0.0.1 ]</span>
                    </li>
                    <li>
                        <label class="res-lab">Host</label><span class="res-info">127.0.0.1</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>