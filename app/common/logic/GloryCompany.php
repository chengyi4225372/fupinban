<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 11:58
 */
namespace  app\common\logic;


class GloryCompany extends LogicBase{

   /**
    * 先进单位简介
    */
    public function getApiContent(){

       $field ='id,title,content';
       $info = $this->modelGloryCompany->getInfo(null,$field);
       $info['content'] = geteditorcontent($info['content']);

       return $info;

    }
}
