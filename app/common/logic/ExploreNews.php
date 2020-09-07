<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 16:53
 */
namespace app\common\logic;

class ExploreNews extends LogicBase{


    /**
     *探索新闻管理
     */
     public function getThisList($cate_id = null){

         if(empty($cate_id) || is_null($cate_id) || $cate_id <=0){
             return false;
         }

         $where = ['cate_id'=>$cate_id,'status'=>1];
         $order = ['sort'=>'desc','create_time'=>'desc'];

         return $this->modelExploreNews->getList($where,false,$order,false);
     }

}