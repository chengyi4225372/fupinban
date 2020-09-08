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
      * todo 接口测试到这里
      */
      public function getDeedsContent(){
          $info = $this->logicDeedsContent->getThisApiVal();

          return !empty($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
      }


      /**
       * 扶贫作品设置
       * 音乐列表
       */
       public function getWorksMusicList($cid = 1){
          $list = $this->logicDeedsWorks->getWorkList($cid);

          if($list == false){
              return $this->apiReturn(['code'=>RESULT_SUCCESS,'msg'=>'无法获取查询参数']);
          }

          return  isset($list)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
       }


     /**
      * 扶贫作品设置
      * 视频列表
      */
      public function getWorksVideoList($cid = 2){
          $list = $this->logicDeedsWorks->getWorkList($cid);

          if($list == false){
              return $this->apiReturn(['code'=>RESULT_SUCCESS,'msg'=>'无法获取查询参数']);
          }

          return  isset($list)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
      }


       /**
        * 扶贫日记列表
        */
        public function getDeedsLog(){

            $list = $this->logicDeedsLog->getLogList();

            return  !empty($list) && isset($list) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
        }



        /**
         * 获取日志详情
         */
         public function  deesLogInfo(){
              if(IS_POST){

                  $info = $this->logicDeedsLog->LogInfo($this->param['id']);

                  if($info == false){
                      return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'缺少查询条件']);
                  }

                  return  isset($info)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
              }

              return $this->apiReturn(['code'=>RESULT_SUCCESS,'msg'=>'请求方式错误']);
         }



}