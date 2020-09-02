<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 10:21
 */

namespace app\admin\logic;

class ExploreHistory extends  AdminBase{

    /**
     * 添加
     */
      public function setThisVal($params =[]){

          if(empty($params['title'])){
              return [RESULT_ERROR,'标题不能为空'];
          }

          if($params['content']==''){
              return [RESULT_ERROR,'简介不能为空'];
          }

          if($params['imgs']==''){
              return [RESULT_ERROR,'请上传图片'];
          }

           $url = url('index');
           $type= isset($params['id'])?'编辑':'添加';
           $ret = $this->modelExploreHistory->setInfo($params);
           $ret && action_log($type,'model explorehistory where id= '.$ret);
           return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR, $this->modelExploreHistory->getError()];

      }

      /**
       * 编辑
       */
      public function updateThisVal($params=[]){

          if(empty($params['title'])){
              return [RESULT_ERROR,'标题不能为空'];
          }

          if($params['content']==''){
              return [RESULT_ERROR,'简介不能为空'];
          }

          if($params['imgs']==''){
              return [RESULT_ERROR,'请上传图片'];
          }

          $url = url('index');
          $type= isset($params['id'])?'编辑':'添加';
          $ret = $this->modelExploreHistory->setInfo($params);
          $ret && action_log($type,'model explorehistory where id= '.$params['id']);
          return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR, $this->modelExploreHistory->getError()];
      }

      /**
       * 获取详情
       */
      public function getThisVal(){
          return  $this->modelExploreHistory->getInfo();
      }
}