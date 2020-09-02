<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 11:47
 */
namespace app\admin\controller;

/**
 * Class Explorenews
 * @package app\admin\controller
 * 探索管理新闻控制器
 */

class Explorenews extends AdminBase{

    /**
     * 列表
     */
    public function index(){

        return $this->fetch();
    }

    /**
     * 添加
     */
     public function add(){

         return $this->fetch();
     }

     /**
      * 编辑
      */
     public function edit(){

         return $this->fetch();
     }

     /**
      * 删除
      */
     public function del(){
         IS_GET && $this->logicExploreNews->delThisVal($this->param['id']);
     }

     /**
      * 排序
      */
      public function setSort(){
          $this->jump($this->logiAdminBase->setSort('ExploreNews'),$this->param);
      }
}