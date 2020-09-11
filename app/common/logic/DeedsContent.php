<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 9:17
 */
namespace app\common\logic;

class DeedsContent extends LogicBase{

    /**
     * 风采简介
     */
     public function getThisApiVal(){
         $field = 'id,content';
         $info  = $this->modelDeedsContent->getInfo(null,$field);

         $info['content'] =geteditorcontent($info['content']);

         return $info;
     }


}