<?php
namespace Admin\Model;
use Think\Model;
class AdminModel extends Model {
   protected $_validate = array( 
     array('username','require','管理员名称不能为空！',1,'regex',3), // 在新增的时候不能为空
     array('username','','管理员名称不能重复！',1,'unique',3), // 在新增的时候验证name字段是否唯一
     array('password','require','密码不能为空！',1,'regex',3), // 在新增的时候不能为空
     array('username','require','管理员名称不能为空！',1,'regex',4), // 在新增的时候不能为空
     array('password','require','密码不能为空！',1,'regex',4), // 在新增的时候不能为空
     array('verify','check_verify','验证码错误！',1,'callback',4), // 在新增的时候不能为空
   );

   public function login(){
   		$password=$this->password;
   		$info=$this->where(array('username'=>$this->username))->find();
   		if($info){
   			if($info['password']==md5($password)){
   				session('id',$info['id']);
   				session('username',$info['username']);
   				return true;

   			}
   			else{
   				return false;
   			}

   		}
   		else{
   			return false;

   		}
   }
   function check_verify($code,$id=""){
   	 
   	 $verify=new \Think\Verify();
   	 return $verify->check($code,$id);

   }
}