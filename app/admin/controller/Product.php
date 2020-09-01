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

          return $this->fetch();
      }


    /**
     * 添加
     */
      public  function  add(){

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

      }
}