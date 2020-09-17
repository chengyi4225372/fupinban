<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/17
 * Time: 14:31
 */
namespace app\admin\logic;

class WxUser extends  AdminBase{


    /**
     * 列表
     */
      public function getwxList(){

          $list = $this->modelWxUser->getList(['status'=>1],false,['id'=>'desc'],20);

          return $list?$list:'';
      }

      /**
       * 删除
       */
       public function setDelVal($id = ''){
           if(empty($id) || !isset($id)){
               return false;
           }


           $url = url('index');
           $type= isset($params['id'])?'编辑':'添加';
           $ret = $this->modelWxUser->setFieldValue(['id'=>$id],'status',0);
           $ret && action_log($type,'model wxuser delete where id='.$id);
           return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelWxUser->getError()];
       }
}