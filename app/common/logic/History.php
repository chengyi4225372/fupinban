<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/14
 * Time: 19:17
 */
namespace app\common\logic;

class History extends  LogicBase{
    /**
     * 列表接口
     */
     public function getThislist(){

         $where = ['status'=>1];
         $order = ['sort'=>'desc','create_time'=>'desc'];
         $field = 'id,title,content';

         $list = $this->modelHistory->getlist($where,$field,$order,false);

         foreach ($list as $k=>$val){
             $list[$k]['content'] = imageUrl($list[$k]['content']);
         }

         return $list;
     }
}