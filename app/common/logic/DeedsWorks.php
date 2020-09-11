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

         $where =['a.cates_id'=>$cid,'a.status'=>1];
         $order = ['a.sort'=>'desc','a.id'=>'desc'];
         $field = 'a.id,a.title,f.path';

         $this->modelDeedsWorks->alias('a');

         $join=[
             [SYS_DB_PREFIX . 'file f','a.resources = f.id','LEFT'],
         ];

         $this->modelDeedsWorks->join=$join;

         $list = $this->modelDeedsWorks->getList($where,$field,$order,false);

         foreach ($list as $key =>$val){
             $list[$key]['path'] =config('Path.file').$list[$key]['path'];
         }

         return $list;
     }


}