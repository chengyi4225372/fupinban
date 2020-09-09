<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 10:07
 */
namespace app\common\logic;

class Message extends LogicBase{


    /**
     * 获取留言列表
     */
     public function  messageApiList($order =''){
         $where=['status'=>1];

         if(empty($order) || !isset($order) || is_null($order)){
             return false;
         }

         if($order == 1){
             $orderBy  = ['num'=>'desc'];
         }

         if($order == 2){
             $orderBy = ['create_time'=>'desc'];
         }

         $field='id,user,u_id,num,content,create_time';

         return $this->modelMessage->getList($where,$field,$orderBy,false);
     }
}