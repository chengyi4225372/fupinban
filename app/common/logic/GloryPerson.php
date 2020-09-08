<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 14:40
 */
namespace app\common\logic;

class GloryPerson extends LogicBase{


    /*
     *先进个人列表 接口
     */
     public function getApiList(){
         $this->modelGloryPerson->alias('a');

         $join =[
             [SYS_DB_PREFIX . 'picture p','a.user_img = p.id','LEFT'],
         ];

         $order =['a.sort'=>'desc','a.create_time'=>'desc'];
         $where['a.status'] =1;
         $this->modelGloryPerson->join=$join;
         return $this->modelGloryPerson->getList($where,'a.*,p.path',$order,false);
     }
}