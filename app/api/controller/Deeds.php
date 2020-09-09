<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 9:02
 */

namespace app\api\controller;

/**
 * Class Deeds
 * @package app\api\controller
 * 事迹风采 控制器
 */

class Deeds extends ApiBase{

    /**
     * 事迹风采分类设置接口
     */
     public function getCatesList(){
         if(IS_GET){
             $list = $this->logicDeedsCates->getThisList();

             return  isset($list) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
         }

         return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式不对！']);
     }

     /**
      * 事迹风采简介
      */
      public function getDeedsContent(){
          if(IS_GET) {
              $info = $this->logicDeedsContent->getThisApiVal();

              return !empty($info) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $info]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
          }

          return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式不对！']);
         }


      /**
       * 扶贫作品设置
       * 音乐列表
       * cid =1
       */
       public function getWorksMusicList(){
          if(IS_POST) {
              if(!isset($this->param['cid']) || empty($this->param['cid']) ||is_null($this->param['cid'])){
                  return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'传递数据不合法！']);
              }

              $list = $this->logicDeedsWorks->getWorkList($this->param['cid']);

              if ($list == false) {
                  return $this->apiReturn(['code' => RESULT_ERROR, 'msg' => '无法获取查询参数']);
              }

              return isset($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
          }
           return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式不对！']);
       }


     /**
      * 扶贫作品设置
      * 视频列表
      * cid =2
      */
      public function getWorksVideoList(){
          if(IS_POST) {

              if(!isset($this->param['cid']) || empty($this->param['cid']) ||is_null($this->param['cid'])){
                  return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'传递数据不合法！']);
              }

              $list = $this->logicDeedsWorks->getWorkList($this->param['cid']);

              if ($list == false) {
                  return $this->apiReturn(['code' => RESULT_ERROR, 'msg' => '无法获取查询参数']);
              }

              return isset($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
          }
             return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式不对！']);
      }


       /**
        * 扶贫日记列表
        */
        public function getDeedsLog(){

            if(IS_GET) {
                $list = $this->logicDeedsLog->getLogList();

                return !empty($list) && isset($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
            }

            return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式不对！']);
        }

        /**
         * 获取日志详情
         */
         public function deesLogInfo(){
              if(IS_POST){

                  if(!isset($this->param['id']) || empty($this->param['id']) ||is_null($this->param['id'])){
                      return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'传递数据不合法！']);
                  }

                  $info = $this->logicDeedsLog->LogInfo($this->param['id']);

                  if($info == false){
                      return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'详情已删除或者不存在']);
                  }

                  return  isset($info)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
              }

              return $this->apiReturn(['code'=>RESULT_SUCCESS,'msg'=>'请求方式错误']);
         }


        /**
         * 扶贫报道描述 接口
         * todo 明天接口测试从这开始，然后测试留言模块
         */
        public function deedsDescribe(){
           if(IS_GET){
               $info = $this->logicDeedsDescribe->getDescribeInfo();

               return  isset($info['content'])?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);

           }
               return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误！']);
        }


        /**
         * 扶贫报道新闻列表 接口
         */
        public function getNewsList(){
          if(IS_GET){
              $list = $this->logicDeedsNews->getNewsList();

              return  isset($list)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> NULL]);
          }
              return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误！']);
        }


        /**
         * 扶贫报道详情 接口
         */
        public function getNewsInfo(){
            if(IS_POST){

              if(!isset($this->param['id']) || empty($this->param['id']) || is_null($this->param['id'])){
                  return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'传递数据不合法！']);
              }

              $info  = $this->logicDeedsNews->getNewsInfo($this->param['id']);

              if($info == false){
                  return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'该详情已删除或传递条件错误']);
              }

              return  isset($info)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);

            }
            return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误！']);
        }

}