<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 14:24
 */
namespace app\common\logic;


class PrefaceContent extends LogicBase{

    public function getApiContent(){
       return   $this->modelPrefaceContent->getInfo();
    }
}