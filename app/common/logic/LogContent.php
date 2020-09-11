<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/11
 * Time: 11:47
 */

namespace app\common\logic;

class LogContent extends LogicBase{

    /**
     * 获取日记描述详情
     */
    public function getApiInfo(){

        $field = 'title,content';
        $info  = $this->modelLogContent->getInfo(null,$field);
        $info['content'] =geteditorcontent($info['content']);

        return $info;
    }

}