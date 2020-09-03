<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 13:57
 */
namespace app\admin\controller;

/**
 * Class Glory
 * @package app\admin\controller
 * 扶贫荣耀控制器
 */

class Glory extends AdminBase{

    /**
     * 扶贫荣耀简介
     */
    public function content(){
        if(IS_POST){
           $params =  $this->param;

           if($params['id'] <=0){
               $this->jump($this->logicGloryContent->setThisVal($params));
           }else {
               $this->jump($this->logicGloryContent->updateThisVal($params));
           }

           return false;
        }

        $info = $this->logicGloryContent->getThisVal($this->param['id']);
        $this->assign('info',$info);
        return $this->fetch();
    }

    /**
     * 扶贫荣耀分类设置
     */
    public function cates(){
        $where = $this->logicGloryCates->getWhere($this->param);
        $list  = $this->logicGloryCates->getThisList($where);
        $this->assign('list',$list);
        return $this->fetch();
    }


    /**
     * 添加
     */
    public function add(){
        IS_POST && $this->jump( $this->logicGloryCates->setThisVal($this->param));

        return $this->fetch();
    }


    /**
     * 编辑分类
     */
    public function edit(){
        IS_POST && $this->jump( $this->logicGloryCates->updateThisVal($this->param));

        $info =  $this->logicGloryCates->getThisVal($this->param['id']);
        $this->assign('info',$info);
        return $this->fetch();
    }

   /**
    * 分类排序
    */
    public function catesSort(){
        $this->jump($this->logicAdminBase->setSort('GloryCates',$this->param));
    }




}