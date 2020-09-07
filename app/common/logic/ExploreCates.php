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

         return $this->modelExploreCates->getList($where,'a.*,p.path',['sort'=>'desc'],false);
     }

}