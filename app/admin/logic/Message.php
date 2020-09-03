<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 9:17
 */
namespace  app\admin\logic;


class Message extends  AdminBase{

    /**
     * 留言列表
     */
     public function getMsgList(){
         $where['status'] =1;
         $order =['num'=>'desc','create_time'=>'desc'];
         return $this->modelMessage->getList($where,false,$order,20);
     }


     /**
      * 查看留言详情
      */
     public function getThisInfo($id = null){
         if($id == null || empty($id) || $id ==''){
             return [RESULT_ERROR,'查询条件不存在'];
         }

         return   $this->modelMessage->getInfo(['id'=>$id]);
     }

     /**
      * 删除
      */
     public function delThisMsg($id = null){
         if($id == null || empty($id) || $id ==''){
             return [RESULT_ERROR,'删除条件不存在'];
         }

         $url = url('getmsglist');
         $ret = $this->modelMessage->setFieldValue(['id'=>$id],'status',0);
         $ret && action_log('删除留言列表','model message where id ='.$id);
         return $ret?[RESULT_SUCCESS,'删除成功',$url]:[RESULT_ERROR,$this->modelMessage->getError()];

     }



}