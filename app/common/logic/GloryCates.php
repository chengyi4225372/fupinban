<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 11:51
 */
namespace app\common\logic;


class GloryCates extends LogicBase{

    /**
     * 扶贫荣耀分类设置
     */
     public function getApiList(){
         $this->modelGloryCates->alias('a');

         $join=[
             [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
         ];
         $where =['a.status'=>1];
         $order=['a.sort'=>'desc','create_time'=>'desc'];

         $this->modelGloryCates->join=$join;

         return   $this->modelGloryCates->getList($where,'a.*,p.path',$order,false);
     }


}