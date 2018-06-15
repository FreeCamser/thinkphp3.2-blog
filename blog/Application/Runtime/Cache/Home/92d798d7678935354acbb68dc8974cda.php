<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ping</title>
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
<h2>Ping a device</h2>
<form name="ping" action="/thinkphp3/index.php/Home/Ping/ping" method="post">
			<p>
				Enter an IP address:
				<input type="text" name="ip" size="30">
				<input type="submit" name="Submit" value="Submit">
			</p>

		</form>
<tb><?php echo ($cmd); ?></tb>
<p><a href="/thinkphp3/">首页</a></p>
</body>
</html>