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
      public function findThisVal($openid = null){

          if(empty($openid) || !isset($openid)){
              return false;
          }


          $info = $this->modelWxUser->where(['openid'=>$openid])->find();

          return $info?$info:'';
      }




}