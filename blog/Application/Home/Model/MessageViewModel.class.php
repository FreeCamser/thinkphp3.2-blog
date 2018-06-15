<?php
/**
 * Created by PhpStorm.
 * User: tao1024
 * Date: 2018/3/9
 * Time: 23:25
 * 由于留言消息都需要关联留言者信息，所以使用视图模型ViewModel
 */

namespace Home\Model;


use Think\Model\ViewModel;

class MessageViewModel extends ViewModel {

    public $viewFields = array(
        'Message' => array('message_id', 'content', 'create_at'),
        'User' => array('user_id', 'username', '_on' => 'Message.user_id=User.user_id')
    );
    //能查询出以下字段：'message_id' ，'content'，'create_at'，'user_id' ，'username'
}

//注意点：本类用的是ViewModel，不是Model