<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 9:57
 */

namespace app\admin\controller;


/**
 * Class Product
 * @package app\admin\controller
 * 项目精选控制器
 */

class Product extends  AdminBase{

    /**
     * 项目精选分类列表
     */
      public function getlist(){
          $where = $this->logicProduct->getWhere($this->param);
          $list  = $this->logicProduct->getThislist($where);
          $this->assign('list',$list);
          return $this->fetch();
      }


    /**
     * 添加
     */
      public  function  add(){
          IS_POST && $this->jump($this->logicProduct->setThisArr($this->param));

          return $this->fetch();
      }

     /**
      * 编辑
      */
      public function edit(){
          IS_POST && $this->jump($this->logicProduct->updateThisArr($this->param));

          $this->assign('info',$this->logicProduct->getThisArr($this->param));
          return $this->fetch();
      }


      /**
       * 删除
       */
      public function del(){
        IS_GET && $this->jump($this->logicProduct->delThisid($this->param['id']));
      }


      /**
       * 排序
       */
      public function setSort(){
          $this->jump($this->logicAdminBase->setSort('Product',$this->param));
      }

      /**
       * 项目精选介绍
       */
      public function content(){
           if(IS_POST){
               $params = $this->param;
               if(isset($params['id']) && !empty($params['id'])){
                    $this->jump($this->logicProductContent->updateThisinfo($params));
               }else {
                    $this->jump($this->logicProductContent->setThisinfo($params));
               }
           }

          $info = $this->logicProductContent->getThisInfo();
          $this->assign('info',$info);
          return $this->fetch();
      }
}