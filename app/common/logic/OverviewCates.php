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
         $order = ['sort'=>'desc','create_time'=>'desc'];

         $this->modelOverviewCates->join=$join;

         return $this->modelOverviewCates->getList($where,'a.*,p.path',$order,false);
     }


     /**
      * 深圳当担新闻列表接口
      */
      public function getNewsList(){
            $where['status'] =1;

            return  $this->modelOverNews->getlist($where,false,['sort'=> 'desc'],false);
      }

      /**
       * 深圳扶贫简史接口
       */
      public function  getHistoryInfo(){

          return $this->modelBearContent->getInfo();
      }



}