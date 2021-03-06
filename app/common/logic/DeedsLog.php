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


         $where['status']=1;
         $order=['sort'=>'desc','create_time'=>'desc'];
         $field= 'id,content';
         $list  = $this->modelDeedsLog->getList($where,$field,$order,false);
         foreach ($list as $k=>$val){
             $list[$k]['content'] = imageUrl($list[$k]['content']);
         }
         return $list;
     }


     /**
      * 新闻报道详情
      *
      */
      public function LogInfo($id = null){

          if(empty($id) ||is_null($id) || $id <=0){
              return false;
          }

          $info = $this->modelDeedsLog->getInfo(['id'=>$id]);

          $info['imgs_ids'] = explode(',',$info['imgs_ids']);

          foreach ($info['imgs_ids'] as $k =>$val){
              $arr[] = $_SERVER['HTTP_HOST'].$this->logicFile->getPictureUrl($val);
          }

          $info['imgs_ids'] =$arr;
          $info['content'] = imageUrl($info['content']);
          $info['introduce'] = geteditorcontent($info['introduce']);

          return $info;
      }


}