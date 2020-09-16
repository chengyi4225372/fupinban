<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 10:38
 */

namespace app\admin\controller;

/**
 * Class Overnews
 * @package app\admin\controller
 * 综述管理新闻控制器
 */

class Overnews extends  AdminBase{

    /*
     * 页面
     */
    public function index(){
          if(IS_POST){
             $params = $this->param;
              if($params['id'] <=0 || is_null($params['id'])){
                  $this->jump($this->logicOvernews->setThisArr($params));
              }else{
                  $this->jump($this->logicOvernews->editThisArr($this->param));
              }
          }

        $info = $this->logicOvernews->getIdInfo();
        $this->assign('info',$info);
        return $this->fetch();
    }




}