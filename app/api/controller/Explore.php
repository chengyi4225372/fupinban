<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 15:13
 */

namespace app\api\controller;

/**
 * Class Explore
 * @package app\api\controller
 * 探索实践 接口控制器
 */

class Explore extends ApiBase{

    /**
     * 探索分类 接口
     */
    public function getExploreCates(){
         if(IS_GET) {
             $list = $this->logicExploreCates->getCateslist();

             return isset($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
         }
        return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
    }

    /**
     * 历史回望管理设置
     */
    public  function  getHistoryApi(){
        if(IS_GET) {
            $info = $this->logicExploreHistory->getThisinfo();

            return isset($info) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $info]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
        }
        return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
    }


    /**
     * 历史回望新闻接口
     */
     public function getHistoryNews(){
         if(IS_GET){
             $list = $this->logicHistory->getThislist();

             return isset($list) ? $this->apiReturn(['code' => RESULT_SUCCESS, 'data' => $list]) : $this->apiReturn(['code' => RESULT_ERROR, 'data' => null]);
         }
         return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
     }

    /**
     * 探索实践简介接口
     */
     public function getExploreDesc(){
         if(IS_GET){
             $info = $this->logicExploreContent->getThisVal();

             return isset($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
         }
         return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请求方式错误']);
     }


    /**
     * 探索新闻类型新闻列表 接口
     */
     public function  HistoryNews(){
          if(IS_POST){

          if(empty($this->param['cate_id']) || is_null($this->param['cate_id']) || !isset($this->param['cate_id'])){
                  return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请传递查询条件id']);
              }

            $info_list = $this->logicExploreNews->getThisList($this->param['cate_id']);

          if($info_list == false){
                return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'无法获取分类参数']);
            }

            return  isset($info_list)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info_list]):$this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'该类别下没有新闻展示']);
          }

          return  $this->apiReturn(['code'=>RESULT_ERROR, 'msg'=>'请求方式不合法']);
     }



     /*
      * 探索管理新闻简介内容
      */
      public function newsInfo(){
          if(IS_POST){

              if(empty($this->param['cate_id']) || is_null($this->param['cate_id']) || !isset($this->param['cate_id'])){
                  return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请传递查询条件id']);
              }

              $content = $this->logicExploreNews->getThisContent($this->param['cate_id']);
              return  isset($content)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$content]):$this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'简介内容为空']);

          }
          return  $this->apiReturn(['code'=>RESULT_ERROR, 'msg'=>'请求方式不合法']);
      }

     /**
      * 探索管理新闻 详情接口
      */
     public function ExploreNewsInfo(){
         if(IS_POST){

             if(empty($this->param['id']) || is_null($this->param['id']) || !isset($this->param['id'])){
                 return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'请传递查询条件id']);
             }

             $info = $this->logicExploreNews->getApiNewsVal($this->param['id']);

             if($info == false){
                 return $this->apiReturn(['code'=>RESULT_ERROR,'msg'=>'无法获取查询参数']);
             }

             return  isset($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
         }

           return  $this->apiReturn(['code'=>RESULT_ERROR, 'msg'=>'请求方式不合法']);
     }

}