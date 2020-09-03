<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 14:15
 */

namespace app\admin\controller;

class Company extends  AdminBase{

    /**
     * 先进单位简介
     */
    public function index(){

        return $this->fetch();
    }

}