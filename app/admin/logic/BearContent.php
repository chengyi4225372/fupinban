<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/4
 * Time: 9:30
 */
namespace app\admin\logic;


class BearContent extends  AdminBase{

    /**
     * 添加
     */
    public function setContentVal($params=[]){

          if(!isset($params['content']) || empty($params['content'])){
              return [RESULT_ERROR,'请输入简介内容'];
          }

         if(!isset($params['title']) || empty($params['title'])){
            return [RESULT_ERROR,'请输入标题'];
         }

          $url = url('index');
          $ret = $this->modelBearContent->setinfo($params);
          $ret && action_log('添加','model bearcontent add where id = '.$ret);
          return $ret ?[RESULT_SUCCESS,['添加成功'],$url]:[RESULT_ERROR,$this->modelBearContent->getError()];
    }

    /**
     * 编辑
     */
     public function updateContentVal($params=[]){

         if(!isset($params['content']) || empty($params['content'])){
             return [RESULT_ERROR,'请输入简介内容'];
         }

         if(!isset($params['title']) || empty($params['title'])){
             return [RESULT_ERROR,'请输入标题'];
         }

         if($params['id'] <=0 || empty($params['id'])){
             return [RESULT_ERROR,'缺少更新条件'];
         }

         $url = url('index');
         $ret = $this->modelBearContent->setinfo($params);
         $ret && action_log('编辑','model bearcontent edit where id = '.$ret);
         return $ret ?[RESULT_SUCCESS,['操作成功'],$url]:[RESULT_ERROR,$this->modelBearContent->getError()];
     }

     /**
      * 获取详情
      */
      public function getThisVal(){

          return $this->modelBearContent->getInfo();
      }

}