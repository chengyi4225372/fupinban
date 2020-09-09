<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 10:04
 */
namespace app\api\controller;

class Message extends ApiBase{

    /**
     * 获取留言结语 接口
     */
     public function  getMessageContentApi(){
         if(IS_GET){

             $info  = $this->logicMessageContent->getApiContent();

             return  isset($info['content'])?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERRRO,'data'=> null]);
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
          if(IS_GET){
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
       * TODO 暂时先不写,看小程序对接之后完成
       */
       public function setMessageAPi(){
           if(IS_POST){

           }
          return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误！']);
       }

}