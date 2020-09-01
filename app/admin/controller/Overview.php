<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 9:27
 */

namespace app\admin\controller;


/**
 * Class Overview
 * @package app\admin\controller
 * 综述分类名称控制器
 */
class Overview extends  AdminBase{


    /**
     * 综述分类名称列表
     */
     public function cates(){
         $where = $this->logicOverviewCates->getwhere($this->param);
         $list  = $this->logicOverviewCates->getThisList($where);
         $this->assign('list',$list);
         return $this->fetch();
     }


     /**
      * 添加综述分类名称
      */
     public function add(){
         IS_POST && $this->jump($this->logicOverviewCates->setThisInfo($this->param));
         return $this->fetch();
     }

     /**
      *编辑分类名称
      */
      public function edit(){
          IS_POST && $this->jump($this->logicOverviewCates->updateThisInfo($this->param));

          $info  = $this->logicOverviewCates->getThisInfo($this->param);
          $this->assign('info',$info);
          return $this->fetch();
      }


      /**
       * 删除
       */
       public function del(){
          IS_GET && $this->jump($this->logicOverviewCates->delThisVal($this->param));
       }

     /**
     * 排序
     */
     public  function  setSort(){
        $this->jump($this->logicAdminBase->setSort('OverviewCates', $this->param));
     }


}