<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 11:13
 */

namespace app\common\logic;

class GloryContent extends LogicBase{

    /**
     * 扶贫荣耀简介
     */
     public function getApiVal(){

         return $this->modelGloryContent->getInfo();
     }


}