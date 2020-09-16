<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/14
 * Time: 19:17
 */
namespace app\common\logic;

class History extends  LogicBase{
    /**
     * 列表接口
     */
     public function getThislist(){


         $info = $this->modelHistory->getInfo(null,'content');

         $info['content'] = imageUrl($info['content']);

         return $info;
     }
}