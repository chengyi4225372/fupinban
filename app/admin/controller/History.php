<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/14
 * Time: 18:22
 */

namespace app\admin\controller;

/**
 * Class History
 * @package app\admin\controller
 * 历史回望新闻管理
 */
class History extends  AdminBase{

    /**
     * 列表页
     */
    public function index(){

        if(IS_POST){
            $params = $this->param;

            if($params['id'] <=0 ||empty($params['id'])){
                $this->jump($this->logicHistory->setThisArr($this->param));
            }else {
                $this->jump($this->logicHistory->updateThisArr($this->param));
            }

        }

        $info = $this->logicHistory->getThisVal();
        $this->assign('info',$info);
        return $this->fetch();
    }

}