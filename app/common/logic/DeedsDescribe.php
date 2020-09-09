<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 18:00
 */
namespace  app\common\logic;

class DeedsDescribe extends LogicBase{

    /**
     * 描述详情接口
     */
    public function getDescribeInfo(){

        return  $this->modelDeedsDescribe->getInfo();
    }
}