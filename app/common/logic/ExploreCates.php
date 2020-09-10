<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 16:40
 */
namespace app\common\logic;

class ExploreCates extends LogicBase{



    /**
     * 探索分类
     */
     public function getCateslist(){

         $this->modelExploreCates->alias('a');
         $where['a.status'] =1;

         $join = [
             [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
         ];

         $this->modelExploreCates->join = $join;
         $field = 'a.id,a.sort,a.title,a.content,p.path';
         $order = ['sort'=>'desc'];

         $list = $this->modelExploreCates->getList($where,$field,$order,false);

         foreach ($list as $k =>$val){
             $list[$k]['path'] = config('Path.img').$list[$k]['path'];
         }

         return $list;
     }


}