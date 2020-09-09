<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 17:44
 */
namespace app\admin\logic;

class DeedsDescribe extends AdminBase{

    /**
     * 添加描述
     */
     public function setThisVal($params=[]){

         if(empty($params['content']) || !isset($params['content'])){
             return [RESULT_ERROR,'描述不能为空'];
         }

         $url = url('describe');
         $type= isset($params['id'])?'编辑':'添加';
         $ret = $this->modelDeedsDescribe->setInfo($params);
         $ret && action_log($type,'model deedsdescribe add  where id='.$ret);
         return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelDeedsDescribe->getError()];

     }

     /**
      * 编辑修改
      */
     public function updateThisVal($params=[]){
         if(empty($params['content']) || !isset($params['content'])){
             return [RESULT_ERROR,'描述不能为空'];
         }

         if(empty($params['id']) || !isset($params['id'])){
             return [RESULT_ERROR,'缺少更新条件'];
         }

         $url = url('describe');
         $type= isset($params['id'])?'编辑':'添加';
         $ret = $this->modelDeedsDescribe->setInfo($params);
         $ret && action_log($type,'model deedsdescribe edit where id='.$params['id']);
         return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelDeedsDescribe->getError()];
     }

     /**
      * 查询 展示
      */
     public function getThisVal(){
         return $this->modelDeedsDescribe->getInfo();
     }
}