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

         $order =['a.sort'=>'desc','a.create_time'=>'desc'];
         $field = 'a.id,a.title,p.path';

         $this->modelGloryCates->join=$join;

         $list = $this->modelGloryCates->getList(null,$field,$order,false);

         foreach ($list as $k=>$val){
             $list[$k]['path'] = config('Path.img').$list[$k]['path'];
         }

         return $list;
     }


}