<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发表留言</title>
    <style type="text/css">
body{
    background-image: url("/thinkphp3/Public/images/caf40e97bc912dc588bb95f605ed18c7.jpg");background-position: center center; background-repeat: no-repeat; background-attachment: fixed;
}
body{
    margin: 0px auto;
    padding-top:100px;
    text-align: center;
    width: 700px;
    height: 800px;
    background-color:rgba(0,0,0,0.2); /*透明背景*/
}
</style>
</head>
<body>
<form method="post" action="/thinkphp3/index.php/Home/Message/do_add">
    <label for="content"><h1>留言内容</h1></label><br/>
    <textarea type="text" name="content" id="content" maxlength="100"  rows="15" cols="50" required></textarea><br/>
    <button>发表</button>
    <button type="reset">重置</button>
</form>
<p><a href="/thinkphp3/">博客首页</a>&nbsp;&nbsp;&nbsp;<a href="/thinkphp3/index.php/Home/Message/index">留言板首页</a></p>
</body>
</html>