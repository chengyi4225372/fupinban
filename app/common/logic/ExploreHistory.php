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

         return $this->modelExploreHistory->getInfo();
     }


}