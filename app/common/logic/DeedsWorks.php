<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 15:11
 */
namespace app\common\logic;


class DeedsWorks extends LogicBase{

    /**
    * 获取作品列表
    * cid
    * 1 music 2 video
    */
     public function getWorkList($cid = ''){

         if(empty($cid) || is_null($cid) || $cid <=0){
             return false;
         }

         $order = ['sort'=>'desc','id'=>'desc'];

         return $this->modelDeedsWork->getList(['cates_id'=>$cid],false,$order,false);
     }


}