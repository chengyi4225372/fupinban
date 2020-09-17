<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/16
 * Time: 18:53
 */

namespace app\common\logic;

class WxUser extends  LogicBase{


    /**
     * 新增
     */
     public function setThisVal($params=[]){

         return $this->modelWxUser->setInfo($params);
      }


    /**
     * 更新操作
     */
    public function updateVal($id='' ,$openid=''){

        return $this->modelWxUser->updateInfo(['id'=>$id],['openid'=>$openid]);
    }

     /**
      * 更新
      */
      public function findThisVal($id=''){
          if(empty($id) || $id <=0){
              return false;
          }

          $info = $this->modelWxUser->getInfo(['id'=>$id],'id,openid');

          return $info ?$info:'';
      }




}