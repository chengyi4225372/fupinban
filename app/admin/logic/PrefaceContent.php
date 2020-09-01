<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 15:04
 */
namespace app\admin\logic;

use app\admin\model\ActionLog;

class PrefaceContent extends AdminBase{


    /**
     * 获取前言内容
     */
     public function getOneContent(){

         return $this->modelPrefaceContent->getInfo();
     }

     /**
      * 添加前文内容
      */
      public function setContent($params=[]){

          $result = $this->validatePrefaceContent->scene('add')->check($params);

          if(!$result){
              return  [RESULT_ERROR,$this->validatePrefaceContent->getError()];
          }

          $url = url('getcontent');
          $types = isset($params['id'])? '编辑':'添加';
          $ret = $this->modelPrefaceContent->setInfo($params);
          $ret && action_log($types,'prefacecontent where id ='.$ret);

          return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelPrefaceContent->getError()];
      }

      /**
       * 编辑前言新闻内容
       */
      public function setThisContent($params =[]){

          $result = $this->validatePrefaceContent->scene('edit')->check($params);

          if(!$result){
              return  [RESULT_ERROR,$this->validatePrefaceContent->getError()];
          }

          $url = url('getcontent');
          $types = isset($params['id'])? '编辑':'添加';
          $ret = $this->modelPrefaceContent->updateInfo(['id'=>$params['id']],['content'=>$params['content']]);
          $ret && action_log($types,'prefacecontent where id ='.$ret);
          return $ret ? [RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelPrefaceContent->getError()];
      }

}