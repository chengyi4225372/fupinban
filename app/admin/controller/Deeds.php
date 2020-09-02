<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 10:56
 */

namespace app\admin\controller;

/**
 * Class Deeds
 * @package app\admin\controller
 * 事迹风采分类表
 */

class Deeds extends  AdminBase{

    /**
     * 分类列表
     */
    public function getlist(){
        $where = $this->logicDeeds->getWhere($this->param);
        $list  = $this->logicDeeds->getThisList($where);
        $this->assign('list',$list);
        return $this->fetch();
    }

    /**
     * 添加
     */
     public function add(){
        IS_POST && $this->jump($this->logicDeeds->setThisArr($this->param));
         return $this->fetch();
     }

     /**
      * 编辑
      */
      public function  edit(){
          IS_POST && $this->jump($this->logicDeeds->updateThisArr($this->param));

          $info = $this->logicDeeds->getThisInfo($this->param['id']);
          $this->assign('info',$info);
          return $this->fetch();
      }

      /**
       * 删除
       */
      public function del(){
        IS_GET && $this->jump($this->logicDeeds->delThisVal($this->param['id']));
      }

      /**
       * 排序
       */
      public function setSort(){
          $this->jump($this->logicAdminBase->setSort('DeedsCates',$this->param));
      }

      /**
       * 事迹风采简介
       */
      public function content(){
          if(IS_POST){
              $params = $this->param;
              if(isset($params['id']) || !is_null($params['id'])){
                  $this->jump($this->logicDeedsContent->updateThisVal($params));
              }else {
                  $this->jump($this->logicDeedsContent->setThisVal($params));
              }
          }

          $info = $this->logicDeedsContent->getThisVal();
          $this->assign('info',$info);
          return $this->fetch();
      }

      /**
       * 下级分类
       */
      public function pindex(){

          return $this->fetch();
      }

      /**
       * 添加下级
       */
      public function  addcates(){

          return $this->fetch();
      }


}