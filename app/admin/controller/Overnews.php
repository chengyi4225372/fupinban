<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 10:38
 */

namespace app\admin\controller;

/**
 * Class Overnews
 * @package app\admin\controller
 * 综述管理新闻控制器
 */

class Overnews extends  AdminBase{

    /**
     * 新闻管理列表
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

        return $this->fetch();
    }

    /**
     * 排序
     */
    public function setSort(){

        return $this->fetch();
    }


}