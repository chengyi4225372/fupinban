<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/4
 * Time: 9:23
 */

namespace app\admin\controller;

/**
 * Class Bear
 * @package app\admin\controller
 * 深圳帮扶简史 控制器
 */

class Bear extends  AdminBase{

    /**
     * 展示页
     */
    public function index(){
         if(IS_POST){
             $params = $this->param;

             if($params['id'] <=0 || empty($params['id']) || is_null($params['id'])){
                 $this->jump($this->logicBearContent->setContentVal($params));
             }else {
                 $this->jump($this->logicBearContent->updateContentVal($params));
              }

         }

        $info =  $this->logicBearContent->getThisVal();
        $this->assign('info',$info);
        return $this->fetch();
    }



}