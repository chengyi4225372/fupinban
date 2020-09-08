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
         $field = 'a.id,a.title,a.sort,p.path';

         $this->modelOverviewCates->join=$join;


         return $this->modelOverviewCates->getList($where,$field,$order,false);
     }


     /**
      * 深圳当担新闻列表接口
      */
      public function getNewsList(){
            $where['status'] =1;
            $field='id,type_id,title,sort,content';
            return  $this->modelOvernews->getlist($where,$field,['sort'=> 'desc'],false);
      }

      /**
       * 深圳扶贫简史接口
       */
      public function  getHistoryInfo(){

          $field ='id,content';
          return $this->modelBearContent->getInfo(null,$field);
      }



}