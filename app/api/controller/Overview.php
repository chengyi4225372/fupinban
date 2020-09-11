<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 14:36
 */
namespace app\api\controller;

/**
 * Class Overview
 * @package app\api\controller
 * 综述 api控制器
 */

class Overview extends ApiBase{

    /**
     * 综述管理分类图片 标题 接口
     */
    public function getOverCates(){
        if(IS_GET) {

            $list = $this->logicOverviewCates->getCatesList();

            return isset($list) && !empty($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
         }
          return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
        }

    /**
     * 深圳当担新闻列表接口
     */
     public function getNews(){
         if(IS_GET) {
             $list = $this->logicOverviewCates->getNewsList();

             return isset($list) && !empty($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
          }
            return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
         }


     /**
      * 深圳扶贫简史接口
      */
      public function getHistoryNews(){
          if(IS_GET) {

              $info = $this->logicOverviewCates->getHistoryInfo();

              return isset($info) && !empty($info['content']) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $info]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
          }
              return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
      }

}