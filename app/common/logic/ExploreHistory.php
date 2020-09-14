<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 16:50
 */

namespace app\common\logic;

class ExploreHistory extends  LogicBase{

     /**
      * 历史回望管理
      */
     public function getThisinfo(){

         $this->modelExploreHistory->alias('a');

         $join=[
             [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
         ];

         $this->modelExploreHistory->join =$join;
         $field = 'a.id,a.title,p.path';

         $info = $this->modelExploreHistory->getInfo(null,$field);
         $info['path'] =config('Path.img').$info['path'];

         return $info;
     }


}