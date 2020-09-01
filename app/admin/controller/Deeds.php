<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 10:56
 */

namespace app\admin\controller;


class Deeds extends  AdminBase{


    /**
     * 分类列表
     */
    public function getlist(){
        $list = $this->modelDeedsCates->getthisList();
        $this->assign('list',$list);
        return $this->fetch();
    }

    /**
     * 添加
     */
     public function add(){
        IS_POST && $this->jump($this->modelDeedsCates->setthisArr($this->param));
         return $this->fetch();
     }

     /**
      * 编辑
      */
      public function  edit(){
          IS_POST && $this->jump($this->modelDeedsCates->updatethisArr($this->param));

          $info = $this->modelDeedsCates->getThisInfo($this->param['id']);
          $this->assign('info',$info);
          return $this->fetch();
      }

      /**
       * 删除
       */
      public function del(){
        IS_GET && $this->jump($this->modelDeedsCates->delThisVal($this->param));
      }


}