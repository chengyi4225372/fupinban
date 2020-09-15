<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 10:14
 */

namespace app\common\logic;

class DeedsLog extends LogicBase{

    /**
     * 事迹风采报道新闻列表
     */
     public function getLogList(){
         $this->modelDeedsLog->alias('a');

         $join = [

             [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],

         ];
         $this->modelDeedsLog->join = $join;

         $where['a.status']=1;
         $order=['a.sort'=>'desc','a.create_time'=>'desc'];
         $field= 'a.id,a.title,a.introduce,p.path';
         $list  = $this->modelDeedsLog->getList($where,$field,$order,false);

         foreach ($list as $key =>$val){
             $list[$key]['path'] =config('Path.img').$list[$key]['path'];
         }

         return $list;
     }


     /**
      * 新闻详情
      */
      public function LogInfo($id = null){

          if(empty($id) ||is_null($id) || $id <=0){
              return false;
          }

          $this->modelDeedsLog->alias('a');

           $join= [
               [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
               [SYS_DB_PREFIX . 'file f','a.music = f.id','LEFT'],
           ];

          $where = ['a.id'=>$id,'a.status'=>1];

          $field = 'a.id,a.title,a.content,a.music_title,f.path as fpath ,p.path as ppath';
          $this->modelDeedsLog->join=$join;

          $info  =  $this->modelDeedsLog->getInfo($where,$field);

          $info['content'] = imageUrl($info['content']);
          $info['fpath']   = config('Path.file').$info['fpath'];
          $info['ppath']   = config('Path.imgs').$info['ppath'];
      }


}