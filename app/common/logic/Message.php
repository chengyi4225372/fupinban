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
         $where=['a.status'=>1];

         if(empty($order) || !isset($order) || is_null($order)){
             return false;
         }

         if($order == 1){
             $orderBy  = ['a.num'=>'desc'];
         }

         if($order == 2){
             $orderBy = ['a.create_time'=>'desc'];
         }


         $this->modelMessage->alias('a');

         $join =[
             [SYS_DB_PREFIX . 'wx_user b','a.u_id = b.id','LEFT'],
             [SYS_DB_PREFIX . 'zan z','a.id = z.m_id','LEFT'],
         ];

         $this->modelMessage->join =$join;

         $field='a.id,a.u_id,a.num,a.content,a.create_time,b.nickname,b.avatarUrl,z.u_id as uid';

         $list  = $this->modelMessage->getList($where,$field,$orderBy,false);

         foreach ($list as $k =>$val){

             if($list[$k]['u_id'] == $list[$k]['uid']){
                 $list[$k]['fabulous'] = true;
             }else {
                 $list[$k]['fabulous'] = false;
             }
         }

         return $list;
     }

     /**
      * 提交留言
      */
      public function setParamsVal($params=[]){

          $params['create_time'] =time();
          $res = $this->modelMessage->setInfo($params);

          if($res !== false){
              return true;
          }else {
              return  false;
          }
      }



}