<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 9:30
 */
namespace app\api\controller;

class Preface extends ApiBase{

    /**
     * 前言图片接口
     */
    public function getPrefaceImg(){
        $info = $this->logicPrefaceImg->getPrefaceImgOne();
        return  isset($info['path']) ? $this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
    }



    /**
     *获取前言内容接口
     */
     public function getPrefaceContent(){
         $info = $this->logicPrefaceContent->getApiContent();
         return  isset($info['content']) ? $this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);
     }





}