<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 10:04
 */
namespace app\api\controller;

use aip_baidu\AipContentCensor;

class Message extends ApiBase{

    /**
     * 百度检测文本内容信息
     */
    protected $appId = '22689084';
    protected $apiKey = 'jO6cC0KHejSiR77WXXnQAjZx';
    protected $secretKey = 'iKtgeAhtV9j1kFT8FDEt3CG4bBiENflx';

    /**
     * 获取留言结语 接口
     */
     public function  getMessageContentApi(){
         if(IS_GET){

             $info  = $this->logicMessageContent->getApiContent();

             return  isset($info)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERRRO,'data'=> null]);
         }

         return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误!']);
     }


     /**
      * 获取留言 接口
      * order
      * 1.热门留言
      * 2.最新留言
      */
      public function getMessageList(){
          if(IS_POST){
              $order = $this->param['order'];

              if(empty($order) || !isset($order) || is_null($order)){
                  return  $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请传递查询参数']);
              }


              $list = $this->logicMessage->messageApiList($order);

              if($list == false){
                  return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'接口参数不合法']);
              }

              return isset($list)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
          }

             return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误！']);
      }



      /**
       * 提交留言 接口
       */
       public function setMessageApi(){
           if(IS_POST){

              $params = $this->param;

              if(empty($params)){
                  return  $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'传递查询参数不合法！']);
              }

              if(empty($params['content']) || !isset($params['content']) || $params['content'] <0 || is_null($params['content'])){
                  return  $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'留言内容不能为空！']);
              }

              //检测内容文本
              $aip =  new \aip_baidu\AipContentCensor($this->appId,$this->apiKey,$this->secretKey);

              $checkMsg  = $aip->check_text($params['content']);

              //审核结果类型，可取值1.合规，2.不合规，3.疑似，4.审核失败
              if($checkMsg['conclusionType'] != 1){
                  return  $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'发布内容不合规']);
              }


              $result = $this->logicMessage->setParamsVal($params);

              return  $result !== false ?$this->apiReturn(['code'=>RESULT_SUCCESS,'msg'=>'提交成功']):$this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'提交失败']);
           }
          return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误！']);
       }


       /**
        * 点赞
        */
      public function zan(){
        if(IS_POST){
          $params = $this->param;

          if(empty($params)){
              return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'传递参数不合法']);
          }

          if($params['u_id'] =='' || empty($params['u_id'])){
              return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请传递用户u_id！']);
          }

          if($params['m_id'] =='' || empty($params['m_id'])){
                return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请传递留言m_id！']);
          }

          $ret = $this->logicZan->setZan($params);

          return $ret !== false ? $this->apiReturn(['code'=>RESULT_SUCCESS,'msg'=>'点赞成功！']):$this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'点赞失败']);
        }

        return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误！']);
    }

}