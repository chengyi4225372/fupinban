<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 16:25
 */
namespace app\admin\logic;


class MessageContent extends  AdminBase{

    /**
     * 获取留言结语
     */
     public function getThisInfo(){
         return $this->modelMessageContent->getInfo();
     }


     /**
      * 添加留言结语
      */
     public function setContent($params =[]){
         $result = $this->validateMessageContent->scene('add')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateMessageContent->getError()];
         }

         $url   = url('contents');
         $types = isset($params['id'])?'编辑':'添加';
         $ret   = $this->modelMessageContent->setInfo($params);
         $ret && action_log($types,'model messagecontent where id= '.$ret);
         return  $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelMessageContent->getError()];
     }



     /**
      * 编辑
      */
     public function updateThisContent($params =[]){
         $result = $this->validateMessageContent->scene('edit')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateMessageContent->getError()];
         }

         $url   = url('contents');
         $types = isset($params['id'])?'编辑':'添加';
         $ret   = $this->modelMessageContent->updateInfo(['id'=>$params['id'],'content'=>$params['content']]);
         $ret && action_log($types,'model messagecontent where id= '.$ret);
         return  $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelMessageContent->getError()];
     }
}