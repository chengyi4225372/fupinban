<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 13:57
 */
namespace app\admin\controller;

/**
 * Class Glory
 * @package app\admin\controller
 * 扶贫荣耀控制器
 */

class Glory extends AdminBase{

    /**
     * 扶贫荣耀简介
     */
    public function content(){


        return $this->fetch();
    }

    /**
     * 扶贫荣耀分类设置
     */
    public function cates(){

        return $this->fetch();
    }


    /**
     * 添加
     */
    public function addCates(){

        return $this->fetch();
    }

    /**
     * 编辑分类
     */
    public function editCates(){

        return $this->fetch();
    }






}