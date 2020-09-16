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


          if(empty($params['title']) || !isset($params['title'])){
              return [RESULT_ERROR,'标题不能为空'];
          }

          if(empty($params['video']) || !isset($params['video'])){
              return [RESULT_ERROR,'请上传视频文件！'];
          }

          if(empty($params['content']) || !isset($params['content'])){
              return [RESULT_ERROR,'前言描述不能为空'];
          }

          if(empty($params['id']) || !isset($params['id'])){
              return [RESULT_ERROR,'主键不存在'];
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

          if(empty($params['title']) || !isset($params['title'])){
              return [RESULT_ERROR,'标题不能为空'];
          }

          if(empty($params['video']) || !isset($params['video'])){
              return [RESULT_ERROR,'请上传视频文件！'];
          }

          if(empty($params['content']) || !isset($params['content'])){
              return [RESULT_ERROR,'前言描述不能为空'];
          }

          if(empty($params['id']) || !isset($params['id'])){
              return [RESULT_ERROR,'主键不存在'];
          }

          $url = url('getcontent');
          $types = isset($params['id'])? '编辑':'添加';
          $ret = $this->modelPrefaceContent->setInfo($params);
          $ret && action_log($types,'prefacecontent edit where id ='.$ret);
          return $ret ? [RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelPrefaceContent->getError()];
      }

}