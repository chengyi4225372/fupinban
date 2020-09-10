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
         $list = $this->modelGloryPerson->getList($where,'a.*,p.path',$order,false);

         foreach ($list as $k =>$val){
           $list[$k]['path'] = config('Path.img').$list[$k]['path'];
         }
         return $list;
     }

     /**
      * 先进个人详情接口
      */
     public function getApiPersonInfo($id = null){

         if(empty($id)|| is_null($id) || $id <=0){
             return false;
         }

         return $this->modelGloryPerson->getInfo(['id'=>$id]);
     }

}