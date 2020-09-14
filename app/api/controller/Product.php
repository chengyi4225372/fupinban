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
         if(IS_GET) {
             $list = $this->logicProduct->getProductList();

             return !empty($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
           }

           return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
         }

     /**
      * 项目精选简介 接口
      */
      public function getProductContent(){
         if(IS_GET){
             $info =  $this->logicProductContent->getApiContent();

             return !empty($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
          }

          return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
      }

      /**
       * 进入详情接口
       * id
       */
      public function  seeThisContent(){
         if(IS_POST){
             if(empty($this->param['id']) || !isset($this->param['id']) || is_null($this->param['id'])){
                 return $this->apiReturn(['code'=>RESULT_SUCCESS,'msg'=>'无法获取查询id']);
             }

             $info = $this->logicProduct->getThisApiVal($this->param['id']);

             if($info == false){
                 return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'无法获取查询id']);
             }

                return $this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]);
         }

         return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
      }
}