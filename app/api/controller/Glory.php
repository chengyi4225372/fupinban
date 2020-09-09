<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 10:40
 */
namespace app\api\controller;

/**
 * Class Glory
 * @package app\api\controller
 * 事迹风采 荣耀控制器
 */

class Glory extends ApiBase{

     /**
      * 扶贫荣耀简介 接口
      */
      public function getGlotyContent(){

          $info = $this->logiGloryContent->getApiVal();

          return !empty($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
      }

      /**
       * 扶贫荣耀分类设置
       */
       public function  getGloryCates(){
           if(IS_GET) {
               $list = $this->logicGloryCates->getApiList();

               return isset($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
           }
           return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
       }


       /**
        * 先进单位简介
        */
        public function getCompanyDesc(){
           if(IS_GET) {
               $info = $this->logicGloryCompany->getApiContent();

               return isset($info) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $info]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
           }
            return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
        }

        /**
         * 先进个人
         */
        public function getGloryPersonList(){
           if(IS_GET) {
               $list = $this->logicGloryPerson->getApiList();

               return isset($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
           }

            return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
        }

        /**
         * 先进个人详情
         */
         public function personInfo(){
             if(IS_POST){

                $info = $this->logicGloryPerson->getApiPersonInfo($this->param['id']);

                if($info == false){
                    return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'无法获取查询参数']);
                }

                return  isset($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
             }

             return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
         }

}