<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 17:14
 */

namespace app\api\controller;

/**
 * Class Product
 * @package app\api\controller
 * 项目精选 接口控制器
 */

class Product extends ApiBase{

    /**
     * 获取列表展示 接口
     */
     public function getProductList(){
         $list = $this->logicProduct->getProductList();

         return !empty($list)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
     }

     /**
      * 项目精选介绍 接口
      */
      public function getProductContent(){

          $info =  $this->logicProcudtContent->getApiContent();

          return !empty($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
      }

      /**
       * 进入详情接口
       * id
       */
      public function  seeThisContent(){
         if(IS_POST){

             $info = $this->logicProduct->getThisApi($this->param['id']);

             if($info == false){
                 return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'无法获取查询id']);
             }

                return $this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]);
         }

         return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
      }
}