<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 14:50
 */

namespace app\common\logic;

class OverviewCates  extends  LogicBase{


     /**
      * 获取综述分类列表
      */
     public function getCatesList(){

         $this->modelOverviewCates->alias('a');
         $join =[
             [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
         ];

         $where['a.status'] =1;
         $order = ['a.sort'=>'desc',];
         $field = 'a.id,a.title,p.path';

         $this->modelOverviewCates->join=$join;

         $list = $this->modelOverviewCates->getList($where,$field,$order,false);

         foreach ($list as $k=>$val){
             $list[$k]['path'] = config('Path.img'). $list[$k]['path'];
         }

         return $list;
     }


     /**
      * 深圳当担新闻列表接口
      */
      public function getNewsList(){
            $where['status'] =1;
            $field='id,type_id,title,content';
            return  $this->modelOvernews->getlist($where,$field,['sort'=> 'desc'],false);
      }

      /**
       * 深圳扶贫简史接口
       */
      public function  getHistoryInfo(){

          $field ='id,title,content';
          $info  = $this->modelBearContent->getInfo(null,$field);
          $info['content'] = html_entity_decode(imageUrl($info['content']));
          return $info;
      }



}