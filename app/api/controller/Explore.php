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
     * 探索分类控制器
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
     * 探索新闻管理
     */
     public function  HistoryNews(){
          if(IS_POST){
            $info_list = $this->logicExploreNews->getThisList($this->param['cate_id']);

            return isset($info_list) ?$this->apiReturn(['code'=>RESULT_SUCCESS, 'data'=>$info_list]):$this->apiReturn(['code'=>RESULT_ERROR,'data'=>null]);

          }

          return  $this->apiReturn(['code'=>RESULT_ERROR, 'msg'=>'请求方式不合法']);
     }

}