<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/17
 * Time: 11:47
 */
namespace app\common\logic;

class Zan extends LogicBase{


    /**
     * 点赞
     */
    public function setZan($params=[]){

        $ret = $this->modelZan->setInfo($params);

        $ret &&  $this->modelMessage->where(['id'=>$params['m_id']])->setInc('num');

        if($ret !== false){
            return true;
        }else {
            return false;
        }
    }
}