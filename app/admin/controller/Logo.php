<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/17
 * Time: 16:58
 */
namespace app\admin\controller;

class Logo extends AdminBase{


    public function index(){
        if(IS_POST){
            $params = $this->param;

            if(empty($params['id']) || $params['id']<=0 || is_null($params['id'])){
                $this->jump($this->logicLogo->setImgsInfo($params));
            }else{
                $this->jump($this->logicLogo->setEditInfo($params));
            }
        }

        $info = $this->logicLogo->getOneinfo();
        $this->assign('info',$info);
        return $this->fetch();

    }
}