<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>留言板</title>
    <style type="text/css">
body{
    background-image: url("/thinkphp3/Public/images/caf40e97bc912dc588bb95f605ed18c7.jpg");background-position: center center; background-repeat: no-repeat; background-attachment: fixed;
}
body{
    margin: 0px auto;
    width: 700px;
    height: 800px;
    background-color:rgba(0,0,0,0.2); /*透明背景*/
}
h1{
    text-align: center;
    font-size: 40px;
    font-weight: bold;
}
p{
    font-size: 20px;
    font-weight: bold;
    font-family: serif;
    text-indent: 20px;
}
a{
    font-size: 20px;
}
    </style>
</head>
<body>
<h1>留言板</h1><hr>
<div>
    <?php if(empty($_SESSION['user']['username'])): ?><a href="<?php echo U('User/login');?>">登陆</a>
        <a href="<?php echo U('User/register');?>">注册</a>
        <?php else: ?>
        <a href="/thinkphp3/">博客首页</a>&nbsp;&nbsp;&nbsp;<a href="/thinkphp3/index.php/Home/Message/index">留言板首页</a><br><br>
        <a ><?php echo ($_SESSION['user']['username']); ?>,欢迎您！</a><a href="<?php echo U('Message/add');?>">发表留言</a> <a href="<?php echo U('User/logout');?>">退出登录</a><br>
        ---------------<?php endif; ?>
    <?php if(is_array($message_list)): $i = 0; $__LIST__ = $message_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><div>
            <?php echo ($item["username"]); ?>：<?php echo ($item["content"]); ?><br>
            time：<?php echo (date('Y-m-d H:i:s',$item["create_at"])); ?><br>
            ---------------
            <?php if(($_SESSION['user']['user_id']) == $item["user_id"]): ?><a href="<?php echo U('delete?message_id='.$item['message_id']);?>" onclick="return confirm('确定删除此条留言？')">删除</a><?php endif; ?>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
</foreach>
</div>

</body>
</html>
<!--注意点：
<?php echo U('');?>的用法
<?php echo ($item["content"]); ?>与value="$item.content"的区别-->