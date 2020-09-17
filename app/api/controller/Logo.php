<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/17
 * Time: 17:10
 */
namespace app\api\controller;

class Logo extends ApiBase{

    /**
     * 小程序logo 接口
     */
     public function getLogo(){
         if(IS_GET){

             $info = $this->logicLogo->getlogoPath();

             return isset($info)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> NULL]);

         }
         return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
     }
}