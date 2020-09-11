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
         $field = 'id,content';
         $info = $this->modelGloryContent->getInfo(null,$field);
         $info['content'] =geteditorcontent($info['content']);

         return $info;
     }


}