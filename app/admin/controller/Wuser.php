<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/17
 * Time: 14:28
 */

namespace app\admin\controller;


class Wuser extends AdminBase{

    /*
     * 列表
     */
     public function index(){

         $list = $this->logicWxUser->getwxList();
         $this->assign('list',$list);

         return $this->fetch();
     }

     /**
      * 删除
      */
      public function del(){
          IS_GET && $this->jump($this->logicWxUser->setDelVal($this->param['id']));
      }


}