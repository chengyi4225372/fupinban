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
          $list = $this->logicExploreCates->getCateslist();

          return isset($list)?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
    }

    /**
     * 历史回望管理设置
     */
    public  function  getHistoryApi(){
        $info = $this->logicExploreHistory->getThisinfo();

        return  isset($info) ?$this->apiReturn(['code'=>RESULT_SUCCESS,'data'=>$info]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=> null]);
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