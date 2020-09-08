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
     * 事迹风采日志列表
     */
     public function getLogList(){
         $where['status']=1;
         $order=['sort'=>'desc','create_time'=>'desc'];
         return $this->modelDeedsLog->getList($where,false,$order,false);
     }


     /**
      * 日志详情
      */
      public function LogInfo($id = null){

          if(empty($id) ||is_null($id) || $id <=0){
              return false;
          }

          return $this->modelDeedsLog->getInfo(['id'=>$id,'status'=>1]);
      }


}