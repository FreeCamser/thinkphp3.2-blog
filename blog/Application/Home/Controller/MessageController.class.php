<?php
/**
 * Created by PhpStorm.
 * User: tao1024
 * Date: 2018/3/9
 * Time: 23:35
 * 留言控制器
 */

namespace Home\Controller;

use Home\Model\MessageViewModel;
use Think\Controller;
use Think\Model;
use Think\Page;

class MessageController extends Controller {

    /**
     * 留言列表
     */
    public function index() {
        $messageModel = new MessageViewModel();
        $count = $messageModel->count();
        $page = new Page($count, 10);
        $show = $page->show();
        $message_list = $messageModel->order("message_id desc")->limit($page->firstRow . "," . $page->listRows)->select();
        $this->assign("page", $show);
        $this->assign("message_list", $message_list);
        $this->display();
    }

    /**
     * 发表留言
     */
    public function add() {
        //$this->check_login();
        $this->display();
    }

    /**
     * 处理发表留言
     */
    public function do_add() {
        $this->check_login();
        $content = I('post.content');
        if (empty($content)) {
            $this->error("留言内容不能为空");
        }
        if (mb_strlen(trim($content), "utf-8") > 100) {
            $this->error("留言内容不能超过100个字");
        }
        $messageModel = new Model("Message");
        $user_id = session("user.user_id");
        $data = array("content" => $content, "user_id" => $user_id, "create_at" => time());
        if (!($messageModel->create($data) && $messageModel->add())) {
            $this->error("发表留言失败");
        }
        $this->success("发表留言成功！", U("Message/index"));
    }

    /**
     * 删除留言
     */
    public function delete() {
        $message_id = I("message_id");
        if (empty($message_id)) {
            $this->error("缺少参数");
        }
        $this->check_login();
        $messageModel = new Model("Message");
        $result = $messageModel->where(array("message_id" => $message_id, "user_id" => session('user.user_id')))->delete();
        if (!$result) {
            $this->error("删除失败");
        }
        $this->success("删除成功！", U("Message/index"));
    }

    /**
     * 检测登陆
     */
    public function check_login() {
        if (!session("user.user_id")) {
            $this->error("请先登陆", U("User/login"));
        }
    }


}