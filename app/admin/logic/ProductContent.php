<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 16:33
 */

namespace app\admin\logic;

class ProductContent extends  AdminBase{

      /**
       * 添加
       */
      public function setThisinfo($params =[]){
           if(empty($params['content']) || !isset($params['content'])){
               return [RESULT_ERROR,'介绍不能为空'];
           }

           $url = url('content');
           $type= isset($params['id'])?'编辑':'添加';
           $ret = $this->modelProductContent->setInfo($params);
           $ret && action_log($type,'model ProductContent where id='.$ret);
           return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_SUCCESS,$this->modelProductContent->getError()];

      }

      /**
       * 编辑
       */
      public function updateThisinfo($params=[]){
          if(empty($params['content']) || !isset($params['content'])){
              return [RESULT_ERROR,'介绍不能为空'];
          }

          if(empty($params['id']) || !isset($params['id'])){
              return [RESULT_ERROR,'缺少更新条件'];
          }

          $url = url('content');
          $type= isset($params['id'])?'编辑':'添加';
          $ret = $this->modelProductContent->setInfo($params);
          $ret && action_log($type,'model ProductContent where id='.$params['id']);
          return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_SUCCESS,$this->modelProductContent->getError()];
      }

      /**
       * 获取详情
       */
      public function getThisInfo(){
          return  $this->modelProductContent->getInfo();
      }

}