<?php
/**
 * Created by PhpStorm.
 * User: tao1024
 * Date: 2018/3/9
 * Time: 23:35
 * 用户控制器
 */

namespace Home\Controller;


use think\Controller;
use think\Error;
use Think\Model;

class UserController extends Controller {

    //注册
    function register() {
        $this->display();
    }

    //注册处理
    function do_register() {
        $username = I('username');
        $password = I('password');
        $password_repeat = I('password_repeat');

        if (empty($username)) {
            $this->error('用户名不能为空');
        }
        if (empty($password)) {
            $this->error('密码不能为空');
        }
        if ($password != $password_repeat) {
            $this->error('两次输入的密码不一致');
        }

        $userModel = new Model('User');
        $user = $userModel->where(array("username" => $username))->find();
        if (!empty($user)) {
            $this->error('用户名已存在');
        }
        $userInfo = array("username" => $username, "password" => md5($password), "create_at" => time());
        if (!($userModel->create($userInfo) && $userModel->add())) {
            $this->error('注册失败' . $userModel->getDbError);
        }
        $this->success('注册成功', U('login'));
    }


    //登陆
    function login() {
        $this->display();
    }


    //登陆处理
   function do_login() {
        $username = I('username');
        $password = I('password');

        if (empty($username)) {
            $this->error('用户名不能为空');
        }
        if (empty($password)) {
            $this->error('密码不能为空');
        }

        $userModel = new Model('User');
        $user = $userModel->where(array("username" => $username))->find();
        if (empty($user)) {
            $this->error('用户不存在');
        }
        if ($user["password"] != md5($password)) {
            $this->error('密码错误');
        }
        //写入session
        session('user.user_id', $user['user_id']);
        session('user.username', $user['username']);
        //跳转首页
        $this->redirect('Message/index');
    }


    //退出
    function logout() {
        if (!session('user.user_id')) {
            $this->error('请登录');
        }
        session_destroy();
        $this->success('退出成功', U('Message/index'));
    }

}