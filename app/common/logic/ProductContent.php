<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 17:44
 */
namespace app\common\logic;

class ProductContent extends LogicBase{


    /**
     * 项目精选介绍
     */
     public function getApiContent(){

         return $this->logicProductContent->getInfo();
     }
}