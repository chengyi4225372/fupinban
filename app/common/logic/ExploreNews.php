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

         if(empty($cate_id) || is_null($cate_id) || !isset($cate_id)){
             return false;
         }

         $where = ['cate_id'=>$cate_id,'status'=>1];
         $order = ['sort'=>'desc','create_time'=>'desc'];
         $field = 'id,title';

         $list = $this->modelExploreNews->getList($where,$field,$order,false);

         $list['content'] =  $this->modelExploreCates->getValue(['id'=>$cate_id],'content'); //分类介绍简介
         $list['content'] =  geteditorcontent($list['content']);

         return  $list;
     }



    /**
     * 获取新闻详情
     */
    public function getApiNewsVal($id =''){
        if(empty($id) || is_null($id) || $id<=0 || !isset($id)){
            return false;
        }

        $info = $this->modelExploreNews->getInfo(['id'=>$id],'id,title,content');
        $info['content']  = imageUrl($info['content']);

        return $info;
    }


}