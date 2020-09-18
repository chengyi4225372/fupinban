<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/11
 * Time: 16:47
 */
namespace app\common\logic;

class ExploreContent extends LogicBase{

    /**
     * 获取简介
     *
     */
     public function getThisVal(){
       $field = 'id,content';
       $info = $this->modelExploreContent->getInfo(null,$field);
       $info['content'] = html_entity_decode($info['content']);

       return $info;
     }

}