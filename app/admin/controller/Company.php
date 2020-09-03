<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 14:15
 */

namespace app\admin\controller;

class Company extends  AdminBase{

    /**
     * 先进单位简介
     */
    public function index(){
        if(IS_POST){
            $params =  $this->param;

            if($params['id'] <=0){
                $this->jump($this->logicGloryCompany->setThisVal($params));
            }else {
                $this->jump($this->logicGloryCompany->updateThisVal($params));
            }

            return false;
        }

        $info = $this->logicGloryCompany->getThisVal();
        $this->assign('info',$info);
        return $this->fetch();
    }

}