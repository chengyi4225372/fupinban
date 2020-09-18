<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 10:10
 */
namespace app\common\logic;

class MessageContent extends LogicBase{

    /**
     * 获取新闻结语
     */
     public function getApiContent(){

         $field = 'id,content';
         $info = $this->modelMessageContent->getInfo(null,$field);
         $info['content'] = html_entity_decode($info['content']);
         return $info;
     }
}